import 'package:carousel_slider/carousel_slider.dart';
import 'package:musicapp/core/app_export.dart';

import '../../home_screen_page/models/home_screen_model.dart';
import '../../home_screen_page/models/list18271_item_model.dart';

/// A controller class for the MyLibaryArtistPage.
///
/// This class manages the state of the MyLibaryArtistPage, including the
/// current myLibaryArtistModelObj
class MyLibaryArtistController extends GetxController {
  List<Artist> artistData = HomeScreenModel.getArtistData();
  int focusedIndex = 1;
  CarouselSliderController  carouselController = CarouselSliderController ();
  void setFocusedIndex(int index) {
    focusedIndex = index;
    carouselController.animateToPage(index);
    update();
  }



}
