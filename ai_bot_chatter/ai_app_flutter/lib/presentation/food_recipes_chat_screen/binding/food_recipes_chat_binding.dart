import '../controller/food_recipes_chat_controller.dart';
import 'package:get/get.dart';

class FoodRecipesChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodRecipesChatController());
  }
}
