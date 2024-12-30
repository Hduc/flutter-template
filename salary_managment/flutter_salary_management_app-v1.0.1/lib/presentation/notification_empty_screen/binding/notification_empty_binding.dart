import '../controller/notification_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationEmptyScreen.
///
/// This class ensures that the NotificationEmptyController is created when the
/// NotificationEmptyScreen is first loaded.
class NotificationEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationEmptyController());
  }
}
