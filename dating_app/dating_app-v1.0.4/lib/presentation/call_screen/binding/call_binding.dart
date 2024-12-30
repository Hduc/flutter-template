import '../controller/call_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CallScreen.
///
/// This class ensures that the CallController is created when the
/// CallScreen is first loaded.
class CallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallController());
  }
}
