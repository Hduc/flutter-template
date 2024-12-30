import '../controller/register_job_role_controller.dart';
import 'package:get/get.dart';

class RegisterJobRoleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterJobRoleController());
  }
}
