import 'package:jewellery_app/core/app_export.dart';

import '../models/laptop_bag_model.dart';
import '../models/productdetails2_item_model.dart';

/// A controller class for the CupCakeScreen.
///
/// This class manages the state of the CupCakeScreen, including the
/// current texturesModelObj
class MoterCyclePartsScreenController extends GetxController {
  List<MoterCyclePartsModel> texturesData =
      MoterCycleParts.getMoterCyclePartsData();

  void setFavProduct(MoterCyclePartsModel model) {
    model.isFavourite = !model.isFavourite!;
    update();
  }
}
