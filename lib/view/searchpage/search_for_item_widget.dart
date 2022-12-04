// ignore_for_file: depend_on_referenced_packages, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/core/constant_image.dart';
import 'package:new_spotifyui_api/utils/converting_timestamp.dart';
import 'package:new_spotifyui_api/view/searchpage/search_text_widget.dart';
import 'package:new_spotifyui_api/viewmodel/search_view_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';

class SearchForItemWidget extends StatelessWidget {
  const SearchForItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchViewModelProvider>(
      builder: (context, value, child) {
        return !value.isLoadingSearch
            ? Padding(
                padding: EdgeInsets.only(top: 3.h),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SearchTextWidget(
                          text: "Artists",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 100.w,
                          height: 18.h,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: value.itemm.artists!.items!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.all(1.w),
                                child: SizedBox(
                                  width: 80,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundImage: NetworkImage(
                                            value.itemm.artists!.items![index]
                                                    .images!.isEmpty
                                                ? Iimage.artics1
                                                : value
                                                    .itemm
                                                    .artists!
                                                    .items![index]
                                                    .images![0]
                                                    .url
                                                    .toString(),
                                          ),
                                        ),
                                      ),
                                      SearchTextWidget(
                                        text: value
                                            .itemm.artists!.items![index].name
                                            .toString(),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SearchTextWidget(
                          text: "Songs",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: value.itemm.tracks!.items2!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 1.h, top: 1.h),
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage(
                                      value.itemm.tracks!.items2![index].album!
                                          .images![0].url
                                          .toString(),
                                    ),
                                  ),
                                  title: SearchTextWidget(
                                      text: value
                                          .itemm.tracks!.items2![index].name
                                          .toString(),
                                      fontSize: 18),
                                  subtitle: SearchTextWidget(
                                      text:
                                          "Popularity: ${value.itemm.tracks!.items2![index].popularity}",
                                      fontSize: 18),
                                  trailing: SearchTextWidget(
                                      text: TimeStampt().currentTimestamp(
                                        value.itemm.tracks!.items2![index]
                                            .durationMs,
                                      ),
                                      fontSize: 18),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            : Container();
      },
    );
  }
}
