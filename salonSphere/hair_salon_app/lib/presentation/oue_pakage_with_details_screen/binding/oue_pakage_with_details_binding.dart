import '../controller/oue_pakage_with_details_controller.dart';
import 'package:get/get.dart';

class OuePakageWithDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OuePakageWithDetailsController());
  }
}
