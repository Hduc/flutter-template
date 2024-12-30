import 'package:get/get.dart';import 'recently_played_item_model.dart';/// This class defines the variables used in the [recently_played_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RecentlyPlayedModel {Rx<List<RecentlyPlayedItemModel>> recentlyPlayedItemList = Rx(List.generate(6,(index) => RecentlyPlayedItemModel()));

 }
