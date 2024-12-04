import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/home_page_screen/controller/home_page_controller.dart';
import 'package:hair_salon_app/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;
  HomePageController homePageController = Get.put(HomePageController());

  @override
  void onReady() {
    super.onReady();
    _getIsFirst();
  }

  _getIsFirst() async {
    bool isLogin = await PrefUtils.getIsLogin();
    bool isIntro = await PrefUtils.getIsIntro();
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (isIntro) {
        Get.offNamed(
          AppRoutes.onboadingOneScreen,
        );
      } else {
        if (isLogin) {
          Get.offNamed(
            AppRoutes.logInScreen,
          );
        } else {
          homePageController.selectedIndex.value = 0;
          Get.offNamed(
            AppRoutes.homePageScreen,
          );
        }
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
