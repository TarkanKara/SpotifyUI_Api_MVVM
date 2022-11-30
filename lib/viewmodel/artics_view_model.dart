// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:new_spotifyui_api/models/artics_page_models/get_artist.dart';
import 'package:new_spotifyui_api/models/artics_page_models/get_artists_albums.dart';
import 'package:new_spotifyui_api/sevices/artics_services.dart';

class ArtistsViewModelProvider with ChangeNotifier {
  GetArtist getArtist = GetArtist();
  GetArtistsAlbums artistsAlbums = GetArtistsAlbums();

  bool isLoadingArtists = false;
  bool isLoadingArtistsAlbums = false;

  getDataArtists({String? id_artists}) async {
    isLoadingArtists = true;
    getArtist =
        (await ArtistsPageServices().getArtists(id_artists: id_artists))!;
    isLoadingArtists = false;
    notifyListeners();
  }

  getDataArtistsAlbums({String? id_artistAlbumID}) async {
    isLoadingArtistsAlbums = true;
    artistsAlbums = (await ArtistsPageServices()
        .getArtistsAlbums(id_artistAlbumID: id_artistAlbumID))!;
    isLoadingArtistsAlbums = false;
    notifyListeners();
  }
}
