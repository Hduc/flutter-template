import 'package:game_store_app/core/app_export.dart';
import 'package:get/get.dart';
import 'review_item_model.dart';

/// This class defines the variables used in the [review_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewModel {
  // Rx<List<ReviewItemModel>> reviewItemList =
  //     Rx(List.generate(6, (index) => ReviewItemModel()));

 static List<ReviewItemModel> getSearchData(){
  return [
   ReviewItemModel(ImageConstant.imgSearchData1st,"Jungle money","Adventure","\$69.00","4.5"),
   ReviewItemModel(ImageConstant.imgSearchData2nd,"Dianosor game","Adventure","\$69.00","4.5"),
   ReviewItemModel(ImageConstant.imgSearchData3rd,"Fire city ground","Single player","\$50.00","4.4"),
   ReviewItemModel(ImageConstant.imgSearchData4th,"Official multiple","Multi player, adventure","\$64.00","4.3"),
   ReviewItemModel(ImageConstant.imgSearchData5th,"Dr.driving","Single player, adventure","\$15.00","4.1"),
   ReviewItemModel(ImageConstant.imgSearchData6th,"The GTA powar","Single player, adventure","\$12.00","4.0"),
  ];
 }
}
