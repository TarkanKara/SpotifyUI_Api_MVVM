// ignore_for_file: depend_on_referenced_packages, unused_local_variable, avoid_print

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:new_spotifyui_api/base/dio_client.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_new_releases.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_several_artist.dart';

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
      //print(response.data);
      return getNewReleases = GetNewReleases.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  //Get Several Artists
  Future<GetSeveralArtist?> getSeveralArtists() async {
    GetSeveralArtist getSeveralArtist;
    Response response;
    try {
      final response = await dio.get("artists?", queryParameters: {
        "ids":
            "2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6",
      });
      print(response.data);
      return getSeveralArtist = GetSeveralArtist.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
