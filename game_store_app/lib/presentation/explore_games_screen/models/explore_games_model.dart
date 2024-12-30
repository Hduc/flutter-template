import 'package:get/get.dart';import 'explore_games_item_model.dart';/// This class defines the variables used in the [explore_games_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreGamesModel {Rx<List<ExploreGamesItemModel>> exploreGamesItemList = Rx(List.generate(12,(index) => ExploreGamesItemModel()));

 }
