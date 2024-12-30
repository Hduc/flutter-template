import 'package:hair_salon_app/presentation/home_page_screen/controller/home_page_controller.dart';

// ignore: unused_import
import '../controller/categories_controller.dart';
import 'package:get/get.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}
