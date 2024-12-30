import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/explore_games_screen/models/explore_games_model.dart';
import 'package:game_store_app/presentation/home_screen_container_page/models/listgroup4152_item_model.dart';

class ExploreGamesController extends GetxController {
  Rx<ExploreGamesModel> exploreGamesModelObj = ExploreGamesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setGame(Listgroup4152ItemModel model) {
    if(model.isselected!){
      model.isselected = false;
    }
    else{
      model.isselected = true;
    }
    update();
  }
}
