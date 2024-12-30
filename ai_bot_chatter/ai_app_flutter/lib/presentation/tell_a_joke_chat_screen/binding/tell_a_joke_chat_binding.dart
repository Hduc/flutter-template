import '../controller/tell_a_joke_chat_controller.dart';
import 'package:get/get.dart';

class TellAJokeChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TellAJokeChatController());
  }
}
