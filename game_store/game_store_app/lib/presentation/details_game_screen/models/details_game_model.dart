import 'package:get/get.dart';import 'details_game_item_model.dart';/// This class defines the variables used in the [details_game_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailsGameModel {Rx<List<DetailsGameItemModel>> detailsGameItemList = Rx(List.generate(4,(index) => DetailsGameItemModel()));

 }
