import 'package:get/get.dart';

import 'bottom_selection_controller.dart';
import 'filters_controller.dart';
import 'home_controller.dart';
import 'image_controller.dart';

class StoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomItemSelectionController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => FiltersController());
    Get.lazyPut(() => ImageController());
  }
}
