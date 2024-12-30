import 'package:hair_salon_app/core/app_export.dart';

class NearbyLocationOneController extends GetxController {
  // Rx<NearbyLocationOneModel> nearbyLocationOneModelObj =
  //     NearbyLocationOneModel().obs;

  RxList<String> categoryList = ["All", "Haircut", "Make up", "Mani cure"].obs;
  RxList<String> ratingList = ["5.0", "4.8", "4.2", "3.5"].obs;
  RxList<String> distanceList = ["< 1km", "1-6km", "6-9km", "> 10km"].obs;

  RxInt categoryIndex = 0.obs;
  RxInt ratingIndex = 0.obs;
  RxInt distanceindex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
