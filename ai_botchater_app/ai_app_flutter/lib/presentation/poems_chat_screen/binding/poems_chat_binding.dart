import '../controller/poems_chat_controller.dart';
import 'package:get/get.dart';

class PoemsChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PoemsChatController());
  }
}
