import '../controller/chat_one_controller.dart';
import 'package:get/get.dart';

class ChatOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatOneController());
  }
}
