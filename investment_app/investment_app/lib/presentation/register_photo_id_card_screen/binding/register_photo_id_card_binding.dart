import '../controller/register_photo_id_card_controller.dart';
import 'package:get/get.dart';

class RegisterPhotoIdCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterPhotoIdCardController());
  }
}
