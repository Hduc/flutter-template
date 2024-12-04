import 'package:get/get.dart';import 'categorie_item_model.dart';/// This class defines the variables used in the [intro_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IntroModel {Rx<List<CategorieItemModel>> categorieItemList = Rx(List.generate(36,(index) =>CategorieItemModel()));

 }
