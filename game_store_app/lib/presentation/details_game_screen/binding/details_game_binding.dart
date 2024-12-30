import '../controller/details_game_controller.dart';
import 'package:get/get.dart';

class DetailsGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsGameController());
  }
}
