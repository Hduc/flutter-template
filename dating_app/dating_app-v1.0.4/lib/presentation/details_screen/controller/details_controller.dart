import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/details_screen/models/details_model.dart';

class DetailsController extends GetxController {
  Rx<DetailsModel> detailsModelObj = DetailsModel().obs;

  Rx<int> sliderIndex = 0.obs;
  RxInt i = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
