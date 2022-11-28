// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_image.dart';
import 'artics_text_widget.dart';

class ArticsListViewWidget extends StatelessWidget {
  const ArticsListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 14.h,
            width: 30.w,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(26))),
            child: Image.asset(Iimage.artics1),
          ),
          sizedBox2H(),
          const ArticsTextWidget(
              text: "Lilbubblegum", fontWeight: FontWeight.bold),
        ],
      ),
    );
  }

  SizedBox sizedBox2H() => SizedBox(height: 2.h);
}
