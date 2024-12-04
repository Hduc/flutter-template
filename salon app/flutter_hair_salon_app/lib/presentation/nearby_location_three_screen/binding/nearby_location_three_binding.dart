import '../controller/nearby_location_three_controller.dart';
import 'package:get/get.dart';

class NearbyLocationThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearbyLocationThreeController());
  }
}
