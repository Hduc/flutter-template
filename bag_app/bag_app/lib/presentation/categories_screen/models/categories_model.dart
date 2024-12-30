
import '../../../core/utils/image_constant.dart';
import 'cupcake_item_model.dart';

/// This class defines the variables used in the [categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel {
  // Rx<List<LaptopBagItemModel>> cupcakeItemList =
  //     Rx(List.generate(12, (index) => LaptopBagItemModel()));


  static List<LaptopBagItemModel> getCategories(){
    return [
      LaptopBagItemModel(ImageConstant.category1st,"Helmet"),
      LaptopBagItemModel(ImageConstant.category2nd,"Light"),
      LaptopBagItemModel(ImageConstant.category3rd,"Shoes"),
      LaptopBagItemModel(ImageConstant.category4th,"Cloths"),
      LaptopBagItemModel(ImageConstant.category5th,"Componets"),
      LaptopBagItemModel(ImageConstant.category6th,"Electronics"),
      LaptopBagItemModel(ImageConstant.category7th,"Body part"),
      LaptopBagItemModel(ImageConstant.category8th,"Backpacks"),
      LaptopBagItemModel(ImageConstant.category9th,"Bicyle"),
      LaptopBagItemModel(ImageConstant.category10th,"Perfomanc.. "),
      LaptopBagItemModel(ImageConstant.category11th,"Repair parts"),
      LaptopBagItemModel(ImageConstant.category12th,"Tirers"),
    ];
  }
}
