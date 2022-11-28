import 'package:flutter/material.dart';

import '../../core/constant_image.dart';
import 'search_text_widget.dart';

class SearchGridViewWidget extends StatelessWidget {
  const SearchGridViewWidget({
    Key? key,
  }) : super(key: key);

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
          image: const DecorationImage(
              image: AssetImage(Iimage.artics1),
              fit: BoxFit.cover,
              opacity: 0.8,
              invertColors: true,
              alignment: Alignment.center),
        ),
        child: const Align(
          alignment: Alignment.bottomRight,
          child: SearchTextWidget(
              text: "Spotify", fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
