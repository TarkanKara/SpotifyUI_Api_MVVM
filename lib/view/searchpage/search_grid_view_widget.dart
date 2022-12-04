// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';

import '../../core/constant_image.dart';
import 'search_text_widget.dart';

class SearchGridViewWidget extends StatelessWidget {
  const SearchGridViewWidget({
    Key? key,
    this.image_url,
    this.categories_textt,
  }) : super(key: key);
  final String? image_url;
  final String? categories_textt;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(image_url!),
              fit: BoxFit.cover,
              opacity: 0.8,
              invertColors: true,
              alignment: Alignment.center),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SearchTextWidget(
            text: categories_textt!,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
