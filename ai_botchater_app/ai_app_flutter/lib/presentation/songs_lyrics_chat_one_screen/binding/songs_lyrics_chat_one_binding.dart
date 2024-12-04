import '../controller/songs_lyrics_chat_one_controller.dart';
import 'package:get/get.dart';

class SongsLyricsChatOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SongsLyricsChatOneController());
  }
}
