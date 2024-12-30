import '../controller/your_card_controller.dart';
import 'package:get/get.dart';

class YourCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YourCardController());
  }
}
