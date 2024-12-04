import '../controller/register_selfie_w_id_card_one_controller.dart';
import 'package:get/get.dart';

class RegisterSelfieWIdCardOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterSelfieWIdCardOneController());
  }
}
