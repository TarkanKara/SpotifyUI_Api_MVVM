import 'package:flutter/cupertino.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_new_releases.dart';

import '../sevices/home_services.dart';

class HomeViewModelProvider with ChangeNotifier {
  //
  //
  GetNewReleases? response = GetNewReleases();

  int? currentIndex;

  bool isLoadingNewRelease = true;

  setCurrentIndex(int id) {
    currentIndex = id;
    notifyListeners();
  }

  getDataNewReleasess() async {
    isLoadingNewRelease = true;
    response = (await HomePageServices().getNewReleaseData())!;
    isLoadingNewRelease = false;
    notifyListeners();
  }
}
