import '../controller/poems_controller.dart';
import 'package:get/get.dart';

class PoemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PoemsController());
  }
}
