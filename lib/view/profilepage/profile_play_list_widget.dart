// ignore_for_file: depend_on_referenced_packages, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_image.dart';
import 'profile_text_widget.dart';

class PublicPlayListWidget extends StatelessWidget {
  const PublicPlayListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 7.h,
              width: 16.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Colors.red,
              ),
              child: Image.asset(
                Iimage.playList,
                fit: BoxFit.cover,
              ),
            ),
            sizedBox10W(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                  child: const ProfileTextWidget(
                    
                      text: "dont smile at me",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2.w),
                const ProfileTextWidget(text: "Billie Eilish", fontSize: 15),
              ],
            ),
            sizedBox50W(),
            const ProfileTextWidget(text: "5:33", fontSize: 15),
            sizedBox50W(),
            const Icon(Icons.more_horiz_outlined),
          ],
        ),
      ),
    );
  }

  //SizedBox 10 & 50 Width
  SizedBox sizedBox10W() => SizedBox(width: 5.w);
  SizedBox sizedBox50W() => SizedBox(width: 12.w);

  //SizedBox 10 and 20 Height
  SizedBox sizedBox10H() => const SizedBox(height: 10);
  SizedBox sizedBox20H() => const SizedBox(height: 20);
}
