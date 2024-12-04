import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/register_gender_screen/models/register_gender_model.dart';

class RegisterGenderController extends GetxController {
  Rx<RegisterGenderModel> registerGenderModelObj = RegisterGenderModel().obs;

  RxString radioGroup = "".obs;
int genderID = 1;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setGender(int i) {
    genderID = i;
    update();
  }
}
