import '../controller/chat_call_controller.dart';
import 'package:get/get.dart';

class ChatCallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatCallController());
  }
}
