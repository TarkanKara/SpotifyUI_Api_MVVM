// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';
import '../widgets/custom_app_bar.dart';
import 'artics_category_text_widget.dart';
import 'artics_list_tile_widget.dart';
import 'artics_list_view_widget.dart';
import 'artics_text_widget.dart';

class ArticsPage extends StatelessWidget {
  const ArticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        actions: const [Icon(Icons.more_vert_rounded)],
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 27.h,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(65),
                    bottomRight: Radius.circular(65)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Iimage.artics),
                ),
              ),
            ),
            sizedBox2H(),
            const ArticsTextWidget(
                text: "Billie eilish",
                fontWeight: FontWeight.bold,
                fontSize: 20),
            sizedBox2H(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ArticsTextWidget(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Turpis adipiscing vestibulum orci \nenim, nascetur vitae",
                  fontSize: 15,
                ),
              ],
            ),
            sizedBox2H(),
            Padding(
              padding: IPadding.articspage,
              child: Row(
                children: const [
                  ArticsTextWidget(
                    text: "Albums",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )
                ],
              ),
            ),
            sizedBox2H(),
            Padding(
              padding: IPadding.articspage,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const ArticsListViewWidget();
                      },
                    ),
                  ),
                  sizedBox2H(),
                  Padding(
                    padding: IPadding.articspageSongs,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ArticsCategoryTextWidget(
                            text: "Songs",
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        ArticsCategoryTextWidget(
                            text: "See more", fontSize: 15),
                      ],
                    ),
                  ),
                  sizedBox2H(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ArticsListTileWidget();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //SizedBox Height Methods
  SizedBox sizedBox5H() => const SizedBox(height: 5);
  SizedBox sizedBox2H() => SizedBox(height: 2.h);
}
