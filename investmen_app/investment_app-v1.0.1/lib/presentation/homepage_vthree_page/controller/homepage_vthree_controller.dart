import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/homepage_vthree_page/models/homepage_vthree_model.dart';

class HomepageVthreeController extends GetxController {
  HomepageVthreeController(this.homepageVthreeModelObj);

  Rx<HomepageVthreeModel> homepageVthreeModelObj;
int id = 1;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setButtonId(int i) {
    id = i;
    update();
  }
}
