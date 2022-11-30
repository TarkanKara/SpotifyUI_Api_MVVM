// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArticsCategoryTextWidget extends StatelessWidget {
  const ArticsCategoryTextWidget({
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
    return SizedBox(
      width: 20.h,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.visible,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
