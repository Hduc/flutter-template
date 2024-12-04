import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/search_here_twelve_screen/models/search_here_twelve_model.dart';
import 'package:flutter/material.dart';

class SearchHereTwelveController extends GetxController {
  TextEditingController makeuptextController = TextEditingController();

  TextEditingController waxingtextController = TextEditingController();

  TextEditingController haircuttextController = TextEditingController();

  TextEditingController shavingtextController = TextEditingController();

  TextEditingController hairwashtextController = TextEditingController();

  Rx<SearchHereTwelveModel> searchHereTwelveModelObj =
      SearchHereTwelveModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    makeuptextController.dispose();
    waxingtextController.dispose();
    haircuttextController.dispose();
    shavingtextController.dispose();
    hairwashtextController.dispose();
  }
}
