import 'package:get/get.dart';
import 'top_games_item_model.dart';

/// This class defines the variables used in the [top_games_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopGamesModel {
  Rx<List<TopGamesItemModel>> topGamesItemList =
      Rx(List.generate(7, (index) => TopGamesItemModel()));
}
