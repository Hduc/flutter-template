import '../controller/register_upload_or_take_id_card_controller.dart';
import 'package:get/get.dart';

class RegisterUploadOrTakeIdCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterUploadOrTakeIdCardController());
  }
}
