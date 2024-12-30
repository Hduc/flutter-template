import '../controller/address_edit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddressEditScreen.
///
/// This class ensures that the AddressEditController is created when the
/// AddressEditScreen is first loaded.
class AddressEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddressEditController());
  }
}
