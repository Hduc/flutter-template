import 'package:hairwig_app/core/app_export.dart';
import 'package:hairwig_app/presentation/categories_screen/models/categories_model.dart';

import '../models/cupcake_item_model.dart';

/// A controller class for the CategoriesScreen.
///
/// This class manages the state of the CategoriesScreen, including the
/// current categoriesModelObj
class CategoriesController extends GetxController {

  List<TexturesItemModel> categoryList = CategoriesModel.getCategories();
  // Rx<CategoriesModel> categoriesModelObj = CategoriesModel().obs;
}
