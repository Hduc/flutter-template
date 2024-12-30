import '../controller/advertisements_controller.dart';
import 'package:get/get.dart';

class AdvertisementsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdvertisementsController());
  }
}
