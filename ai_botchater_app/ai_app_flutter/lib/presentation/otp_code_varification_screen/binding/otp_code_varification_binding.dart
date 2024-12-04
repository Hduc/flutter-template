import '../controller/otp_code_varification_controller.dart';
import 'package:get/get.dart';

class OtpCodeVarificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpCodeVarificationController());
  }
}
