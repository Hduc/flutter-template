import '../controller/explain_code_chat_controller.dart';
import 'package:get/get.dart';

class ExplainCodeChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExplainCodeChatController());
  }
}
