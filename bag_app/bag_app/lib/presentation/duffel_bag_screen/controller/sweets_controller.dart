import 'package:bag_app/core/app_export.dart';

import '../models/productdetails3_item_model.dart';
import '../models/duffel_bag_model.dart';

/// A controller class for the DuffelBagScreen.
///
/// This class manages the state of the DuffelBagScreen, including the
/// current DuffelBagModelObj
class DuffelBagController extends GetxController {
  List<DuffelBagItemModel> sweetData = DuffelBagModel.duffelBagList();

  void setFavProduct(DuffelBagItemModel model) {
    model.isFavourite = !model.isFavourite!;
    update();
  }
}
