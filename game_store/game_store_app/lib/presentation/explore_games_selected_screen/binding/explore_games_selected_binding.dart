import '../controller/explore_games_selected_controller.dart';
import 'package:get/get.dart';

class ExploreGamesSelectedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreGamesSelectedController());
  }
}
