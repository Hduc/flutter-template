import '../controller/songs_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SongsDetailScreen.
///
/// This class ensures that the SongsDetailController is created when the
/// SongsDetailScreen is first loaded.
class SongsDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SongsDetailController());
  }
}
