
import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController controller = Get.put(SplashController());
  @override
  void initState() {
    setSafeAreaColor();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.bgColor,
      body: Container(
        color: appTheme.bgColor,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgMusic,
              height: getVerticalSize(
                100,
              ),
              width: getHorizontalSize(
                68,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 17,
                bottom: 5,
              ),
              child: Text(
                "lbl_music_app".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextThemeHelper.titleLarge20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}










