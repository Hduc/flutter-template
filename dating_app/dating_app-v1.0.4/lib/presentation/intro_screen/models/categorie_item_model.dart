import 'package:get/get.dart';/// This class is used in the [categorie_item_widget] screen.
class CategorieItemModel {
 Rx<String> categorieTxt = Rx("Wrestling");
Rx<bool> isSelected = Rx(false);
String? text;

CategorieItemModel({
  this.text,
});

 }
