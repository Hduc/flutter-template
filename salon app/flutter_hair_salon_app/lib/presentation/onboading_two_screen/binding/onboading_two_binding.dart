import '../controller/onboading_two_controller.dart';
import 'package:get/get.dart';

class OnboadingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboadingTwoController());
  }
}
