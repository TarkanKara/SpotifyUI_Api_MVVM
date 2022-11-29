import 'package:flutter/cupertino.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_new_releases.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_several_artist.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_several_episodes.dart';

import '../sevices/home_services.dart';

class HomeViewModelProvider with ChangeNotifier {
  //
  //
  GetNewReleases? releases = GetNewReleases();
  GetSeveralArtist? several = GetSeveralArtist();
  GetSeveralEpisodes episodes = GetSeveralEpisodes();

  int? currentIndex;

  bool isLoadingNewRelease = false;
  bool isLoadingSeveralArtists = false;
  bool isLoadingEpisodes = false;

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

  getDataSeveralEpisodes() async {
    isLoadingEpisodes = true;
    episodes = (await HomePageServices().getSeveralEpisodes())!;
    isLoadingEpisodes = false;
    notifyListeners();
  }
}
