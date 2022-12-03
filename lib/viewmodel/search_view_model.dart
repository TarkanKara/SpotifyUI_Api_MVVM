// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:new_spotifyui_api/models/search_page_models/get_several_browse_categories.dart';
import 'package:new_spotifyui_api/sevices/search_services.dart';

class SearchViewModelProvider with ChangeNotifier {
  GetSeveralBrowseCategories browse_categories = GetSeveralBrowseCategories();
  bool isLoadingCategories = false;

  getDataSeveralBrowseCategories() async {
    isLoadingCategories = true;
    browse_categories =
        (await SearchPageServices().getSeveralBrowseCategories())!;
    isLoadingCategories = false;
    notifyListeners();
  }
}
