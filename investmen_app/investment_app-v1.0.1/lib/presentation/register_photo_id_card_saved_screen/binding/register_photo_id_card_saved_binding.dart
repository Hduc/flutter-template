import '../controller/register_photo_id_card_saved_controller.dart';
import 'package:get/get.dart';

class RegisterPhotoIdCardSavedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterPhotoIdCardSavedController());
  }
}
