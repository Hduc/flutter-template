

import '../../../core/utils/image_constant.dart';
import 'productdetails2_item_model.dart';

/// This class defines the variables used in the [cup_cake_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LaptopBagModel {
  // Rx<List<Productdetails2ItemModel>> productdetails2ItemList =
  //     Rx(List.generate(6, (index) => Productdetails2ItemModel()));

  static List<LaptopBagItemModel> getCupCakeData(){
    return [
      LaptopBagItemModel(ImageConstant.imgLaptopBag1st,"Mac waist bag","4.3","\$19.00","\$25.00","13%","10",true,true,true),
      LaptopBagItemModel(ImageConstant.imgLaptopBag2nd,"Wildcraft","4.3","\$21.00","\$25.00","14%","10",false,false,false),
      LaptopBagItemModel(ImageConstant.imgLaptopBag3rd,"Karia backpack","4.3","\$24.00","\$25.00","12%","10",false,false,false),
      LaptopBagItemModel(ImageConstant.imgLaptopBag4th,"Shoulder backpack","4.3","\$22.00","\$25.00","13%","10",false,false,true),
      LaptopBagItemModel(ImageConstant.imgLaptopBag5th,"Wildcraft","4.3","\$19.00","\$25.00","13%","10",false,false,false),
      LaptopBagItemModel(ImageConstant.imgLaptopBag6th,"Karia backpack","4.3","\$21.00","\$25.00","14%","10",false,false,false),
    ];
  }
}
