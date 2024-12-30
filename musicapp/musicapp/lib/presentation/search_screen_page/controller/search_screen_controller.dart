import 'package:flutter/material.dart';

/// A controller class for the SearchScreenPage.
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/search_screen_page/models/search_screen_model.dart';

import '../models/search_screen_item_model.dart';

///
/// This class manages the state of the SearchScreenPage, including the
/// current searchScreenModelObj
class SearchScreenController extends GetxController {

  TextEditingController searchController = TextEditingController();
  List<SearchScreenItemModel> searchData = SearchScreenModel.searchScreenItemList();
  bool serching = false;
addData(data){
  searchData.add(SearchScreenItemModel(data));
  update();
}

  void removedata(int index) {
  searchData.removeAt(index);
  update();
  }
  void setSearching(val){
  serching = val;
  update();
  }


}
