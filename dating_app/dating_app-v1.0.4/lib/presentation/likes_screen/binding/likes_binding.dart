import '../controller/likes_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LikesScreen.
///
/// This class ensures that the LikesController is created when the
/// LikesScreen is first loaded.
class LikesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LikesController());
  }
}
