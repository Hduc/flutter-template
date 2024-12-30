import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/history_screen/models/history_model.dart';
import 'package:flutter/cupertino.dart';

class HistoryController extends GetxController {
  // Rx<HistoryModel> historyModelObj = HistoryModel().obs;
  TextEditingController searchController = TextEditingController();

  RxList<HistoryModel> historyModelList = [
    HistoryModel("Funniest Jokes Ever Told for the Joke of the Day", "9:41 PM"),
    HistoryModel("Which is better to cook food of the day?", "10:06 PM"),
    HistoryModel(
        "What do you say to build a the blog conversation?", "11:03 PM"),
    HistoryModel("What is invitation in writing this questions?", "9:41 PM"),
    HistoryModel("The LinkedIn a profile or account the blog?", "9:41 PM"),
    HistoryModel("How long can twitter videos been  2023?", "9:41 PM"),
    HistoryModel("How to use video Downloader for Instagram online?", "9:41 PM")
  ].obs;

  List<String> searchList = [
    "Sed ut perspiciatis unde omnis",
    "The storystelled and birthday.",
    "The birthday wishing message",
    "Write a short article descussing",
    "Write a short article descussing",
    "What is the best answer to the",
    "Write me an advertisement"
  ];

  RxBool isSearch = false.obs;

  RxBool search = false.obs;

  changeSearch(bool value) {
    if (searchController.text.isEmpty) {
      search.value = false;
    } else {
      search.value = value;
    }
    update();
  }

  change(bool value) {
    isSearch.value = value;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
