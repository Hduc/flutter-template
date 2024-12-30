import '../controller/feed_back_controller.dart';
import 'package:get/get.dart';

class FeedBackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedBackController());
  }
}
