// ignore_for_file: depend_on_referenced_packages, unused_local_variable, non_constant_identifier_names, avoid_print

import 'dart:developer';

import 'package:new_spotifyui_api/models/artics_page_models/get_artist.dart';
import 'package:new_spotifyui_api/models/artics_page_models/get_artists_albums.dart';

import '../base/dio_client.dart';
import 'package:dio/dio.dart';

class ArtistsPageServices extends BaseServicesDio {
  //
  //Get Artists
  Future<GetArtist?> getArtists({String? id_artists}) async {
    GetArtist getArtist;
    Response response;

    try {
      final response = await dio.get(
        "artists/${id_artists ?? "0TnOYISbd1XYRBk9myaseg"}",
      );
      //print(response.data);
      return getArtist = GetArtist.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  //Get Artists Albums
  Future<GetArtistsAlbums?> getArtistsAlbums({String? id_artistAlbumID}) async {
    GetArtistsAlbums getArtistsAlbums = GetArtistsAlbums();
    Response response;

    try {
      final response = await dio.get(
          "artists/${id_artistAlbumID ?? "0TnOYISbd1XYRBk9myaseg"}/albums",
          queryParameters: {
            "include_groups": "single,appears_on",
            "market": "TR",
            "limit": 10,
            "offset": 20,
          });
      print(response.data);
      return getArtistsAlbums = GetArtistsAlbums.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
