import '../controller/verification_one_controller.dart';
import 'package:get/get.dart';

class VerificationOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationOneController());
  }
}
