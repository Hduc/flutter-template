import '../controller/chat_screen_share_popup_controller.dart';
import 'package:get/get.dart';

class ChatScreenSharePopupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatScreenSharePopupController());
  }
}
