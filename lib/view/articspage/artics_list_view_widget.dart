// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'artics_text_widget.dart';

class ArticsListViewWidget extends StatelessWidget {
  const ArticsListViewWidget({
    Key? key,
    this.albumsName,
    required this.aligment,
    this.imageUrl,
  }) : super(key: key);
  final String? albumsName;
  final AlignmentGeometry? aligment;
  final String? imageUrl;
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
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(26),
              ),
              image: DecorationImage(
                image: NetworkImage(imageUrl!),
              ),
            ),
            /* child: Image.asset(Iimage.artics1), */
          ),
          sizedBox2H(),
          Container(
              alignment: aligment,
              width: 15.h,
              child: ArticsTextWidget(
                  text: albumsName!, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  SizedBox sizedBox2H() => SizedBox(height: 2.h);
}
