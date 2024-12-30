import '../controller/empty_notification_controller.dart';
import 'package:get/get.dart';

class EmptyNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyNotificationController());
  }
}
