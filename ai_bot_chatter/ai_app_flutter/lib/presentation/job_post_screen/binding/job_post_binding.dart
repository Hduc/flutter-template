import '../controller/job_post_controller.dart';
import 'package:get/get.dart';

class JobPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobPostController());
  }
}
