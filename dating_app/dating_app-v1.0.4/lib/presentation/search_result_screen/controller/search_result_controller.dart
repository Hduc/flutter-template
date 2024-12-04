import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/search_result_screen/models/search_result_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchResultScreen.
///
/// This class manages the state of the SearchResultScreen, including the
/// current searchResultModelObj
class SearchResultController extends GetxController {TextEditingController group910Controller = TextEditingController();

Rx<SearchResultModel> searchResultModelObj = SearchResultModel().obs;

@override void onClose() { super.onClose(); group910Controller.dispose(); } 
 }
