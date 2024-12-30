import '../controller/talkifyai_controller.dart';
import 'package:get/get.dart';

class TalkifyaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TalkifyaiController());
  }
}
