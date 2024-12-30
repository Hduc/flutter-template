import '../controller/create_conversation_controller.dart';
import 'package:get/get.dart';

class CreateConversationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateConversationController());
  }
}
