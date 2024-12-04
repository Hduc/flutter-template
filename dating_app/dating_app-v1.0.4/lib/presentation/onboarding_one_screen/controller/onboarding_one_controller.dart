import 'dart:ui';

import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/onboarding_one_screen/models/onboarding_one_model.dart';

/// A controller class for the OnboardingOneScreen.
///
/// This class manages the state of the OnboardingOneScreen, including the
/// current onboardingOneModelObj
class OnboardingOneController extends GetxController {
  Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;
  int index = 0;
  changeScreen(int value){
    index = value;
    update();
  }
  List<OnboardingOneModel> onboardingView =[
   OnboardingOneModel(
    text: 'Building relationships on trust and compatibility',
    image: ImageConstant.imgOn1,
    backColor: Color(0xFFE8E3FF),
   ),
   OnboardingOneModel(
    text: 'You can share, chat and video call with your match',
    image: ImageConstant.imgOn2,
    backColor: Color(0xFFE8E3FF),
   ),
   OnboardingOneModel(
    text: 'Don t wait anymore, find your soul mate right now!',
    image: ImageConstant.imgOn3 ,
    backColor: Color(0xFFE8E3FF),
   ),
  ];
  Rx<int> sliderIndex = 0.obs;
  changColor(){
    index<=0?Color(0xFFE8E3FF):index==2?Color(0xFFD3EFFF):Color(0xFFE9DFF9);
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    changColor();
  }
}
