import '../controller/privacy_and_policy_controller.dart';
import 'package:get/get.dart';

class PrivacyAndPolicyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrivacyAndPolicyController());
  }
}
