import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/onboarding_six_screen/models/onboarding_six_model.dart';

class OnboardingSixController extends GetxController {
  Rx<OnboardingSixModel> onboardingSixModelObj = OnboardingSixModel().obs;

  Rx<int> silderIndex = 0.obs;
int currentPage = 0;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setIndex(int value) {
    currentPage  = value;
    update();
  }
}
