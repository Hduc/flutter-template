import '../controller/otp_varification_controller.dart';
import 'package:get/get.dart';

class OtpVarificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpVarificationController());
  }
}
