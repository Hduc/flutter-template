
import '../../../core/utils/image_constant.dart';
import 'productdetails1_item_model.dart';

/// This class defines the variables used in the [cakes_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HandBagModel {
  static List<HandBagItemModel> handBagItemList(){
    return [
      HandBagItemModel(ImageConstant.imgHandBag1st,"Slim pouch","4.3","\$19.00","\$25.00","13%","10",true,true,true),
      HandBagItemModel(ImageConstant.imgHandBag2nd,"Leather bag","4.3","\$21.00","\$25.00","14%","10",false,false,false),
      HandBagItemModel(ImageConstant.imgHandBag3rd,"Convertible","4.3","\$24.00","\$25.00","12%","10",false,false,false),
      HandBagItemModel(ImageConstant.imgHandBag4th,"Hand bag","4.3","\$22.00","\$25.00","13%","10",false,false,true),
      HandBagItemModel(ImageConstant.imgHandBag5th,"Slim pouch","4.3","\$19.00","\$25.00","13%","10",false,false,false),
      HandBagItemModel(ImageConstant.imgHandBag6th,"Leather bag","4.3","\$21.00","\$25.00","14%","10",false,false,false),
    ];
  }
}
