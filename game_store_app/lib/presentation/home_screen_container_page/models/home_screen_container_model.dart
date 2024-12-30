import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/home_screen_container_page/models/recomended_game_model.dart';
import 'package:game_store_app/presentation/home_screen_container_page/models/top_games_model.dart';
import 'package:get/get.dart';
import 'coming_soon_game_model.dart';
import 'sliderrectangle_item_model.dart';
import 'listgroup4152_item_model.dart';
import 'listrectangle29_item_model.dart';

/// This class defines the variables used in the [home_screen_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenContainerModel {
  // Rx<List<SliderrectangleItemModel>> sliderrectangleItemList =
  //     Rx(List.generate(3, (index) => SliderrectangleItemModel()));

  // Rx<List<Listgroup4152ItemModel>> listgroup4152ItemList =
  //     Rx(List.generate(6, (index) => Listgroup4152ItemModel()));

  static List<Listgroup4152ItemModel> getCAtegory(){
    return [
      Listgroup4152ItemModel(ImageConstant.actionIcon,"Action",false),
      Listgroup4152ItemModel(ImageConstant.adventureIcon,"Adventure",false),
      Listgroup4152ItemModel(ImageConstant.arcadeIcon,"Arcade",false),
      Listgroup4152ItemModel(ImageConstant.boardIcon,"Board",false),
      Listgroup4152ItemModel(ImageConstant.cardIcon,"Card",false),
      Listgroup4152ItemModel(ImageConstant.casinoIcon,"Casino",false),
      Listgroup4152ItemModel(ImageConstant.puzzleIcon,"Puzzle",false),
      Listgroup4152ItemModel(ImageConstant.musicIcon,"Music",false),
      Listgroup4152ItemModel(ImageConstant.educationalIcon,"Educational",false),
      Listgroup4152ItemModel(ImageConstant.racingIcon,"Racing",false),
      Listgroup4152ItemModel(ImageConstant.roleplayingIcon,"Role playing",false),
      Listgroup4152ItemModel(ImageConstant.sportsIcon,"Sports",false),
      Listgroup4152ItemModel(ImageConstant.drivingIcon,"Driving",false),
      Listgroup4152ItemModel(ImageConstant.adventure2ndIcon,"Adventure",false),
      Listgroup4152ItemModel(ImageConstant.platformIcon,"Plat form",false),
    ];
  }

  static List<TopGames> getTopGames(){
    return [
      TopGames(ImageConstant.imgTopgame1st,"Pubg mobile","Multi player, adventure","\$69.00","4.5"),
      TopGames(ImageConstant.imgTopgame2nd,"Kids Club","Single player, adventure","\$00.00","4.3"),
      TopGames(ImageConstant.imgTopgame3rd,"Powar full","Adventure","\$50.00","4.4"),
      TopGames(ImageConstant.imgTopgame4th,"Mini militia","Multi player, adventure","\$64.00","4.3"),
      TopGames(ImageConstant.imgTopgame5th,"Recident","Aadventure","\$15.00","4.1"),
      TopGames(ImageConstant.imgTopgame6th,"The GTA powar","Single player, adventure","\$12.00","4.0"),
      TopGames(ImageConstant.imgTopgame7th,"War games","Mingle player, adventure","\$12.00","4.0"),
    ];
  }

  static List<RecomendedData> getRecomendedGames(){
    return [
      RecomendedData(ImageConstant.imgRecommended1st,"The robot powar..","Multi player, adventure","\$69.00","4.5"),
      RecomendedData(ImageConstant.imgRecommended2nd,"Candy crush saga","Single player, adventure","\$00.00","4.3"),
      RecomendedData(ImageConstant.imgRecommended3rd,"Cash of clans","Single player, adventure","\$50.00","4.4"),
      RecomendedData(ImageConstant.imgRecommended4th,"Mini militia","Multi player, adventure","\$64.00","4.3"),
      RecomendedData(ImageConstant.imgRecommended5th,"Dr.driving","Single player, adventure","\$15.00","4.1"),
      RecomendedData(ImageConstant.imgRecommended6th,"The GTA powar","Single player, adventure","\$12.00","4.0"),
    ];
  }
  static List<ComingSoonGames> getComingSoonGames(){
    return [
      ComingSoonGames(ImageConstant.imgComingSoon1st,"Subway suffers","Action"),
      ComingSoonGames(ImageConstant.imgComingSoon2nd,"Mighty battles","Simulation"),
      ComingSoonGames(ImageConstant.imgComingSoon3rd,"Fortnite","Single player"),
      ComingSoonGames(ImageConstant.imgComingSoon4th,"Head ball 2","adventure"),
      ComingSoonGames(ImageConstant.imgComingSoon5th,"Super mario","Single player"),
      ComingSoonGames(ImageConstant.imgComingSoon6th,"Angry bird","Adventure"),
      ComingSoonGames(ImageConstant.imgComingSoon7th,"Free fire","Adventure"),
      ComingSoonGames(ImageConstant.imgComingSoon8th,"Shiba etenity","Single player"),
      ComingSoonGames(ImageConstant.imgComingSoon9th,"Candy crush saga","Single player, adventure"),
    ];
  }
static List<SliderrectangleItemModel> getSlider(){
    return [
      SliderrectangleItemModel(ImageConstant.imgSlider1st,"Gaming winner chellenge"),
      SliderrectangleItemModel(ImageConstant.imgSlider2nd,"Pubg winner chellenge"),
      SliderrectangleItemModel(ImageConstant.imgSlider3rd,"Fire city winner chellenge"),
    ];
}
  Rx<List<Listrectangle29ItemModel>> listrectangle29ItemList =
      Rx(List.generate(2, (index) => Listrectangle29ItemModel()));
}
