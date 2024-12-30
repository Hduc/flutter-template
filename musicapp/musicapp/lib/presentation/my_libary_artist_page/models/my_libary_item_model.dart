import 'package:get/get.dart';

/// This class is used in the [my_libary_item_widget] screen.

class MyLibaryItemModel {
  Rx<String> typeTxt = Rx("Domatic fike");

  Rx<String> distanceTxt = Rx("1.2m followers");

  Rx<String>? id = Rx("");
  String? image;
  String? title;
  String? subTitle;
  MyLibaryItemModel(this.image,this.title,this.subTitle);
}
