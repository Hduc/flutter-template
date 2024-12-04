import '../controller/interested_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InterestedScreen.
///
/// This class ensures that the InterestedController is created when the
/// InterestedScreen is first loaded.
class InterestedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InterestedController());
  }
}
