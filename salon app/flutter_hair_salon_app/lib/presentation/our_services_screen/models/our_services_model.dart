import 'package:get/get.dart';
import 'ourservices_item_model.dart';

/// This class defines the variables used in the [our_services_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OurServicesModel {
  // Rx<List<OurservicesItemModel>> ourservicesItemList =
  //     Rx(List.generate(8, (index) => OurservicesItemModel()));
  RxList<OurservicesItemModel> ourservicesItemList = [
    OurservicesItemModel("Hair Cut ", "44 Types", "service1.png"),
    OurservicesItemModel("Shaving", "22 Types", "service2.png"),
    OurservicesItemModel("Hair Coloring", "12 Types", "service3.png"),
    OurservicesItemModel("Hair Wash", "8 Types", "service4.png"),
    OurservicesItemModel("Skin Care", "12 Types", "service5.png"),
    OurservicesItemModel("Hair Dryer", "4 Types", "service6.png"),
    OurservicesItemModel("Face Make up", "18 Types", "service7.png"),
    OurservicesItemModel("Hair care", "8 Types", "service8.png"),
  ].obs;
}
