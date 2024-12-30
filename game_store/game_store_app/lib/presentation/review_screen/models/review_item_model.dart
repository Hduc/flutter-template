import 'package:get/get.dart';/// This class is used in the [review_item_widget] screen.
class ReviewItemModel {Rx<String> therobotpowarTxt = Rx("Jungle money");

Rx<String> multiplayeradveTxt = Rx("Adventure");

Rx<String> fortyTxt = Rx("(3.5)");

Rx<String> priceTxt = Rx("69.00");

Rx<String>? id = Rx("");

String?image;
String?name;
String?subTitle;
String?price;
String?rate;
ReviewItemModel(this.image,this.name,this.subTitle,this.price,this.rate);
 }
