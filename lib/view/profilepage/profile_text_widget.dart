import 'package:flutter/material.dart';

class ProfileTextWidget extends StatelessWidget {
  const ProfileTextWidget({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
