// ignore_for_file: depend_on_referenced_packages, unused_local_variable, avoid_print, non_constant_identifier_names

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:new_spotifyui_api/base/dio_client.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_artists_top_tracks.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_new_releases.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_several_artist.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_several_episodes.dart';

class HomePageServices extends BaseServicesDio {
  /* ---------------------------------------------------------------------------------- */
  //Get New Releases
  Future<GetNewReleases?> getNewRelease() async {
    GetNewReleases getNewReleases;
    Response response;
    try {
      final response = await dio.get("browse/new-releases", queryParameters: {
        "country": "TR",
        "limit": 20,
        'offset': 30,
      });
      //print(response.data);
      return getNewReleases = GetNewReleases.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

/* ---------------------------------------------------------------------------------- */
  //Get Several Artists
  Future<GetSeveralArtist?> getSeveralArtists() async {
    GetSeveralArtist getSeveralArtist;
    Response response;
    try {
      final response = await dio.get("artists?", queryParameters: {
        "ids":
            "2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6",
      });
      //print(response.data);
      return getSeveralArtist = GetSeveralArtist.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

/* ---------------------------------------------------------------------------------- */
  //Get Several Episodes (Podcasts)
  Future<GetSeveralEpisodes?> getSeveralEpisodes() async {
    GetSeveralEpisodes getSeveralEpisodes;
    Response response;
    try {
      final response = await dio.get("episodes", queryParameters: {
        "ids": "77o6BIVlYM3msb4MMIL1jH,0Q86acNRm6V9GYx55SXKwf",
        "market": "TR",
      });
      //print(response.data);
      return getSeveralEpisodes = GetSeveralEpisodes.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

/* ---------------------------------------------------------------------------------- */
  //Get Artists Top Tracks
  Future<GetArtistTopTracks?> getArtistTopTracks(
      {String? id_artistTopTracks}) async {
    GetArtistTopTracks getArtistTopTracks;
    Response response;

    try {
      final response = await dio.get(
          "artists/${id_artistTopTracks ?? "0TnOYISbd1XYRBk9myaseg"}/top-tracks",
          queryParameters: {
            "market": "TR",
          });
      //print(response.data);
      return getArtistTopTracks = GetArtistTopTracks.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
  /* ---------------------------------------------------------------------------------- */
}
