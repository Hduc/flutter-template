import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/sbux_stock_screen/models/sbux_stock_model.dart';

import '../models/list2_item_model.dart';
import '../models/list4_item_model.dart';

class SbuxStockController extends GetxController {
  Rx<SbuxStockModel> sbuxStockModelObj = SbuxStockModel().obs;
  List<List4ItemModel> characteristicData = List2ItemModel.getCharactristicsData();
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
