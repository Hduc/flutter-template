import '../controller/location_access_container1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LocationAccessContainer1Screen.
///
/// This class ensures that the LocationAccessContainer1Controller is created when the
/// LocationAccessContainer1Screen is first loaded.
class LocationAccessContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationAccessContainer1Controller());
  }
}
