import 'package:game_store_app/core/app_export.dart';
import 'package:get/get.dart';
import 'download_item_model.dart';

/// This class defines the variables used in the [download_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DownloadModel {
  // Rx<List<DownloadItemModel>> downloadItemList =
  //     Rx(List.generate(3, (index) => DownloadItemModel()));
static List<DownloadItemModel> getCompleted(){
  return [
    DownloadItemModel(ImageConstant.imgCompleted1st,"The GTA powar",1),
    DownloadItemModel(ImageConstant.imgCompleted2nd,"Cash of clans",2),
    DownloadItemModel(ImageConstant.imgCompleted3rd,"The GTA powar",3),
    DownloadItemModel(ImageConstant.imgCompleted4th,"Pubg mobile",4),
  ];
}

static List<Downloading> getDownloading(){
  return [
    Downloading(ImageConstant.imgDownloading1st,"Mini militia",false),
    Downloading(ImageConstant.imgDownloading2nd,"Candy crush saga",false),
    Downloading(ImageConstant.imgDownloading3rd,"Dr. driving",false),
  ];
}
}
