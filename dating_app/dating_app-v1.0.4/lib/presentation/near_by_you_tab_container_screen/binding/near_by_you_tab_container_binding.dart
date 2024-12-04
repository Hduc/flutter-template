import '../controller/near_by_you_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NearByYouTabContainerScreen.
///
/// This class ensures that the NearByYouTabContainerController is created when the
/// NearByYouTabContainerScreen is first loaded.
class NearByYouTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearByYouTabContainerController());
  }
}
