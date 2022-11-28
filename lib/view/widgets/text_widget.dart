import 'package:flutter/material.dart';

class TexWidget extends StatelessWidget {
  const TexWidget({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: fontSize,
            color: const Color(0xffFBFBFB),
            fontWeight: fontWeight));
  }
}
