import '../controller/birthday_chat_controller.dart';
import 'package:get/get.dart';

class BirthdayChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BirthdayChatController());
  }
}
