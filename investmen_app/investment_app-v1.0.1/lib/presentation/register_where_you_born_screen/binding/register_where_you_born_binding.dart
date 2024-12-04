import '../controller/register_where_you_born_controller.dart';
import 'package:get/get.dart';

class RegisterWhereYouBornBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterWhereYouBornController());
  }
}
