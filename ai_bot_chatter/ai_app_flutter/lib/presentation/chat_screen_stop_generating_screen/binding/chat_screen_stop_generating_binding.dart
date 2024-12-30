import '../controller/chat_screen_stop_generating_controller.dart';
import 'package:get/get.dart';

class ChatScreenStopGeneratingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatScreenStopGeneratingController());
  }
}
