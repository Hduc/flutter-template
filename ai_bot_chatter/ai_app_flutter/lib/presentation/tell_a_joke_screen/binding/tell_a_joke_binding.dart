import '../controller/tell_a_joke_controller.dart';
import 'package:get/get.dart';

class TellAJokeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TellAJokeController());
  }
}
