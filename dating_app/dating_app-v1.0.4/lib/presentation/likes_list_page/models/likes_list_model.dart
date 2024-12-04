import 'package:get/get.dart';

import 'likes_list_item_model.dart';

class LikesListModel {
  Rx<List<LikesListItemModel>> likesListItemList =
      Rx(List.generate(4, (index) => LikesListItemModel()));
}
