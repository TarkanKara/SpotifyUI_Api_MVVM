// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';

import '../../core/constant_image.dart';
import '../../core/constant_padding.dart';
import '../../viewmodel/search_view_model.dart';
import 'search_grid_view_widget.dart';
import 'search_text_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    final searchViewModel =
        Provider.of<SearchViewModelProvider>(context, listen: false);
    searchViewModel.getDataSeveralBrowseCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: IPadding.searchPage,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
