import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/onboarding_one_screen/models/onboarding_one_model.dart';/// A controller class for the OnboardingOneScreen.
///
/// This class manages the state of the OnboardingOneScreen, including the
/// current onboardingOneModelObj
class OnboardingOneController extends GetxController {Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;

onChange(value){
 sliderIndex=value;
 update();
}
PageController pageController=PageController();
int sliderIndex = 0;

 }
