// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';
import 'search_grid_view_widget.dart';
import 'search_text_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: IPadding.searchPage,
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      child: SearchTextWidget(
                        text: "Ara",
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      child: Icon(Icons.linked_camera),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: 39.5.h,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          prefixIcon: Image.asset(Iimage.search),
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                          labelText: "Ne dinlemek istiyorsun?",
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5.h),
                const SearchTextWidget(text: "Hepsine göz at", fontSize: 20),
                SizedBox(height: 1.h),
                SizedBox(
                  width: 100.w,
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 5 / 3,
                      crossAxisSpacing: 4.w,
                      mainAxisSpacing: 2.h,
                      mainAxisExtent: 130,
                    ),
                    itemBuilder: (context, index) {
                      return const SearchGridViewWidget();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
