import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/service_detail_screen/models/service_detail_model.dart';

class ServiceDetailController extends GetxController {
  Rx<ServiceDetailModel> serviceDetailModelObj = ServiceDetailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
