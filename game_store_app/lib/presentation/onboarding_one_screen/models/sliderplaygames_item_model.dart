import 'package:game_store_app/core/app_export.dart';
import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import 'onboarding_one_model.dart';

/// This class is used in the [sliderplaygames_item_widget] screen.

class SliderplaygamesItemModel {
  Rx<String>? id = Rx("");
}

class OnboardingData {
  static List<OnboardingOneModel> onboardingData() {
    return [
      OnboardingOneModel(ImageConstant.imgOnboardingnew1st, "Play games",
          "Product features are characteristrics of your product that cescribe its appearance",ColorConstant.orange400),
      OnboardingOneModel(ImageConstant.imgOnboardingnew2nd, "Listen sound",
          "Product features are characteristrics of your product that cescribe its appearance",ColorConstant.purple),
      OnboardingOneModel(ImageConstant.imgOnboardingnew3rd, "Get awards",
          "Product features are characteristrics of your product that cescribe its appearance",ColorConstant.cyan400),
    ];
  }
}
