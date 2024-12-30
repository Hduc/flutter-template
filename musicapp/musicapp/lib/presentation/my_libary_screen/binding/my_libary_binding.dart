import '../controller/my_libary_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyLibaryScreen.
///
/// This class ensures that the MyLibaryController is created when the
/// MyLibaryScreen is first loaded.
class MyLibaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyLibaryController());
  }
}
