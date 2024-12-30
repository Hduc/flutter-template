import 'package:flutter/cupertino.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/onboarding_four_screen/models/onboarding_four_model.dart';

import '../models/model_data.dart';

/// A controller class for the OnboardingFourScreen.
///
/// This class manages the state of the OnboardingFourScreen, including the
/// current onboardingFourModelObj
class OnboardingFourController extends GetxController {
  PageController pageController = PageController();

  List<OnboardingData> onboarding =  Onboarding.getOnboardingData();
  Rx<int> sliderIndex = 0.obs;
  int currentPage = 0;

  void setCurrentPage(int value) {
    currentPage = value;
    update();
  }
}
