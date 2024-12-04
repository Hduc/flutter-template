import '../controller/nearby_location1_controller.dart';
import 'package:get/get.dart';

class NearbyLocation1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearbyLocation1Controller());
  }
}
