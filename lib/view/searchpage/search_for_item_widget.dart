// ignore_for_file: depend_on_referenced_packages, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/view/searchpage/search_text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_image.dart';

class SearchForItemWidget extends StatelessWidget {
  const SearchForItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 3.h),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchTextWidget(text: "Artists", fontSize: 18),
              SizedBox(
                width: 100.w,
                height: 16.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(1.w),
                      child: SizedBox(
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              child: const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(Iimage.artics1),
                              ),
                            ),
                            const SearchTextWidget(text: "Name")
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
              const SearchTextWidget(text: "Songs", fontSize: 18),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 1.h, top: 1.h),
                      child: const ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(Iimage.artics1),
                        ),
                        title: SearchTextWidget(text: "Name", fontSize: 18),
                        subtitle:
                            SearchTextWidget(text: "SubName", fontSize: 18),
                        trailing: SearchTextWidget(text: "00.30", fontSize: 18),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
