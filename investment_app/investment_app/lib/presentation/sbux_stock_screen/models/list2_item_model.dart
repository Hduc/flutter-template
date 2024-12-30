import 'package:get/get.dart';

import 'list4_item_model.dart';

class List2ItemModel {
  Rx<String> visionaryTxt = Rx('"🚀 Visionary"');
  static List<List4ItemModel> getCharactristicsData(){
    return [
      List4ItemModel("✅ All Stocks"),
      List4ItemModel("🚀 Visionary"),
      List4ItemModel("💪 Founder-Led"),
      List4ItemModel("😎 Lifestyle"),
      List4ItemModel("🎇 Entertainment"),
      List4ItemModel("💻 Tech"),
    ];
  }

  RxBool isSelected = false.obs;
}
