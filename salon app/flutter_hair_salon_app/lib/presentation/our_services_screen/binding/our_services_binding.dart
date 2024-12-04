import '../controller/our_services_controller.dart';
import 'package:get/get.dart';

class OurServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OurServicesController());
  }
}
