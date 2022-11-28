
// ignore_for_file: depend_on_referenced_packages

//Home Page Banner Widget
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_color.dart';
import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';
import '../widgets/text_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: Card(
        color: Icolor.bodyColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45)),
        child: Stack(
          children: [
            Padding(
              padding: IPadding.homePadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TexWidget(text: "New Album", fontSize: 15),
                  TexWidget(
                      text: "Happier Than \nEver",
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  TexWidget(text: "Billie Eilish", fontSize: 20),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Transform(
                transform: Matrix4.identity().scaled(1.29)
                  ..translate(-40.0, -55),
                child: Image.asset(Iimage.women),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
