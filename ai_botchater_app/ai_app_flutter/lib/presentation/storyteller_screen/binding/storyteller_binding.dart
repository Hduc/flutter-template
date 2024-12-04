import '../controller/storyteller_controller.dart';
import 'package:get/get.dart';

class StorytellerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StorytellerController());
  }
}
