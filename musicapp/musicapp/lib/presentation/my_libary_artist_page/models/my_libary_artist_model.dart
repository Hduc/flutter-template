
import '../../../core/utils/image_constant.dart';
import 'my_libary_item_model.dart';

/// This class defines the variables used in the [my_libary_artist_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyLibaryArtistModel {
  // Rx<List<MyLibaryItemModel>> myLibaryItemList =
  //     Rx(List.generate(8, (index) => MyLibaryItemModel()));

  static List<MyLibaryItemModel> myLibaryItemList(){
    return [
      MyLibaryItemModel(ImageConstant.imgPlaylist1st,"Door na jaye tu","Arijit singh"),
      MyLibaryItemModel(ImageConstant.imgPlaylist2nd,"Vimans aps nadha","Aps nadha"),
      MyLibaryItemModel(ImageConstant.imgPlaylist3rd,"Fall in the hall","Sumit hausale"),
      MyLibaryItemModel(ImageConstant.imgPlaylist4th,"Door na jaye tu","Harry jordhan"),
      MyLibaryItemModel(ImageConstant.imgPlaylist5th,"Fida this eid","Sonu Nigam"),
      MyLibaryItemModel(ImageConstant.imgPlaylist6th,"Rab vicholla","Balraj’s"),
      MyLibaryItemModel(ImageConstant.imgPlaylist7th,"Fida this eid","Sonu Nigam"),
      MyLibaryItemModel(ImageConstant.imgPlaylist8th,"Tu hi wajah","Pradeep pandey"),
    ];
  }
}
