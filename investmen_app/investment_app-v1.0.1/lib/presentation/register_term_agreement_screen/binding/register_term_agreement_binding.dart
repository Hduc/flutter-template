import '../controller/register_term_agreement_controller.dart';
import 'package:get/get.dart';

class RegisterTermAgreementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterTermAgreementController());
  }
}
