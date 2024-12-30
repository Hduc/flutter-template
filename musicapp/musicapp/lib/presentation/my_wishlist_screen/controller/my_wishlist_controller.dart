import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/my_wishlist_screen/models/my_wishlist_model.dart';

import '../models/my_wishlist_item_model.dart';

/// A controller class for the MyWishlistScreen.
///
/// This class manages the state of the MyWishlistScreen, including the
/// current myWishlistModelObj
class MyWishlistController extends GetxController {
  Rx<MyWishlistModel> myWishlistModelObj = MyWishlistModel().obs;


  List<MyWishlistItemModel> favouriteData = MyWishlistModel.myWishlistItemList();

  addFavList(String? image, String? title, String? subtitle, bool? isLike) {
    favouriteData.add(MyWishlistItemModel(image,title,subtitle,isLike));
    update();
    print("dfav list length is ===== ${favouriteData.length}");
  }

  removeListItem(String? title){
    favouriteData.removeWhere((element) => element.title==title);
    update();
    print("remove dfav list length is ===== ${favouriteData.length}");
  }

}
