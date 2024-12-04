import '../controller/homepage_vthree_container_controller.dart';
import 'package:get/get.dart';

class HomepageVthreeContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageVthreeContainerController());
  }
}
