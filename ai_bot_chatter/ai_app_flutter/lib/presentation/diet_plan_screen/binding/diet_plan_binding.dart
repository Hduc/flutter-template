import '../controller/diet_plan_controller.dart';
import 'package:get/get.dart';

class DietPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DietPlanController());
  }
}
