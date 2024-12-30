import 'package:hair_salon_app/presentation/sign_up_screen/controller/sign_up_controller.dart';

import 'package:get/get.dart';

class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
