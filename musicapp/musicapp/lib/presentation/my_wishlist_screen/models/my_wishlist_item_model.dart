import 'package:get/get.dart';

/// This class is used in the [my_wishlist_item_widget] screen.

class MyWishlistItemModel {
  Rx<String> titleTxt = Rx("Lagaan na jaye");

  Rx<String> leadactorTxt = Rx("Aamir khan");

  Rx<String>? id = Rx("");
  String? image;
  String? title;
  String? subTitle;
  bool? isLike;
  MyWishlistItemModel(this.image,this.title,this.subTitle,this.isLike);
}
