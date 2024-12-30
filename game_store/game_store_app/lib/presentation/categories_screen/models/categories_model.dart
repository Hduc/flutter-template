import 'package:get/get.dart';import 'categories_item_model.dart';/// This class defines the variables used in the [categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel {Rx<List<CategoriesItemModel>> categoriesItemList = Rx(List.generate(15,(index) => CategoriesItemModel()));

 }
