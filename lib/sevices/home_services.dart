// ignore_for_file: depend_on_referenced_packages, unused_local_variable, avoid_print

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:new_spotifyui_api/base/dio_client.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_new_releases.dart';

class HomePageServices extends BaseServicesDio {
  //Get New Releases Models
  Future<GetNewReleases?> getNewReleaseData() async {
    GetNewReleases getNewReleases;
    Response response;
    try {
      final response = await dio.get("browse/new-releases", queryParameters: {
        "country": "TR",
        "limit": 20,
        'offset': 0,
      });
      print(response.data);
      print("veri geldi");
      return getNewReleases = GetNewReleases.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
