import '../controller/chat_screen_active_controller.dart';
import 'package:get/get.dart';

class ChatScreenActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatScreenActiveController());
  }
}
