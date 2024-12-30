import '../controller/download_controller.dart';
import 'package:get/get.dart';

class DownloadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DownloadController());
  }
}
