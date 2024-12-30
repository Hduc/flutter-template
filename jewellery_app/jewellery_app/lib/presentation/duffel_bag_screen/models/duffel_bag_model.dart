
import '../../../core/utils/image_constant.dart';
import 'productdetails3_item_model.dart';

/// This class defines the variables used in the [sweets_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DuffelBagModel {
 static List<DuffelBagItemModel> duffelBagList(){
  return [
   DuffelBagItemModel(ImageConstant.imgDuffelBag1st,"Brown duffle bag","4.3","\$19.00","\$25.00","13%","10",true,true,true),
   DuffelBagItemModel(ImageConstant.imgDuffelBag2nd,"Leather duffle bag","4.3","\$21.00","\$25.00","14%","10",false,false,false),
   DuffelBagItemModel(ImageConstant.imgDuffelBag3rd,"Grain duffle bag","4.3","\$24.00","\$25.00","12%","10",false,false,false),
   DuffelBagItemModel(ImageConstant.imgDuffelBag4th,"Men leather duffle bag","4.3","\$22.00","\$25.00","13%","10",false,false,true),
   DuffelBagItemModel(ImageConstant.imgDuffelBag5th,"Brown duffle bag","4.3","\$19.00","\$25.00","13%","10",false,false,false),
   DuffelBagItemModel(ImageConstant.imgDuffelBag6th,"Leather duffle bag","4.3","\$21.00","\$25.00","14%","10",false,false,false),
  ];
 }

}
