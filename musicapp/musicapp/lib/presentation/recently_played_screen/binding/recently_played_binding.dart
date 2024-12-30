import '../controller/recently_played_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecentlyPlayedScreen.
///
/// This class ensures that the RecentlyPlayedController is created when the
/// RecentlyPlayedScreen is first loaded.
class RecentlyPlayedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecentlyPlayedController());
  }
}
