import '../controller/haircut_with_categorie_one_controller.dart';
import 'package:get/get.dart';

class HaircutWithCategorieOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HaircutWithCategorieOneController());
  }
}
