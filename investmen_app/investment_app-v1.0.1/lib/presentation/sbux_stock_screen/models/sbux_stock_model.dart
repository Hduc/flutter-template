import 'package:get/get.dart';
import 'sbux_stock_item_model.dart';
import 'listseventy_item_model.dart';
import 'list2_item_model.dart';
import 'list4_item_model.dart';

class SbuxStockModel {

  RxList<SbuxStockItemModel> sbuxStockItemList =
      RxList.filled(4, SbuxStockItemModel());

  RxList<ListseventyItemModel> listseventyItemList =
      RxList.filled(3, ListseventyItemModel());

  RxList<List2ItemModel> list2ItemList =
      RxList.generate(6, (index) => List2ItemModel());

  RxList<List4ItemModel> list4ItemList = RxList.filled(3, List4ItemModel(""));
}
