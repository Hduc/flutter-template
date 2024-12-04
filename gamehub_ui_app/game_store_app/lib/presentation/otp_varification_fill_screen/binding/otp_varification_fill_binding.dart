import '../controller/otp_varification_fill_controller.dart';
import 'package:get/get.dart';

class OtpVarificationFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpVarificationFillController());
  }
}
