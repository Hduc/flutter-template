import '../controller/answer_interview_controller.dart';
import 'package:get/get.dart';

class AnswerInterviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnswerInterviewController());
  }
}
