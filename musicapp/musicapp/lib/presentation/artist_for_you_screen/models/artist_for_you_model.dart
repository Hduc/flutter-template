
import '../../../core/utils/image_constant.dart';
import 'artist_for_you_item_model.dart';

/// This class defines the variables used in the [artist_for_you_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistForYouModel {
  // Rx<List<ArtistForYouItemModel>> artistForYouItemList =
  //     Rx(List.generate(15, (index) => ArtistForYouItemModel()));


  static List<ArtistForYouItemModel> artistForYouItemList(){
   return [
    ArtistForYouItemModel(ImageConstant.imgTopPics1st,"The lahenga of the day song","Sundeep sokhi"),
    ArtistForYouItemModel(ImageConstant.imgTopPics2nd,"The lahenga of the day song","Sundeep sokhi"),
   ];}
}
