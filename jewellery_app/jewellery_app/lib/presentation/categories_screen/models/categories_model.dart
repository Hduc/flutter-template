import '../../../core/utils/image_constant.dart';
import 'cupcake_item_model.dart';

/// This class defines the variables used in the [categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel {
  // Rx<List<MoterCyclePartsModel>> cupcakeItemList =
  //     Rx(List.generate(12, (index) => MoterCyclePartsModel()));

  static List<MoterCyclePartsModel> getCategories() {
    return [
      MoterCyclePartsModel(ImageConstant.category1st, "Sale"),
      MoterCyclePartsModel(ImageConstant.category2nd, "Celebration"),
      MoterCyclePartsModel(ImageConstant.category3rd, "Arrivals"),
      MoterCyclePartsModel(ImageConstant.category4th, "Bestseller"),
      MoterCyclePartsModel(ImageConstant.category5th, "Grand evening"),
      MoterCyclePartsModel(ImageConstant.category6th, "Hard stones"),
    ];
  }
}
