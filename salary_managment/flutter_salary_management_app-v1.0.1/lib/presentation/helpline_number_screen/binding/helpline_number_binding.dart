import '../controller/helpline_number_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HelplineNumberScreen.
///
/// This class ensures that the HelplineNumberController is created when the
/// HelplineNumberScreen is first loaded.
class HelplineNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelplineNumberController());
  }
}
