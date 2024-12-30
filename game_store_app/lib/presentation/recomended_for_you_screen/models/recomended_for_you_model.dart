import 'package:game_store_app/core/app_export.dart';
import 'package:get/get.dart';
import 'recomended_for_item_model.dart';

/// This class defines the variables used in the [recomended_for_you_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RecomendedForYouModel {
  // Rx<List<RecomendedForItemModel>> recomendedForItemList =
  //     Rx(List.generate(7, (index) => RecomendedForItemModel()));
  static List<RecomendedForItemModel> getActionData(){
    return [
      RecomendedForItemModel(ImageConstant.imgAction1st,"Hungle money","Adventure","\$69.00","3.5"),
      RecomendedForItemModel(ImageConstant.imgAction2nd,"Dianosor game","Adventure","\$69.00","4.5"),
      RecomendedForItemModel(ImageConstant.imgAction3rd,"Fire city ground","Single player","\$50.00","3.5"),
      RecomendedForItemModel(ImageConstant.imgAction4th,"Official multiple","Multi player, adventure","\$64.00","4.3"),
      RecomendedForItemModel(ImageConstant.imgAction5th,"Dr.driving","Single player, adventure","\$15.00","4.1"),
      RecomendedForItemModel(ImageConstant.imgAction6th,"The GTA powar","Single player, adventure","\$12.00","4.0"),
      RecomendedForItemModel(ImageConstant.imgAction7th,"Cash of clans","Single player, adventure","\$50.00","4.4"),
    ];
  }
}
