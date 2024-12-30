import '../controller/play_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PlayScreen.
///
/// This class ensures that the PlayController is created when the
/// PlayScreen is first loaded.
class PlayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlayController());
  }
}
