import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/home_screen_container1_screen/models/home_screen_container1_model.dart';
import 'package:game_store_app/widgets/custom_bottom_bar.dart';

class HomeScreenContainer1Controller extends GetxController {
  Rx<HomeScreenContainer1Model> homeScreenContainer1ModelObj =
      HomeScreenContainer1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
