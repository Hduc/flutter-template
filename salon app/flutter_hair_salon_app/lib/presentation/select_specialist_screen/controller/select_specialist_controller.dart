import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/select_specialist_screen/models/select_specialist_model.dart';

class SelectSpecialistController extends GetxController {
  Rx<SelectSpecialistModel> selectSpecialistModelObj =
      SelectSpecialistModel().obs;


  RxInt selectedIndex = 0.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
