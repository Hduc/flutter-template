import 'package:get/get.dart';

/// This class is used in the [list18271_item_widget] screen.

class List18271ItemModel {
  Rx<String> enemyftjidTxt = Rx("Number likh");

  Rx<String>? id = Rx("");

  String? image;
  String? title;
  String? subtitle;
  bool? isLike;
  List18271ItemModel(this.image,this.title,this.subtitle,this.isLike);
}

class SliderData {
  String? image;
  String? title;

  SliderData(this.image, this.title);
}

class RecommendedData{
  String? image;
  String? title;
  String? subtitle;
  bool? isLike;
  RecommendedData(this.image,this.title,this.subtitle,this.isLike);
}


class Artist{
  String? image;
  String? ractangleImage;
  String? name;
  String? followers;
  Artist(this.image,this.ractangleImage,this.name,this.followers);

}
