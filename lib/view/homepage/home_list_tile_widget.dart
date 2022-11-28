// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_color.dart';
import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';
import 'home_tabbar_view_widget.dart';

class HomeListTileWidget extends StatelessWidget {
  const HomeListTileWidget({
    Key? key,
  }) : super(key: key);

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
                radius: 25,
                backgroundColor: Icolor.homeSongMusic,
                child: Image.asset(Iimage.playbtn),
              ),
              SizedBox(width: 4.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategoryTextWidget(
                      text: "As It Was",
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  sizedBox2W(),
                  const CategoryTextWidget(text: "Harry Styles"),
                ],
              ),
              sizedBox28W(),
              const CategoryTextWidget(text: "5:33", fontSize: 16),
              const SizedBox(width: 35),
              Image.asset(Iimage.heart),
            ],
          ),
        ),
      ),
    );
  }

  //SizedBox
  SizedBox sizedBox28W() => SizedBox(width: 22.w);
  SizedBox sizedBox2W() => SizedBox(height: 2.w);
}
