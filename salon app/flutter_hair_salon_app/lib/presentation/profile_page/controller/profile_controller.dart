import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/profile_page/models/profile_model.dart';

class ProfileController extends GetxController {
  ProfileController(this.profileModelObj);

  Rx<ProfileModel> profileModelObj;

  Rx<bool> isCheckbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
