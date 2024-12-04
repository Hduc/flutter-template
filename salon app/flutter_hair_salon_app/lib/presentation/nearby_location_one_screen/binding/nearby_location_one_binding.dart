import '../controller/nearby_location_one_controller.dart';
import 'package:get/get.dart';

class NearbyLocationOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearbyLocationOneController());
  }
}
