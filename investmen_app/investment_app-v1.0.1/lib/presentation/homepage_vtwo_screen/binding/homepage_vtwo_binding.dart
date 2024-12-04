import '../controller/homepage_vtwo_controller.dart';
import 'package:get/get.dart';

class HomepageVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageVtwoController());
  }
}
