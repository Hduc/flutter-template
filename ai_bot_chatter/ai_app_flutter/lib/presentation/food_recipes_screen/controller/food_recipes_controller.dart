import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class FoodRecipesController extends GetxController {
  TextEditingController groupeightytwoController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
   ChatModel("Which is better to cook food?", 1),
   ChatModel("Boiling results in the greatest loss of nutrients, while other cooking methods more effectively preserve the nutrient content of food. Steaming, roasting and stir-frying are some of the best methods of cooking vegetables when it comes to retaining nutrientsthe rice vinegar, sugar, and salt until the sugar and salt have dissolved.\n1.  Once the rice is cooked, transfer it to a large bowl and add the vinegar mixture. Gently fold the rice with a wooden spoon or spatula until it is evenly coated.\n2.  Cut the nori sheets in half, and place a half sheet on a sushi mat.\n3.  Wet your hands, and take a handful of rice (about 1/2 cup). Spread the rice over the nori, leaving about 1 inch at the top of the sheet uncovered.\n4.  Arrange the fillings in a line across the rice.\n5.  Use the sushi mat to roll the sushi tightly, tucking the fillings in as you go. Wet the uncovered edge of the nori with water to seal the roll.\n6.  Repeat with the remaining nori sheets and rice, until all the ingredients are used up.\n7.  Use a sharp knife to cut the sushi rolls into bite-sized pieces.\n8.  Serve the sushi with soy sauce, wasabi, and pickled ginger.\n\n9.  Enjoy your homemade sushi!", 0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupeightytwoController.dispose();
  }
}
