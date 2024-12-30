import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/search_screen_fill_screen/models/search_screen_fill_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchScreenFillScreen.
///
/// This class manages the state of the SearchScreenFillScreen, including the
/// current searchScreenFillModelObj
class SearchScreenFillController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchScreenFillModel> searchScreenFillModelObj = SearchScreenFillModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
