import '../controller/storyteller_chat_controller.dart';
import 'package:get/get.dart';

class StorytellerChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StorytellerChatController());
  }
}
