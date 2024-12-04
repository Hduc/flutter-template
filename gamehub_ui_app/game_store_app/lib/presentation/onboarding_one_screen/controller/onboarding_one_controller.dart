import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/onboarding_one_screen/models/onboarding_one_model.dart';

class OnboardingOneController extends GetxController {
  // Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;

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

  void setCurrentPage(int value) {
    currentPage = value;
    update();
  }
}
