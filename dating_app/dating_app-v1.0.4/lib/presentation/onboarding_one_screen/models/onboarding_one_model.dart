import 'dart:ui';

import 'package:dating_app/core/app_export.dart';
import 'package:get/get.dart';

import 'sliderbuildingr_item_model.dart';

/// This class defines the variables used in the [onboarding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingOneModel {
  Rx<List<SliderbuildingrItemModel>> sliderbuildingrItemList =
      Rx(List.generate(1, (index) => SliderbuildingrItemModel()));

  String? image;
  Color? backColor;
  String? text;

  OnboardingOneModel({
   this.image,
   this.backColor,
   this.text
});



}
