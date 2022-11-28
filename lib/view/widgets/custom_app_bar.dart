// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_padding.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({this.title, this.leading, this.actions});
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Padding(
        padding: IPadding.customAppBar,
        child: AppBar(
          title: title,
          actions: actions,
          leading: leading,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(8.h);
}
