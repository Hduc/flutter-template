import '../controller/home_screen_container1_controller.dart';
import 'package:get/get.dart';

class HomeScreenContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenContainer1Controller());
  }
}
