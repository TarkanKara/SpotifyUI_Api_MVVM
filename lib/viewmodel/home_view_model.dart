import 'package:flutter/cupertino.dart';
import 'package:new_spotifyui_api/models/home_page_models/get_artists_top_tracks.dart';
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
  GetArtistTopTracks topTracks = GetArtistTopTracks();

  int? currentIndex;

  bool isLoadingNewRelease = false;
  bool isLoadingSeveralArtists = false;
  bool isLoadingEpisodes = false;
  bool isLoadingTopTracks = false;

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

  getDataArtistsTopTracks({String? userId}) async {
    isLoadingTopTracks = false;
    topTracks = (await HomePageServices()
        .getArtistTopTracks(id_artistTopTracks: userId))!;
    isLoadingTopTracks = true;
    getDataArtistsTopTracks(userId: several!.artists![0].id);
    print(userId);
    notifyListeners();
  }
}
