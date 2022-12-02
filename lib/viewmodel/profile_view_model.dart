// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';

import 'package:new_spotifyui_api/sevices/profile_services.dart';

import '../models/profile_page_models/get_users_list.dart';

class ProfileViewModelProvider with ChangeNotifier {
  //
  GetUsersList usersList = GetUsersList();

  bool isLoadingUserList = false;

  getDataUsersPlayList({String? id_usersList}) async {
    isLoadingUserList = true;
    usersList = (await ProfilePageServices()
        .getUsersList(id_usersList: id_usersList))!;
    isLoadingUserList = false;
  }
}
