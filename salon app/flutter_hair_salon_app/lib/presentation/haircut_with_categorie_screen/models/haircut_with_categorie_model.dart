import 'package:get/get.dart';
import 'gridrectangleth1_item_model.dart';

/// This class defines the variables used in the [haircut_with_categorie_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HaircutWithCategorieModel {
  RxList<Gridrectangleth1ItemModel> gridrectangleth1ItemList = [
    Gridrectangleth1ItemModel("Quiff", "men1.png"),
    Gridrectangleth1ItemModel("Undercut", "men2.png"),
    Gridrectangleth1ItemModel("Tample fode", "men3.png"),
    Gridrectangleth1ItemModel("Crew Cut", "men4.png"),
    Gridrectangleth1ItemModel("Regular cut", "men5.png"),
    Gridrectangleth1ItemModel("Thin Shaving", "men6.png"),
  ].obs;
}
