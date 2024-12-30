import 'package:carousel_slider/carousel_controller.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/home_screen_page/models/list18271_item_model.dart';

/// A controller class for the SongsDetailScreen.
///
/// This class manages the state of the SongsDetailScreen, including the
/// current songsDetailModelObj
class SongsDetailController extends GetxController {
 int focusedIndex = 1;
 CarouselSliderController  carouselController = CarouselSliderController ();
 String? currentMusicImage;
 String? title;
 String? subTitle;
 bool? islike = false;
 bool? isplay = false;
  void setFocusedIndex(index) {
   focusedIndex = index;
   carouselController.animateToPage(index);
   update();
  }

  void setCurrentMusicData(RecommendedData recommendedData,val) {
  currentMusicImage = recommendedData.image;
  title = recommendedData.title;
  subTitle = recommendedData.subtitle;
  islike = recommendedData.isLike;
  isplay = val;
   update();
  }

 void setCurrentArtistData(Artist artistData,val ) {
  currentMusicImage = artistData.ractangleImage;
  title = artistData.name;
  subTitle = "${artistData.followers} followers";
  islike = false;
  isplay = val;
  update();
 }

}
