import 'package:get/get.dart';
import 'gridrectangleth2_item_model.dart';

/// This class defines the variables used in the [haircut_with_categorie_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HaircutWithCategorieOneModel {
  RxList<Gridrectangleth2ItemModel> gridrectangleth2ItemList = [
    Gridrectangleth2ItemModel("Skin Care", "women1.png"),
    Gridrectangleth2ItemModel("Aloo Vera Shampoo", "women2.png"),
    Gridrectangleth2ItemModel("Face Make Up", "women3.png"),
    Gridrectangleth2ItemModel("Hair Care", "women4.png"),
    Gridrectangleth2ItemModel("Hair Coloring", "women5.png"),
    Gridrectangleth2ItemModel("Hair Wash", "women6.png"),
  ].obs;
}
