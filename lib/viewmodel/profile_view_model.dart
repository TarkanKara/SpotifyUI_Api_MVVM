// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:new_spotifyui_api/models/profile_page_models/get_users_play_lists.dart';

import 'package:new_spotifyui_api/sevices/profile_services.dart';

import '../models/profile_page_models/get_current_users_profile.dart';

class ProfileViewModelProvider with ChangeNotifier {
  //
  GetCurrentUsersProfile users = GetCurrentUsersProfile();
  GetUsersPlayLists playLists = GetUsersPlayLists();

  bool isLoadingCurrentUsersProfile = false;
  bool isLoadingUsersPlayLists = false;

  getDataCurrentUsersProfile() async {
    isLoadingCurrentUsersProfile = true;
    users = (await ProfilePageServices().getCurrentUsersProfile())!;
    isLoadingCurrentUsersProfile = false;
    notifyListeners();
  }

  getDataUsersPlayLists() async {
    isLoadingUsersPlayLists = true;
    playLists = (await ProfilePageServices().getUsersPlayLists())!;
    isLoadingUsersPlayLists = false;
    notifyListeners();
  }
}
