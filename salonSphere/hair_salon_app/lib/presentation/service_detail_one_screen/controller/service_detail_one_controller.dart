import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/service_detail_one_screen/models/service_detail_one_model.dart';

class ServiceDetailOneController extends GetxController {
  Rx<ServiceDetailOneModel> serviceDetailOneModelObj =
      ServiceDetailOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
