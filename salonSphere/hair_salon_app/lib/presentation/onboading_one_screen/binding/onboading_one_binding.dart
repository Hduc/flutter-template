import '../controller/onboading_one_controller.dart';
import 'package:get/get.dart';

class OnboadingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboadingOneController());
  }
}
