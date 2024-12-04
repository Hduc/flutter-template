import '../controller/our_services_one_controller.dart';
import 'package:get/get.dart';

class OurServicesOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OurServicesOneController());
  }
}
