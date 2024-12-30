import '../controller/invitation_controller.dart';
import 'package:get/get.dart';

class InvitationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InvitationController());
  }
}
