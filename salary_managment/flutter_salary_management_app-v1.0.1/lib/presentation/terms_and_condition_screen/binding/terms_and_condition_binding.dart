import '../controller/terms_and_condition_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TermsAndConditionScreen.
///
/// This class ensures that the TermsAndConditionController is created when the
/// TermsAndConditionScreen is first loaded.
class TermsAndConditionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsAndConditionController());
  }
}
