//Search Text Widget
import 'package:flutter/material.dart';

class SearchTextWidget extends StatelessWidget {
  const SearchTextWidget({
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
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
