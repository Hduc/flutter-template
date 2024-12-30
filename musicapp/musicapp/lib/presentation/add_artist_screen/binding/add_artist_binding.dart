import '../controller/add_artist_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPlaylistScreen.
///
/// This class ensures that the AddPlaylistController is created when the
/// AddPlaylistScreen is first loaded.
class AddArtistlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddArtistlistController());
  }
}
