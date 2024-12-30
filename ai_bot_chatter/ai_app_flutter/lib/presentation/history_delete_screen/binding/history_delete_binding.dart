import '../controller/history_delete_controller.dart';
import 'package:get/get.dart';

class HistoryDeleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryDeleteController());
  }
}
