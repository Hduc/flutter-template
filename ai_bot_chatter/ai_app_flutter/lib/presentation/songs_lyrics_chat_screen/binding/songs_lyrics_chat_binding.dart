import '../controller/songs_lyrics_chat_controller.dart';
import 'package:get/get.dart';

class SongsLyricsChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SongsLyricsChatController());
  }
}
