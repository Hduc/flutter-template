import '../controller/review_summary_controller.dart';
import 'package:get/get.dart';

class ReviewSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewSummaryController());
  }
}
