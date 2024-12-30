import '../controller/invitation_chat_controller.dart';
import 'package:get/get.dart';

class InvitationChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InvitationChatController());
  }
}
