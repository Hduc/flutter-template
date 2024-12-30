import '../controller/my_bookmark_controller.dart';
import 'package:get/get.dart';

class MyBookmarkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyBookmarkController());
  }
}
