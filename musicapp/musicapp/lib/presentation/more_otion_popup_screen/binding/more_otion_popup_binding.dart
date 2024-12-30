import '../controller/more_otion_popup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MoreOtionPopupScreen.
///
/// This class ensures that the MoreOtionPopupController is created when the
/// MoreOtionPopupScreen is first loaded.
class MoreOtionPopupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoreOtionPopupController());
  }
}
