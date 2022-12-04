// ignore_for_file: depend_on_referenced_packages, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'profile_text_widget.dart';

class PublicPlayListWidget extends StatelessWidget {
  const PublicPlayListWidget({
    Key? key,
    this.imageUrl,
    this.playName,
    this.playSubName,
    this.playSeconds,
  }) : super(key: key);
  final String? imageUrl;
  final String? playName;
  final String? playSubName;
  final String? playSeconds;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 7.h,
              width: 16.w,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(imageUrl!)),
                borderRadius: const BorderRadius.all(Radius.circular(18)),
              ),
            ),
            sizedBox10W(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: SizedBox(
                    width: 20.w,
                    child: ProfileTextWidget(
                        text: playName!,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 2.w),
                SizedBox(
                    width: 20.w,
                    child: ProfileTextWidget(text: playSubName!, fontSize: 15)),
              ],
            ),
            sizedBox50W(),
            ProfileTextWidget(text: playSeconds!, fontSize: 15),
            sizedBox50W(),
            const Icon(Icons.more_horiz_outlined),
          ],
        ),
      ),
    );
  }

  //SizedBox 10 & 50 Width
  SizedBox sizedBox10W() => SizedBox(width: 1.w);
  SizedBox sizedBox50W() => SizedBox(width: 13.w);

  //SizedBox 10 and 20 Height
  SizedBox sizedBox10H() => const SizedBox(height: 10);
  SizedBox sizedBox20H() => const SizedBox(height: 20);
}
