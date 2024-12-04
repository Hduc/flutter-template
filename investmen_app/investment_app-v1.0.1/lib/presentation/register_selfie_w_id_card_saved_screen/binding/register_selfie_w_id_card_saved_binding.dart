import '../controller/register_selfie_w_id_card_saved_controller.dart';
import 'package:get/get.dart';

class RegisterSelfieWIdCardSavedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterSelfieWIdCardSavedController());
  }
}
