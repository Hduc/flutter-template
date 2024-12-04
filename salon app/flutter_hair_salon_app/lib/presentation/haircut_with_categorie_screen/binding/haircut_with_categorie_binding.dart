import '../controller/haircut_with_categorie_controller.dart';
import 'package:get/get.dart';

class HaircutWithCategorieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HaircutWithCategorieController());
  }
}
