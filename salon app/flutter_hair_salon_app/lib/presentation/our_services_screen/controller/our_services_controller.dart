import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/our_services_screen/models/our_services_model.dart';

class OurServicesController extends GetxController {
  Rx<OurServicesModel> ourServicesModelObj = OurServicesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
