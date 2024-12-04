import '../controller/create_conversation_chat_controller.dart';
import 'package:get/get.dart';

class CreateConversationChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateConversationChatController());
  }
}
