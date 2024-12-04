import '../controller/profile_created_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileCreatedSuccessScreen.
///
/// This class ensures that the ProfileCreatedSuccessController is created when the
/// ProfileCreatedSuccessScreen is first loaded.
class ProfileCreatedSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileCreatedSuccessController());
  }
}
