import 'package:get/get.dart';import 'gridrocketone_item_model.dart';/// This class defines the variables used in the [explore_games_selected_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreGamesSelectedModel {Rx<List<GridrocketoneItemModel>> gridrocketoneItemList = Rx(List.generate(12,(index) => GridrocketoneItemModel()));

 }
