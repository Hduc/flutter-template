import 'package:bag_app/core/app_export.dart';

import '../models/laptop_bag_model.dart';
import '../models/productdetails2_item_model.dart';

/// A controller class for the CupCakeScreen.
///
/// This class manages the state of the CupCakeScreen, including the
/// current LaptopBagModelObj
class LaptopBagController extends GetxController {
 List<LaptopBagItemModel> cupCakeData = LaptopBagModel.getCupCakeData();

 void setFavProduct(LaptopBagItemModel model) {
  model.isFavourite = !model.isFavourite!;
  update();
 }
}
