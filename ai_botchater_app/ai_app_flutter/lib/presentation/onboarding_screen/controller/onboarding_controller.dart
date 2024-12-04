import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/onboarding_screen/models/onboarding_model.dart';

class OnboardingController extends GetxController {
  // Rx<OnboardingModel> onboardingModelObj = OnboardingModel().obs;

  RxList<OnboardingModel> onboardingOneModelObj = [
    OnboardingModel(ImageConstant.imgChatbot1,
        "The best AI chatbot app in century","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor..."),
    OnboardingModel(ImageConstant.imgManattendingonlinemeeting,
        "Various AI assistants to help you more","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor..."),
    OnboardingModel(ImageConstant.imgBusinessstartup,
        "Try premium for your unlimited usage","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...")
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  RxInt position = 0.obs;

  onChange(RxInt value) {
    position.value = value.value;
    update();
  }

}
