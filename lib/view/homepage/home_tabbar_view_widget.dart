//ContainedTabBarView with Views
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/viewmodel/home_view_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';

import '../../core/constant_color.dart';
import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';

// ContainedTabBarView Packages  Tabs
class TabsText extends StatelessWidget {
  const TabsText({
    Key? key,
    required this.textt,
  }) : super(key: key);
  final String textt;

  @override
  Widget build(BuildContext context) {
    return Text(
      textt,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: Colors.black, letterSpacing: 0.5),
    );
  }
}

class News extends StatelessWidget {
  const News({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModelProvider>(
      builder: (context, value, child) {
        return value.isLoadingNewRelease
            ? SizedBox(
                height: 28.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: value.getNewReleases!.albums!.items!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: IPadding.homeSongs,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30.w,
                            height: 20.h,
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                SizedBox(
                                  width: 30.w,
                                  child: Image.network(
                                    value.getNewReleases!.albums!.items![index]
                                        .images![0].url
                                        .toString(),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Icolor.homePlay,
                                    child: Image.asset(Iimage.playbtn),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CategoryTextWidget(
                              text: value
                                  .getNewReleases!.albums!.items![index].name
                                  .toString(),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          const SizedBox(height: 5),
                          CategoryTextWidget(
                              text: value
                                  .getNewReleases!.albums!.items![index].name
                                  .toString(),
                              fontSize: 15)
                        ],
                      ),
                    );
                  },
                ),
              )
            : const CircularProgressIndicator();
      },
    );
  }
}

class Vvideoss extends StatelessWidget {
  const Vvideoss({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModelProvider>(
      builder: (context, value, child) {
        return value.isLoadingNewRelease
            ? SizedBox(
                height: 28.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: value.getNewReleases!.albums!.items!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: IPadding.homeSongs,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30.w,
                            height: 20.h,
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                SizedBox(
                                  width: 30.w,
                                  child: Image.network(value.getNewReleases!
                                      .albums!.items![index].images![0].url
                                      .toString()),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Icolor.homePlay,
                                    child: Image.asset(Iimage.playbtn),
                                  ),
                                ),
                              ],
                            ),
                          ),
                           CategoryTextWidget(
                              text: value
                                  .getNewReleases!.albums!.items![index].name
                                  .toString(),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          const SizedBox(height: 5),
                           CategoryTextWidget(
                              text: value
                                  .getNewReleases!.albums!.items![index].name
                                  .toString(), fontSize: 15)
                        ],
                      ),
                    );
                  },
                ),
              )
            : const CircularProgressIndicator();
      },
    );
  }
}

class Artists extends StatelessWidget {
  const Artists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModelProvider>(
      builder: (context, value, child) {
        return !value.isLoadingNewRelease
            ? SizedBox(
                height: 28.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: value.getNewReleases!.albums!.items!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: IPadding.homeSongs,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30.w,
                            height: 20.h,
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                SizedBox(
                                  width: 30.w,
                                  child: Image.network(value.getNewReleases!
                                      .albums!.items![index].images![0].url
                                      .toString()),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Icolor.homePlay,
                                    child: Image.asset(Iimage.playbtn),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const CategoryTextWidget(
                              text: "Bad Guy",
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          const SizedBox(height: 5),
                          const CategoryTextWidget(
                              text: "Billie Eilish", fontSize: 15)
                        ],
                      ),
                    );
                  },
                ),
              )
            : const CircularProgressIndicator();
      },
    );
  }
}

class Podcasts extends StatelessWidget {
  const Podcasts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModelProvider>(
      builder: (context, value, child) {
        return !value.isLoadingNewRelease
            ? SizedBox(
                height: 28.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: value.getNewReleases!.albums!.items!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: IPadding.homeSongs,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30.w,
                            height: 20.h,
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                SizedBox(
                                  width: 30.w,
                                  child: Image.network(value.getNewReleases!
                                      .albums!.items![index].images![0].url
                                      .toString()),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Icolor.homePlay,
                                    child: Image.asset(Iimage.playbtn),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const CategoryTextWidget(
                              text: "Bad Guy",
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          const SizedBox(height: 5),
                          const CategoryTextWidget(
                              text: "Billie Eilish", fontSize: 15)
                        ],
                      ),
                    );
                  },
                ),
              )
            : const CircularProgressIndicator();
      },
    );
  }
}

//Home Category TextWidget
class CategoryTextWidget extends StatelessWidget {
  const CategoryTextWidget({
    Key? key,
    required this.text,
    this.fontWeight,
    this.fontSize,
  }) : super(key: key);
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
