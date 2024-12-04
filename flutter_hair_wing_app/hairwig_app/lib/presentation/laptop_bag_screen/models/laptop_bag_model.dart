

import '../../../core/utils/image_constant.dart';
import 'productdetails2_item_model.dart';

/// This class defines the variables used in the [cup_cake_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class texturesModel {
  // Rx<List<Productdetails2ItemModel>> productdetails2ItemList =
  //     Rx(List.generate(6, (index) => Productdetails2ItemModel()));

  static List<TexturesItemModel> gettexturesData(){
    return [
      TexturesItemModel(ImageConstant.imgtextures1st,"Straight hair","0.00","\$19.00","\$25.00","13%","10",true,true,true),
      TexturesItemModel(ImageConstant.imgtextures2nd,"Wavy hair","0.00","\$21.00","\$25.00","14%","10",false,false,false),
      TexturesItemModel(ImageConstant.imgtextures3rd,"Curly hair","0.00","\$24.00","\$25.00","12%","10",false,false,false),
      TexturesItemModel(ImageConstant.imgtextures4th,"Velvety hair dream","0.00","\$22.00","\$25.00","13%","10",false,false,true),
      TexturesItemModel(ImageConstant.imgtextures5th,"Wigs","0.00","\$19.00","\$25.00","13%","10",false,false,false),
      TexturesItemModel(ImageConstant.imgtextures6th,"Karia backpack","0.00","\$21.00","\$25.00","14%","10",false,false,false),
    ];
  }
}
