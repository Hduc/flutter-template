import '../controller/e_reciept_controller.dart';
import 'package:get/get.dart';

class ERecieptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ERecieptController());
  }
}
