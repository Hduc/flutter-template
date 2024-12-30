import 'package:get/get.dart';/// This class is used in the [artist_for_you_item_widget] screen.
class ArtistForYouItemModel {Rx<String> typeTxt = Rx("Domatic fike");

Rx<String> distanceTxt = Rx("1.2m followes");

Rx<String>? id = Rx("");


String? image;
String? title;
String? subtitle;
ArtistForYouItemModel(this.image,this.title,this.subtitle);


 }
