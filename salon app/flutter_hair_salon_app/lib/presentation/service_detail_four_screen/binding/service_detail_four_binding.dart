import '../controller/service_detail_four_controller.dart';
import 'package:get/get.dart';

class ServiceDetailFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceDetailFourController());
  }
}
