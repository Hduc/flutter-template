import '../controller/match_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MatchSuccessScreen.
///
/// This class ensures that the MatchSuccessController is created when the
/// MatchSuccessScreen is first loaded.
class MatchSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MatchSuccessController());
  }
}
