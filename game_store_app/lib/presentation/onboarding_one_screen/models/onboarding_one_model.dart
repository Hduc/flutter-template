import 'dart:ui';

import 'package:get/get.dart';
import 'sliderplaygames_item_model.dart';

/// This class defines the variables used in the [onboarding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingOneModel {
  Rx<List<SliderplaygamesItemModel>> sliderplaygamesItemList =
      Rx(List.generate(1, (index) => SliderplaygamesItemModel()));

  String? image;
  String? title;
  String? subTitle;
  Color? color;
  OnboardingOneModel(this.image,this.title,this.subTitle,this.color);
}
