import '../controller/recomended_for_you_one_controller.dart';
import 'package:get/get.dart';

class RecomendedForYouOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecomendedForYouOneController());
  }
}
