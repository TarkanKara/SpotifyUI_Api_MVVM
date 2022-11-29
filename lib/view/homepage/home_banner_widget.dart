// ignore_for_file: depend_on_referenced_packages

//Home Page Banner Widget
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_color.dart';
import '../../core/constant_padding.dart';
import '../widgets/text_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
    this.bannerText,
    this.bannerSubText,
    this.imageUrl,
  }) : super(key: key);
  final String? bannerText;
  final String? bannerSubText;
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: Card(
        color: Icolor.bodyColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        child: Stack(
          children: [
            Padding(
              padding: IPadding.homePadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TexWidget(text: "New Album", fontSize: 22),
                  SizedBox(height: 3.h),
                  TexWidget(
                      text: bannerText!,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  SizedBox(height: 1.h),
                  TexWidget(text: bannerSubText!, fontSize: 18),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Transform(
                transform: Matrix4.identity().scaled(1.29)
                  ..translate(-30.0, -45),
                child: Container(
                  height: 12.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(150)),
                      image: DecorationImage(image: NetworkImage(imageUrl!))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
