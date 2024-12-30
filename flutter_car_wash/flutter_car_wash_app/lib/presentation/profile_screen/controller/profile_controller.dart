import 'package:carwash_app/core/app_export.dart';
import 'package:carwash_app/presentation/profile_screen/models/profile_model.dart';

class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;
bool  isNavigatInProfile = false;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setPamentMethodNavigation(bool val) {
    isNavigatInProfile = val;
    update();
  }
}
