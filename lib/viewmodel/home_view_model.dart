import 'package:flutter/cupertino.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_new_releases.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_several_artist.dart';

import '../sevices/home_services.dart';

class HomeViewModelProvider with ChangeNotifier {
  //
  //
  GetNewReleases? releases = GetNewReleases();
  GetSeveralArtist? several = GetSeveralArtist();

  int? currentIndex;

  bool isLoadingNewRelease = false;
  bool isLoadingSeveralArtists = false;

  setCurrentIndex(int id) {
    currentIndex = id;
    notifyListeners();
  }

  getDataNewReleasess() async {
    isLoadingNewRelease = true;
    releases = (await HomePageServices().getNewReleaseData())!;
    isLoadingNewRelease = false;
    notifyListeners();
  }

  getDataSeveralArtis() async {
    isLoadingSeveralArtists = true;
    several = (await HomePageServices().getSeveralArtists())!;
    isLoadingSeveralArtists = false;
    notifyListeners();
  }
}
