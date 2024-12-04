import '../controller/plagiarism_checker_chat_controller.dart';
import 'package:get/get.dart';

class PlagiarismCheckerChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlagiarismCheckerChatController());
  }
}
