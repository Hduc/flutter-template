import '../controller/review_one_controller.dart';
import 'package:get/get.dart';

class ReviewOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewOneController());
  }
}
