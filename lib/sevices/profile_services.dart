// ignore_for_file: unused_local_variable, non_constant_identifier_names, depend_on_referenced_packages, avoid_print

import 'dart:developer';
import 'package:dio/dio.dart';

import 'package:new_spotifyui_api/base/dio_client.dart';
import 'package:new_spotifyui_api/models/profile_page_models/get_current_users_profile.dart';
import 'package:new_spotifyui_api/models/profile_page_models/get_users_play_lists.dart';

class ProfilePageServices extends BaseServicesDio {
  //
  //Get Current User's Profile
  Future<GetCurrentUsersProfile?> getCurrentUsersProfile() async {
    GetCurrentUsersProfile getCurrentUsersProfile = GetCurrentUsersProfile();
    Response response;
    try {
      final response = await dio.get("me");
      //print(response.data);
      return getCurrentUsersProfile =
          GetCurrentUsersProfile.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  //Get Current User's Profile
  Future<GetUsersPlayLists?> getUsersPlayLists({String? user_id}) async {
    GetUsersPlayLists getUsersPlayLists = GetUsersPlayLists();
    Response response;
    try {
      final response = await dio.get(
          "users/${user_id ?? "mxteo9lmsbtcd66a97jh0wrz6"}/playlists",
          queryParameters: {
            "limit": 20,
            "offset": 10,
          });
      print(response.data);
      return getUsersPlayLists = GetUsersPlayLists.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
