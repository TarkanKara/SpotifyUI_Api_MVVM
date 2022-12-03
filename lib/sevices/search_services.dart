// ignore_for_file: depend_on_referenced_packages, unused_local_variable, avoid_print

import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:new_spotifyui_api/models/search_page_models/get_several_browse_categories.dart';

import '../base/dio_client.dart';

class SearchPageServices extends BaseServicesDio {
  //
  //Get Several Browse Categories
  Future<GetSeveralBrowseCategories?> getSeveralBrowseCategories() async {
    GetSeveralBrowseCategories categories = GetSeveralBrowseCategories();
    Response response;
    try {
      final response = await dio.get("browse/categories", queryParameters: {
        "country": "TR",
        "locale": "tr_TR",
        "limit": 10,
        "offset": 0,
      });
      print(response.data);
      return categories = GetSeveralBrowseCategories.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
