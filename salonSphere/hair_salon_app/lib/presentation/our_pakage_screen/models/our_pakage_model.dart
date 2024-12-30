import 'package:get/get.dart';
import 'ourpakage_item_model.dart';

/// This class defines the variables used in the [our_pakage_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OurPakageModel {
  RxList<OurpakageItemModel> ourpakageItemList = <OurpakageItemModel>[
    OurpakageItemModel("package1.png", "Haircut & Hairstyle"),
    OurpakageItemModel("package2.png", "Beauty Make up"),
    OurpakageItemModel("package3.png", "Beauty Make up"),
    OurpakageItemModel("package4.png", "Hair Coloring"),
    OurpakageItemModel("package5.png", "Beauty Make up"),
    OurpakageItemModel("package6.png", "Haircut & shaving"),
    OurpakageItemModel("package7.png", "Haircut & Hairstyle"),
    OurpakageItemModel("package8.png", "Hair Coloring"),
  ].obs;
}
