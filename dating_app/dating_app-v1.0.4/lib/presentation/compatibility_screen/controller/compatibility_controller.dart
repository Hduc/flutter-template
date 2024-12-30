import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/compatibility_screen/models/compatibility_model.dart';

/// A controller class for the CompatibilityScreen.
///
/// This class manages the state of the CompatibilityScreen, including the
/// current compatibilityModelObj
class CompatibilityController extends GetxController {
  RxInt sizeIndex = 0.obs;
  RxBool productPressed = false.obs;

  List<CompatibilityModel> compatibilityList =[
    CompatibilityModel(
      image: ImageConstant.com1,
      text: 'Long-term partner'
    ),
    CompatibilityModel(
        image: ImageConstant.com2,
        text: 'Long-term,open to short'
    ),CompatibilityModel(
        image: ImageConstant.com3,
        text: 'Long-term,open to short'
    ),
    CompatibilityModel(
        image: ImageConstant.com4,
        text: 'New friends'
    ),
    CompatibilityModel(
        image: ImageConstant.com5,
        text: 'Short-term fun'
    ),
    CompatibilityModel(
        image: ImageConstant.com6,
        text: 'Still figuring it out'
    ),

  ];


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
