import '../controller/movie_script_controller.dart';
import 'package:get/get.dart';

class MovieScriptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieScriptController());
  }
}
