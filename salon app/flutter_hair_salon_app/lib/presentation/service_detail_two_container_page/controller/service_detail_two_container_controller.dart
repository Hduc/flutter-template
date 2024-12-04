import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/service_detail_two_container_page/models/service_detail_two_container_model.dart';

class ServiceDetailTwoContainerController extends GetxController {
  ServiceDetailTwoContainerController(this.serviceDetailTwoContainerModelObj);

  Rx<ServiceDetailTwoContainerModel> serviceDetailTwoContainerModelObj;

  RxList<String> images = [
    "near1.png",
    "near2.png",
    "near3.png",
    "near4.png",
    "near5.png",
    "near6.png",
    "near7.png",
    "near8.png",
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
