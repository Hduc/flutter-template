import '../controller/history_two_controller.dart';
import 'package:get/get.dart';

class HistoryTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryTwoController());
  }
}
