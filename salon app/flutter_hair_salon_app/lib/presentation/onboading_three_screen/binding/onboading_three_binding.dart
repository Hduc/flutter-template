import '../controller/onboading_three_controller.dart';
import 'package:get/get.dart';

class OnboadingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboadingThreeController());
  }
}
