import '../controller/reviews_one_controller.dart';
import 'package:get/get.dart';

class ReviewsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewsOneController());
  }
}
