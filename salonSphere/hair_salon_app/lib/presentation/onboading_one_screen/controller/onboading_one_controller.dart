import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/onboading_one_screen/models/onboading_one_model.dart';

class OnboadingOneController extends GetxController {
  // Rx<OnboadingOneModel> onboadingOneModelObj = OnboadingOneModel().obs;
  RxList<OnboadingOneModel> onboadingOneModelObj = <OnboadingOneModel>[
    OnboadingOneModel(ImageConstant.imgEllipse1, "msg_find_barbers_and".tr,
        "msg_it_was_popularised".tr),
    OnboadingOneModel(ImageConstant.imgEllipse1320x320,
        "msg_book_your_favorite".tr, "msg_it_was_popularised".tr),
    OnboadingOneModel(ImageConstant.imgEllipse11, "msg_come_be_handsome".tr,
        "msg_it_was_popularised".tr),
  ].obs;

  RxInt position = 0.obs;

  onChange(RxInt value) {
    position.value = value.value;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
