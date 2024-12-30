import '../controller/nearby_location_two_controller.dart';
import 'package:get/get.dart';

class NearbyLocationTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearbyLocationTwoController());
  }
}
