import '../controller/answer_interview_chat_controller.dart';
import 'package:get/get.dart';

class AnswerInterviewChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnswerInterviewChatController());
  }
}
