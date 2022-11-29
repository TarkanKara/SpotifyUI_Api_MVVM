// ignore_for_file: depend_on_referenced_packages, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_color.dart';
import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';
import 'home_tabbar_view_widget.dart';

class HomeListTileWidget extends StatelessWidget {
  const HomeListTileWidget({
    Key? key,
    this.textPlayList,
    this.textPlayListSubtitle,
    this.textTimePlayList,
  }) : super(key: key);
  final String? textPlayList;
  final String? textPlayListSubtitle;
  final String? textTimePlayList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: IPadding.homeSongsMusic,
      child: Container(
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Icolor.homeSongMusic,
                child: Image.asset(Iimage.playbtn),
              ),
              SizedBox(width: 2.5.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20.h,
                    child: CategoryTextWidget(
                      text: textPlayList!,
                      fontWeight: FontWeight.bold,
                      fontSize: 1.8.h,
                    ),
                  ),
                  sizedBox2W(),
                  SizedBox(
                    width: 15.h,
                    child: CategoryTextWidget(
                      text: textPlayListSubtitle!,
                    ),
                  ),
                ],
              ),
              sizedBox28W(),
              CategoryTextWidget(
                text: textTimePlayList!,
                fontSize: 16,
              ),
              const SizedBox(width: 35),
              Image.asset(Iimage.heart),
            ],
          ),
        ),
      ),
    );
  }

  //SizedBox
  SizedBox sizedBox28W() => SizedBox(width: 7.5.w);
  SizedBox sizedBox2W() => SizedBox(height: 2.5.w);
}
