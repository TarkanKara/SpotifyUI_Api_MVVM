// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:new_spotifyui_api/models/search_page_models/get_several_browse_categories.dart';
import 'package:new_spotifyui_api/models/search_page_models/search_for_item.dart';
import 'package:new_spotifyui_api/sevices/search_services.dart';

class SearchViewModelProvider with ChangeNotifier {
  //
  GetSeveralBrowseCategories browse_categories = GetSeveralBrowseCategories();
  SearchForItem itemm = SearchForItem();

  bool isLoadingCategories = false;
  bool isLoadingSearch = false;
  bool isController = true;

  getDataSeveralBrowseCategories() async {
    isLoadingCategories = true;
    browse_categories =
        (await SearchPageServices().getSeveralBrowseCategories())!;
    isLoadingCategories = false;
    notifyListeners();
  }

  getDataSearchForItem({String? search}) async {
    isLoadingSearch = true;
    itemm = (await SearchPageServices().getSearchForItem(search: search))!;
    isLoadingSearch = false;
  }

  setTextController(bool value) {
    isController = value;
    notifyListeners();
  }
}
