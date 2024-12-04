import '../controller/service_detail_two_container1_controller.dart';
import 'package:get/get.dart';

class ServiceDetailTwoContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceDetailTwoContainer1Controller());
  }
}
