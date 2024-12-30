import '../controller/songs_lyrics_controller.dart';
import 'package:get/get.dart';

class SongsLyricsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SongsLyricsController());
  }
}
