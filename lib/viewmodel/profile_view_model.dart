// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:new_spotifyui_api/models/profile_page_models/get_users_playlist.dart';
import 'package:new_spotifyui_api/sevices/profile_services.dart';

class ProfileViewModelProvider with ChangeNotifier {
  //
  GetUsersPlayList? usersPlayList = GetUsersPlayList();

  bool isLoadingUserPlayList = false;

  getDataUsersPlayList({String? id_usersPlayList}) async {
    isLoadingUserPlayList = true;
    usersPlayList = await ProfilePageServices()
        .getUsersPlayList(id_usersPlayList: id_usersPlayList);
    isLoadingUserPlayList = false;
  }
}
