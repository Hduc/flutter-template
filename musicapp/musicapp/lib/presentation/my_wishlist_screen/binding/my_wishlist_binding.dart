import '../controller/my_wishlist_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyWishlistScreen.
///
/// This class ensures that the MyWishlistController is created when the
/// MyWishlistScreen is first loaded.
class MyWishlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyWishlistController());
  }
}
