import '../controller/add_manually_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddManuallyAddressScreen.
///
/// This class ensures that the AddManuallyAddressController is created when the
/// AddManuallyAddressScreen is first loaded.
class AddManuallyAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddManuallyAddressController());
  }
}
