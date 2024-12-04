import '../controller/write_code_chat_controller.dart';
import 'package:get/get.dart';

class WriteCodeChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteCodeChatController());
  }
}
