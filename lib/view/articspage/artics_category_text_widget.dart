import 'package:flutter/material.dart';

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
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
