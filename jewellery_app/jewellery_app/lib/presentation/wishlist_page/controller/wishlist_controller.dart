import 'package:jewellery_app/core/app_export.dart';
import 'package:jewellery_app/presentation/wishlist_page/models/wishlist_model.dart';

/// A controller class for the WishlistPage.
///
/// This class manages the state of the WishlistPage, including the
/// current wishlistModelObj
class WishlistController extends GetxController {
  WishlistController(this.wishlistModelObj);

  Rx<WishlistModel> wishlistModelObj;

 }
