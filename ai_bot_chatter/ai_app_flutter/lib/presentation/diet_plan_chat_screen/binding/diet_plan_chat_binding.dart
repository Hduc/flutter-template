import '../controller/diet_plan_chat_controller.dart';
import 'package:get/get.dart';

class DietPlanChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DietPlanChatController());
  }
}
