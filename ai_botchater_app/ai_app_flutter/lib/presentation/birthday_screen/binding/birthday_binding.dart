import '../controller/birthday_controller.dart';
import 'package:get/get.dart';

class BirthdayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BirthdayController());
  }
}
