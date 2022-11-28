//ContainedTabBarView with Views
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_color.dart';
import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';

class TabsViews extends StatelessWidget {
  const TabsViews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
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
                        child: Image.asset(Iimage.songs1),
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
                    text: "Bad Guy", fontWeight: FontWeight.bold, fontSize: 20),
                const SizedBox(height: 5),
                const CategoryTextWidget(text: "Billie Eilish", fontSize: 15)
              ],
            ),
          );
        },
      ),
    );
  }
}

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
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
