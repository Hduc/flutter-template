import '../controller/job_post_chat_controller.dart';
import 'package:get/get.dart';

class JobPostChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobPostChatController());
  }
}
