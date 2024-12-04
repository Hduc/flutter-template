import '../controller/service_detail_five_controller.dart';
import 'package:get/get.dart';

class ServiceDetailFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceDetailFiveController());
  }
}
