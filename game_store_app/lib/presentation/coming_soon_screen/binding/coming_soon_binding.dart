import '../controller/coming_soon_controller.dart';
import 'package:get/get.dart';

class ComingSoonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComingSoonController());
  }
}
