// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/view/widgets/custom_app_bar.dart';
import 'package:new_spotifyui_api/viewmodel/home_view_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:provider/provider.dart';

import '../../core/constant_color.dart';
import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';
import '../../utils/converting_timestamp.dart';
import '../widgets/text_widget.dart';
import 'home_banner_widget.dart';
import 'home_list_tile_widget.dart';
import 'home_tabbar_view_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    final homeviewmodel =
        Provider.of<HomeViewModelProvider>(context, listen: false);
    homeviewmodel.getDataNewReleasess();
    homeviewmodel.getDataSeveralArtis();
    homeviewmodel.getDataSeveralEpisodes();
    homeviewmodel.getDataArtistsTopTracks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final onTapp = Provider.of<HomeViewModelProvider>(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: Image.asset(Iimage.logo, height: 40),
        leading: Image.asset(Iimage.search),
        actions: const [Icon(Icons.more_vert_outlined)],
      ),
      body: Padding(
        padding: IPadding.bodyPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Consumer<HomeViewModelProvider>(
                builder: (context, value, child) {
                  return !value.isLoadingNewRelease
                      ? BannerWidget(
                          bannerText: value.releases!.albums!.items![0].name,
                          bannerSubText: value
                              .releases!.albums!.items![0].artists![0].name,
                          imageUrl:
                              value.releases!.albums!.items![0].images![0].url,
                        )
                      : const CircularProgressIndicator();
                },
              ),
              sizedBox2H(),
              SizedBox(
                height: 31.h,
                child: ContainedTabBarView(
                  tabBarProperties: const TabBarProperties(
                    indicatorColor: Colors.green,
                    indicatorPadding: EdgeInsets.all(10),
                  ),
                  tabs: const [
                    TabsText(textt: "News"),
                    TabsText(textt: "Video"),
                    TabsText(textt: "Artist"),
                    TabsText(textt: "Podcast"),
                  ],
                  views: const [
                    News(),
                    Artists(),
                    Vvideoss(),
                    Podcasts(),
                  ],
                  onChange: (id) {
                    onTapp.setCurrentIndex(id);
                  },
                ),
              ),
              sizedBox4H(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CategoryTextWidget(
                      text: "Playlist",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  CategoryTextWidget(text: "See more", fontSize: 16),
                ],
              ),
              sizedBox2H(),
              Consumer<HomeViewModelProvider>(
                builder: (context, value, child) {
                  return !value.isLoadingTopTracks
                      ? SizedBox(
                          width: 100.w,
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: value.topTracks.tracks!.length,
                            itemBuilder: (context, index) {
                              return !value.isLoadingTopTracks
                                  ? HomeListTileWidget(
                                      textPlayList: value
                                          .topTracks.tracks![index].album!.name,
                                      textPlayListSubtitle: value.topTracks
                                          .tracks![index].album!.albumType,
                                      textTimePlayList: TimeStampt()
                                          .currentTimestamp(value.topTracks
                                              .tracks![index].durationMs),
                                    )
                                  : const CircularProgressIndicator();
                            },
                          ),
                        )
                      : const CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  //SizedBox 10 & 4 Height
  SizedBox sizedBox2H() => SizedBox(height: 2.8.h);

  SizedBox sizedBox4H() => SizedBox(height: 1.h);
}
