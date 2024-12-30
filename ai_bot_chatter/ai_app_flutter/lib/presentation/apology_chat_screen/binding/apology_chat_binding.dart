import '../controller/apology_chat_controller.dart';
import 'package:get/get.dart';

class ApologyChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApologyChatController());
  }
}
