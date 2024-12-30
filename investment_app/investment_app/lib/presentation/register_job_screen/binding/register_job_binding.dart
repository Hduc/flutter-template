import '../controller/register_job_controller.dart';
import 'package:get/get.dart';

class RegisterJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterJobController());
  }
}
