import '../controller/inbox_call_controller.dart';
import 'package:get/get.dart';

class InboxCallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InboxCallController());
  }
}
