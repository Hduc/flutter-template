import '../controller/you_have_been_arrived_controller.dart';
import 'package:get/get.dart';

class YouHaveBeenArrivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YouHaveBeenArrivedController());
  }
}
