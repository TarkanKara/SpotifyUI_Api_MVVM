import 'package:flutter/cupertino.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_new_releases.dart';

import '../sevices/home_services.dart';

class HomeViewModelProvider with ChangeNotifier {
  //
  //
  GetNewReleases? getNewReleases;

  int? currentIndex;

  bool isLoadingNewRelease = true;

  setCurrentIndex(int id) {
    currentIndex = id;
    notifyListeners();
  }

  getDataNewReleasess() async {
    isLoadingNewRelease = true;
    getNewReleases = await HomePageServices().getNewReleaseData();
    isLoadingNewRelease = false;
    notifyListeners();
  }
}
