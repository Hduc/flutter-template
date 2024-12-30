import '../controller/onboarding_six_controller.dart';
import 'package:get/get.dart';

class OnboardingSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingSixController());
  }
}
