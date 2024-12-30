import '../controller/nearby_location_controller.dart';
import 'package:get/get.dart';

class NearbyLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearbyLocationController());
  }
}
