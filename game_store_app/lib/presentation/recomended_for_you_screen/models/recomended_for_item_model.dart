import 'package:get/get.dart';

/// This class is used in the [recomended_for_item_widget] screen.

class RecomendedForItemModel {
  Rx<String> therobotpowarTxt = Rx("Hungle money");

  Rx<String> multiplayeradveTxt = Rx("Adventure");

  Rx<String> fortyTxt = Rx("(3.5)");

  Rx<String> priceTxt = Rx("69.00");

  Rx<String>? id = Rx("");

  String? image;
  String? name;
  String? subTitle;
  String? price;
  String? rate;
  RecomendedForItemModel(this.image,this.name,this.subTitle,this.price,this.rate);

}
