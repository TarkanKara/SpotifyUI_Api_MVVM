// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/view/searchpage/search_grid_view_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';
import 'package:new_spotifyui_api/view/searchpage/search_text_widget.dart';

import '../../viewmodel/search_view_model.dart';

class SearchCategories extends StatelessWidget {
  const SearchCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.h),
        const SearchTextWidget(text: "Hepsine göz at", fontSize: 20),
        SizedBox(height: 1.h),
        SizedBox(
          width: 100.w,
          child: Consumer<SearchViewModelProvider>(
            builder: (context, value, child) {
              return !value.isLoadingCategories
                  ? GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: value
                          .browse_categories.categories!.items!.length,
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 5 / 3,
                        crossAxisSpacing: 4.w,
                        mainAxisSpacing: 2.h,
                        mainAxisExtent: 130,
                      ),
                      itemBuilder: (context, index) {
                        return SearchGridViewWidget(
                          image_url: value.browse_categories.categories!
                              .items![index].icons![0].url,
                          categories_textt: value.browse_categories
                              .categories!.items![index].name,
                        );
                      },
                    )
                  : const CircularProgressIndicator();
            },
          ),
        ),
      ],
    );
  }
}
