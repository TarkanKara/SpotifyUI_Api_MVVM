// ignore_for_file: unused_local_variable, non_constant_identifier_names, depend_on_referenced_packages, avoid_print

import 'dart:developer';
import 'package:dio/dio.dart';

import 'package:new_spotifyui_api/base/dio_client.dart';
import 'package:new_spotifyui_api/models/profile_page_models/get_users_list.dart';

class ProfilePageServices extends BaseServicesDio {
  //
  //Get Users Play List
  Future<GetUsersList?> getUsersList({String? id_usersList}) async {
    GetUsersList getUsersList = GetUsersList();
    Response response;
    try {
      final response = await dio.get(
          "users/${id_usersList ?? "smedjan"}/playlists",
          queryParameters: {
            "limit": 10,
            "offset": 0,
          });
      print(response.data);
      return getUsersList = GetUsersList.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
