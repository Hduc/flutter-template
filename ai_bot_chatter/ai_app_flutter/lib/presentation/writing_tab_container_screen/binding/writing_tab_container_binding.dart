import '../controller/writing_tab_container_controller.dart';
import 'package:get/get.dart';

class WritingTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WritingTabContainerController());
  }
}
