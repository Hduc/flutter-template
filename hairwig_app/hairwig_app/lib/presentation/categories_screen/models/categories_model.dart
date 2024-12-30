
import '../../../core/utils/image_constant.dart';
import 'cupcake_item_model.dart';

/// This class defines the variables used in the [categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel {
  // Rx<List<TexturesItemModel>> cupcakeItemList =
  //     Rx(List.generate(12, (index) => TexturesItemModel()));


  static List<TexturesItemModel> getCategories(){
    return [
      TexturesItemModel(ImageConstant.category1st,"Helmet"),
      TexturesItemModel(ImageConstant.category2nd,"Light"),
      TexturesItemModel(ImageConstant.category3rd,"Shoes"),
      TexturesItemModel(ImageConstant.category4th,"Cloths"),
      TexturesItemModel(ImageConstant.category5th,"Componets"),
      TexturesItemModel(ImageConstant.category6th,"Electronics"),
      TexturesItemModel(ImageConstant.category7th,"Body part"),
      TexturesItemModel(ImageConstant.category8th,"Backpacks"),
      TexturesItemModel(ImageConstant.category9th,"Bicyle"),
      TexturesItemModel(ImageConstant.category10th,"Perfomanc.. "),
      TexturesItemModel(ImageConstant.category11th,"Repair parts"),
      TexturesItemModel(ImageConstant.category12th,"Tirers"),

    ];
  }
}
