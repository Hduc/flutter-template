import '../controller/service_detail_three_controller.dart';
import 'package:get/get.dart';

class ServiceDetailThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceDetailThreeController());
  }
}
