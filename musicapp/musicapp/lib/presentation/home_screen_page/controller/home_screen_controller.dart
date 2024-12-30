import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/home_screen_page/models/home_screen_model.dart';

import '../../artist_for_you_screen/models/artist_for_you_item_model.dart';
import '../../artist_for_you_screen/models/artist_for_you_model.dart';
import '../models/list18271_item_model.dart';

/// A controller class for the HomeScreenPage.
///
/// This class manages the state of the HomeScreenPage, including the
/// current homeScreenModelObj
class HomeScreenController extends GetxController {




  Rx<int> silderIndex = 0.obs;

  List<SliderData> sliderData = HomeScreenModel.getSliderData();

  List<List18271ItemModel> recentPlayData = HomeScreenModel.list18271ItemList();

  List<RecommendedData> recommendedData =  HomeScreenModel.getReccomendedData();

  List<Artist> artistData =  HomeScreenModel.getArtistData();

  List<ArtistForYouItemModel> topPicsData =  ArtistForYouModel.artistForYouItemList();

  void setLikePosition(list18271itemModelObj) {
    list18271itemModelObj.isLike = !list18271itemModelObj.isLike!;
    update();
  }

  int currentPage = 0;

  void setCurrentPage(int i) {
    currentPage = i;
    update();
  }
}
