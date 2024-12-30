import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/your_card_screen/models/your_card_model.dart';

class YourCardController extends GetxController {
  Rx<YourCardModel> yourCardModelObj = YourCardModel().obs;
bool isNavigateToSetting = false;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setNavigationIsSetting(bool val) {
    isNavigateToSetting = val;
    update();
  }
}
