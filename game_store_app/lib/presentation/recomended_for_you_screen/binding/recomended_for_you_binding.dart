import '../controller/recomended_for_you_controller.dart';
import 'package:get/get.dart';

class RecomendedForYouBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecomendedForYouController());
  }
}
