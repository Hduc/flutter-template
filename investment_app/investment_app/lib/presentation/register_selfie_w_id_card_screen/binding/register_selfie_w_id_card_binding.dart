import '../controller/register_selfie_w_id_card_controller.dart';
import 'package:get/get.dart';

class RegisterSelfieWIdCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterSelfieWIdCardController());
  }
}
