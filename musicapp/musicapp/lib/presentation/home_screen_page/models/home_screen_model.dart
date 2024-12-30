import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import 'list18271_item_model.dart';
import 'listellipse2143_item_model.dart';

/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel {
  // Rx<List<List18271ItemModel>> list18271ItemList =
  //     Rx(List.generate(3, (index) => List18271ItemModel()));

  Rx<List<Listellipse2143ItemModel>> listellipse2143ItemList =
      Rx(List.generate(4, (index) => Listellipse2143ItemModel()));


  static List<SliderData> getSliderData(){
   return [
    SliderData(ImageConstant.imgSlider1st,"The music events"),
    SliderData(ImageConstant.imgSlider2nd,"The music events"),
    SliderData(ImageConstant.imgSlider3rd,"The music events"),
   ];}

  static List<List18271ItemModel> list18271ItemList(){
    return [
      List18271ItemModel(ImageConstant.imgRecentlyPlayed1st,"Number likh","Tonny kakkar",false),
      List18271ItemModel(ImageConstant.imgRecentlyPlayed2nd,"Telephones","Tonny kakkar",false),
      List18271ItemModel(ImageConstant.imgRecentlyPlayed3rd,"Lagaan na jaye","Aamir khan",false),
      List18271ItemModel(ImageConstant.imgRecentlyPlayed4th,"Woh pehli dafa","Pratik javde",false),
      List18271ItemModel(ImageConstant.imgRecentlyPlayed5th,"Telephones","Imagine dragons, jid...",false),
      List18271ItemModel(ImageConstant.imgRecentlyPlayed6th,"Number likh","Imagine dragons, jid...",false),
    ];}



  static List<RecommendedData> getReccomendedData(){
    return [
      RecommendedData(ImageConstant.imgRecommended1st,"One day love","Sundeep sokhi",false),
      RecommendedData(ImageConstant.imgRecommended2nd,"Rab vicholla","Balraj’s",false),
      RecommendedData(ImageConstant.imgRecommended3rd,"Fida this eid","Sonu Nigam",false),
      RecommendedData(ImageConstant.imgRecommended4th,"Tu hi wajah","Pradeep pandey",false),
      RecommendedData(ImageConstant.imgRecommended5th,"Telephones","Imagine dragons, jid...",false),
      RecommendedData(ImageConstant.imgRecommended6th,"Number likh","Imagine dragons, jid...",false),
    ];}

  static List<Artist> getArtistData(){
    return[
      Artist(ImageConstant.imgArtist1st,ImageConstant.imgArtist1stRact,"Domatic fike","1.2m"),
      Artist(ImageConstant.imgArtist2nd,ImageConstant.imgArtist2ndRact,"Weecked","248k"),
      Artist(ImageConstant.imgArtist3rd,ImageConstant.imgArtist3rdRact,"Future ","15k"),
      Artist(ImageConstant.imgArtist4th,ImageConstant.imgArtist4thRact,"Louis vuitton","1.3m"),
      Artist(ImageConstant.imgArtist5th,ImageConstant.imgArtist5thRact,"Ebay","15.2m"),
      Artist(ImageConstant.imgArtist6th,ImageConstant.imgArtist6thRact,"Louis vuitton","3m"),
      Artist(ImageConstant.imgArtist7th,ImageConstant.imgArtist7thRact,"Starbucks","1.6k"),
      Artist(ImageConstant.imgArtist8th,ImageConstant.imgArtist8thRact,"Gillette","1.8k"),
      Artist(ImageConstant.imgArtist9th,ImageConstant.imgArtist1stRact,"Eduardo","303.2k"),
      Artist(ImageConstant.imgArtist10th,ImageConstant.imgArtist2ndRact,"Arthur","302.1k"),
      Artist(ImageConstant.imgArtist11th,ImageConstant.imgArtist3rdRact,"Aubrey","3.2m"),
      Artist(ImageConstant.imgArtist12th,ImageConstant.imgArtist4thRact,"Philip","159.2k"),
      Artist(ImageConstant.imgArtist13th,ImageConstant.imgArtist5thRact,"Domatic fike","1.2m"),
      Artist(ImageConstant.imgArtist14th,ImageConstant.imgArtist6thRact,"Ebay","1.0m"),
      Artist(ImageConstant.imgArtist15th,ImageConstant.imgArtist7thRact,"Starbucks","1.8m"),

    ];}

}
