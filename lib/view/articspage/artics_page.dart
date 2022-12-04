// ignore_for_file: depend_on_referenced_packages, unused_local_variable

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/utils/converting_timestamp.dart';
import 'package:new_spotifyui_api/viewmodel/artics_view_model.dart';
import 'package:new_spotifyui_api/viewmodel/home_view_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';

import '../../core/constant_padding.dart';
import '../widgets/custom_app_bar.dart';
import 'artics_category_text_widget.dart';
import 'artics_list_tile_widget.dart';
import 'artics_list_view_widget.dart';
import 'artics_text_widget.dart';

class ArticsPage extends StatefulWidget {
  const ArticsPage({super.key, this.id});
  final String? id;

  @override
  State<ArticsPage> createState() => _ArticsPageState();
}

class _ArticsPageState extends State<ArticsPage> {
  @override
  void initState() {
    final articsViewModel =
        Provider.of<ArtistsViewModelProvider>(context, listen: false);
    articsViewModel.getDataArtists(id_artists: widget.id);
    articsViewModel.getDataArtistsAlbums(id_artistAlbumID: widget.id);
    Provider.of<HomeViewModelProvider>(context, listen: false)
        .getDataArtistsTopTracks(userId: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        actions: const [Icon(Icons.more_vert_rounded)],
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Consumer<ArtistsViewModelProvider>(
                  builder: (context, value, child) {
                    return !value.isLoadingArtists
                        ? ProfilBanner(
                            imageUrl: value.getArtist.images![0].url,
                            artistDescription: value.getArtist.genres![0],
                            artistsName: value.getArtist.name,
                          )
                        : const CircularProgressIndicator();
                  },
                ),
                sizedBox2H(),
                Padding(
                  padding: IPadding.articspage,
                  child: Row(
                    children: const [
                      ArticsTextWidget(
                        text: "Albums",
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )
                    ],
                  ),
                ),
              ],
            ),
            sizedBox2H(),
            Padding(
              padding: IPadding.articspage,
              child: Column(
                children: [
                  Consumer<ArtistsViewModelProvider>(
                    builder: (context, value, child) {
                      return !value.isLoadingArtistsAlbums
                          ? SizedBox(
                              height: 20.h,
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.horizontal,
                                itemCount: value.artistsAlbums.items!.length,
                                itemBuilder: (context, index) {
                                  return !value.isLoadingArtistsAlbums
                                      ? ArticsListViewWidget(
                                          aligment: Alignment.center,
                                          albumsName: value
                                              .artistsAlbums.items![index].name,
                                          imageUrl: value.artistsAlbums
                                              .items![index].images![0].url,
                                        )
                                      : const CircularProgressIndicator();
                                },
                              ),
                            )
                          : const CircularProgressIndicator();
                    },
                  ),
                  sizedBox2H(),
                  Padding(
                    padding: IPadding.articspageSongs,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ArticsCategoryTextWidget(
                            text: "Songs",
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        Text(
                          "See Moree",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  sizedBox2H(),
                  Consumer<HomeViewModelProvider>(
                    builder: (context, value, child) {
                      return !value.isLoadingTopTracks
                          ? ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: value.topTracks.tracks!.length,
                              itemBuilder: (context, index) {
                                return !value.isLoadingTopTracks
                                    ? ArticsListTileWidget(
                                        songsName: value.topTracks
                                            .tracks![index].album!.name,
                                        songSubName:
                                            "Tracks : ${value.topTracks.tracks![index].album!.totalTracks.toString()}",
                                        songsTime: TimeStampt()
                                            .currentTimestamp(value.topTracks
                                                .tracks![index].durationMs),
                                      )
                                    : const CircularProgressIndicator();
                              },
                            )
                          : const CircularProgressIndicator();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //SizedBox Height Methods
  SizedBox sizedBox5H() => const SizedBox(height: 5);

  SizedBox sizedBox2H() => SizedBox(height: 2.h);
}

//Profil Banner
class ProfilBanner extends StatelessWidget {
  final String? imageUrl;
  final String? artistsName;
  final String? artistDescription;
  const ProfilBanner({
    Key? key,
    this.imageUrl,
    this.artistsName,
    this.artistDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 27.h,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(65),
                bottomRight: Radius.circular(65)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl!),
            ),
          ),
        ),
        sizedBox2H(),
        ArticsTextWidget(
            text: artistsName!, fontWeight: FontWeight.bold, fontSize: 20),
        sizedBox2H(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ArticsTextWidget(
              text: artistDescription!,
              /* "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Turpis adipiscing vestibulum orci \nenim, nascetur vitae", */
              fontSize: 15,
            ),
          ],
        ),
      ],
    );
  }

  //SizedBox Height Methods
  SizedBox sizedBox5H() => const SizedBox(height: 5);

  SizedBox sizedBox2H() => SizedBox(height: 2.h);
}
