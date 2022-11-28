// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_color.dart';
import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';
import 'artics_category_text_widget.dart';

class ArticsListTileWidget extends StatelessWidget {
  const ArticsListTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: IPadding.homeSongsMusic,
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Icolor.homeSongMusic,
              child: Image.asset(Iimage.playbtn),
            ),
            SizedBox(width: 4.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ArticsCategoryTextWidget(
                    text: "As It Was",
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                sizedBox2W(),
                const ArticsCategoryTextWidget(text: "Harry Styles"),
              ],
            ),
            sizedBox28W(),
            const ArticsCategoryTextWidget(text: "5:33", fontSize: 14),
            const SizedBox(width: 35),
            Image.asset(Iimage.heart),
          ],
        ),
      ),
    );
  }

  //SizedBox
  SizedBox sizedBox28W() => SizedBox(width: 22.w);
  SizedBox sizedBox2W() => SizedBox(height: 2.w);
}
