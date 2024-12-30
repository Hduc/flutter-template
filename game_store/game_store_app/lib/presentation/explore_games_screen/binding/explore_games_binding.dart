import '../controller/explore_games_controller.dart';
import 'package:get/get.dart';

class ExploreGamesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreGamesController());
  }
}
