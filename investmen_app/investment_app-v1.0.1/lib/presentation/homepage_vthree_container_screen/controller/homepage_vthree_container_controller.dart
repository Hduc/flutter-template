import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/homepage_vthree_container_screen/models/homepage_vthree_container_model.dart';
import 'package:investment_app/widgets/custom_bottom_bar.dart';

class HomepageVthreeContainerController extends GetxController {
  Rx<HomepageVthreeContainerModel> homepageVthreeContainerModelObj =
      HomepageVthreeContainerModel().obs;
  RxInt position = 0.obs;

  onChange(int index) {
    position.value = index;
    update();
  }
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
