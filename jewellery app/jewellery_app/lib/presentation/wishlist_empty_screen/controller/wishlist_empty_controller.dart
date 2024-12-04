import 'package:jewellery_app/core/app_export.dart';
import 'package:jewellery_app/presentation/wishlist_empty_screen/models/wishlist_empty_model.dart';

/// A controller class for the WishlistEmptyScreen.
///
/// This class manages the state of the WishlistEmptyScreen, including the
/// current wishlistEmptyModelObj
class WishlistEmptyController extends GetxController {
  Rx<WishlistEmptyModel> wishlistEmptyModelObj = WishlistEmptyModel().obs;

 }
