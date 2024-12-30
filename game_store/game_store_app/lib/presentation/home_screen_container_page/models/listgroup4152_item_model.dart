import 'package:get/get.dart';

/// This class is used in the [listgroup4152_item_widget] screen.

class Listgroup4152ItemModel {
  Rx<String> actionTxt = Rx("Action");

  Rx<String>? id = Rx("");


  String? icon;
  String? title;
  bool? isselected;
  Listgroup4152ItemModel(this.icon,this.title,this.isselected);
}
