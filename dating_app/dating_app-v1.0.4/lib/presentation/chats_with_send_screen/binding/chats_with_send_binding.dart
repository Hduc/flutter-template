import '../controller/chats_with_send_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatsWithSendScreen.
///
/// This class ensures that the ChatsWithSendController is created when the
/// ChatsWithSendScreen is first loaded.
class ChatsWithSendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatsWithSendController());
  }
}
