import '../controller/songs_lyrics_one_controller.dart';
import 'package:get/get.dart';

class SongsLyricsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SongsLyricsOneController());
  }
}
