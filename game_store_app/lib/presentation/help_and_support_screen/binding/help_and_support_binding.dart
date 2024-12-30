import '../controller/help_and_support_controller.dart';
import 'package:get/get.dart';

class HelpAndSupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpAndSupportController());
  }
}
