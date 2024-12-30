import '../controller/food_recipes_controller.dart';
import 'package:get/get.dart';

class FoodRecipesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodRecipesController());
  }
}
