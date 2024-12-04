import 'package:jewellery_app/core/app_export.dart';

import '../models/hand_bag_model.dart';
import '../models/productdetails1_item_model.dart';

/// A controller class for the HandBagScreen.
///
/// This class manages the state of the HandBagScreen, including the
/// current HandBagModelObj
class HandBagScreenController extends GetxController {
  List<HandBagItemModel> cakeData = HandBagModel.handBagItemList();

  void setFavProduct(HandBagItemModel model) {
    model.isFavourite = !model.isFavourite!;
    update();
  }
}
