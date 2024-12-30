import 'package:get/get.dart';import 'search_screen1_item_model.dart';/// This class defines the variables used in the [search_screen_fill_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchScreenFillModel {Rx<List<SearchScreen1ItemModel>> searchScreen1ItemList = Rx(List.generate(6,(index) => SearchScreen1ItemModel()));

 }
