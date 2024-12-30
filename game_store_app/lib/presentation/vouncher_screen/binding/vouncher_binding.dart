import '../controller/vouncher_controller.dart';
import 'package:get/get.dart';

class VouncherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VouncherController());
  }
}
