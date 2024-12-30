import '../controller/artist_song_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ArtistSongScreen.
///
/// This class ensures that the ArtistSongController is created when the
/// ArtistSongScreen is first loaded.
class ArtistSongBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArtistSongController());
  }
}
