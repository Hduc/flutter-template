import '../controller/advertisements_one_controller.dart';
import 'package:get/get.dart';

class AdvertisementsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdvertisementsOneController());
  }
}
