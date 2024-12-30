import '../controller/movie_script_chat_controller.dart';
import 'package:get/get.dart';

class MovieScriptChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieScriptChatController());
  }
}
