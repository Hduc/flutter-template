import '../controller/summary_two_controller.dart';
import 'package:get/get.dart';

class SummaryTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SummaryTwoController());
  }
}
