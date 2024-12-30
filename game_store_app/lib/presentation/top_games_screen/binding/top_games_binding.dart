import '../controller/top_games_controller.dart';
import 'package:get/get.dart';

class TopGamesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopGamesController());
  }
}
