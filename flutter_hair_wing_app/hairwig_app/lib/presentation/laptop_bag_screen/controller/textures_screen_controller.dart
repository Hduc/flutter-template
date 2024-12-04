import 'package:hairwig_app/core/app_export.dart';

import '../models/laptop_bag_model.dart';
import '../models/productdetails2_item_model.dart';

/// A controller class for the CupCakeScreen.
///
/// This class manages the state of the CupCakeScreen, including the
/// current texturesModelObj
class TexturesScreenController extends GetxController {
 List<TexturesItemModel> texturesData = texturesModel.gettexturesData();

 void setFavProduct(TexturesItemModel model) {
  model.isFavourite = !model.isFavourite!;
  update();
 }
}
