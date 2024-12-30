import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/our_services_one_screen/models/our_services_one_model.dart';

class OurServicesOneController extends GetxController {
  // Rx<OurServicesOneModel> ourServicesOneModelObj = OurServicesOneModel().obs;

  RxList<OurServicesOneModel> serviceList = [
    OurServicesOneModel("Hair Cut ", "Quiff + \$10.00 "),
    OurServicesOneModel("Hair Coloring", "Quiff + \$10.00 "),
    OurServicesOneModel("Hair Wash", "Aloo Vera Shampoo + \$6.60"),
    OurServicesOneModel("Shaving", "Thin Shaving + \$8.90"),
    OurServicesOneModel("Skin Care", "Aloo Vera Shampoo + \$6.60"),
    OurServicesOneModel("Hair Dryer", "Thin Shaving + \$8.90")
  ].obs;

  RxList<OurServicesOneModel> selectedList = <OurServicesOneModel>[].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
