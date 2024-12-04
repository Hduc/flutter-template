import '../controller/service_detail_one_controller.dart';
import 'package:get/get.dart';

class ServiceDetailOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceDetailOneController());
  }
}
