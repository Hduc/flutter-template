// import 'controller/splash_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_salary_management_app/core/app_export.dart';
//
// // ignore_for_file: must_be_immutable
// class SplashScreen extends GetWidget<SplashController> {
//   const SplashScreen({Key? key})
//       : super(
//           key: key,
//         );
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: CustomImageView(
//               imagePath: ImageConstant.splashLogo,
//               height: 147.v,
//               width: 219.h,
//             ),
//           ),
//           // SizedBox(height: 13.v),
//           // Text(
//           //   "msg_salary_management".tr,
//           //   style: CustomTextStyles.headlineSmallBlack90001,
//           // ),
//           // SizedBox(height: 5.v),
//         ],
//       ),
//     );
//   }
//   s

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import '../../core/app_export.dart';
import '../home_screen_container_screen/controller/home_screen_container_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>     with SingleTickerProviderStateMixin {
  AnimationController? scaleController;
  Animation<double>? scaleAnimation;

  bool _a = false;
  bool _c = false;
  bool _d = false;
  bool _e = false;
  bool secondAnim = false;

  HomeScreenContainerController putHomeController = Get.put(HomeScreenContainerController());
  HomeScreenContainerController homeFindScreenController =
  Get.find<HomeScreenContainerController>();

  // List<LanguageData> langList = Data.getLanguage();
  // SelectLanguagesScreenController selectLanguagesScreenController1 =
  //     Get.put(SelectLanguagesScreenController());

  Color boxColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    init();
  }


  void init() async {
    await Future.delayed(Duration.zero);
    if (ModalRoute.of(context)!.settings.arguments != null) {
      HomeScreenContainerController homeController = Get.find<HomeScreenContainerController>();
      homeController.onChange(HomeScreenContainerScreen());
      Get.toNamed(AppRoutes.homeScreenContainerScreen);
      return;
    }

    Timer(Duration(milliseconds: 1000), () {
      setState(() {
        boxColor = theme.colorScheme.primary;
        _a = true;
      });
    });
    Timer(Duration(milliseconds: 1500), () {
      setState(() {
        boxColor = theme.colorScheme.primary;
        _c = true;
      });
    });
    Timer(Duration(milliseconds: 1700), () {
      setState(() {
        _e = true;
      });
    });
    Timer(Duration(milliseconds: 3200), () {
      secondAnim = true;

      scaleController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1000),
      )..forward();
      scaleAnimation =
          Tween<double>(begin: 0.0, end: 12).animate(scaleController!);

      setState(() {
        boxColor = Color(0xFFF2EDFC);
        _d = true;
      });
    });


        // print("isIntro---$isSignIn");

        // bool isSignIn = await PrefData.getIsSignIn();
        // bool isLogin = await PrefUtils.getLogin();
        // bool isIntro = await PrefUtils.getIntro();
        // bool isSelect = await PrefData.getSelectInterest();

        await Future.delayed(Duration.zero);

        Timer(const Duration(seconds: 3), () async {
          bool isLogin = await PrefUtils.getLogin();
          bool isIntro = await PrefUtils.getIntro();
          print("isLogin=============$isLogin");
          Future.delayed(
            const Duration(seconds: 3),() {
            if(isIntro) {
              Get.toNamed(AppRoutes.onboardingOneScreen,);
              // CommonMethod.sendToNextScreen(context, RoutesPath.onBoardingScreen);
            }
            else if (isLogin) {
              Get.toNamed(AppRoutes.logInWithDefualtScreen,);
              // CommonMethod.sendToNextScreen(context, RoutesPath.signUpScreen);
            } else {
              Get.toNamed(AppRoutes.homeScreenContainerScreen,);
              // CommonMethod.sendToNextScreen(context, RoutesPath.commonBottomBar);
            }
          },
          );
          // if (isIntro) {
          //   print("dsbfgdhsbghb");
          //   Get.toNamed(AppRoutes.onboardingOneScreen);
          // }
          // // else if (!isSignIn) {
          // //   // putHomeController.setIsSignIn(false);
          // //   Get.toNamed(Routes.homeScreenRoute);
          // // }
          // // else if (!isSelect) {
          // //   Constant.sendToNext(context, Routes.selectInterestRoute);
          // // }
          // else {
          //   Get.toNamed(AppRoutes.logInWithDefualtScreen,arguments: true);
          // }
        });

  }

  @override
  void dispose() {
    if (scaleController != null) {
      scaleController!.dispose();
    }

    super.dispose();
  }

  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: getColorStatusBar(whiteColor),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: _d ? 900 : 2500),
              curve: _d ? Curves.fastLinearToSlowEaseIn : Curves.elasticOut,
              height: _d
                  ? 0
                  : _a
                  ? _h / (kIsWeb ? 2.5 : 4.5)
                  : 20,
              width: 20,
            ),
            AnimatedContainer(
              duration: Duration(seconds: _c ? 2 : 0),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _d
                  ? _h
                  : _c
                  ? 150
                  : 20,
              width: _d
                  ? _w
                  : _c
                  ? 220
                  : 20,
              decoration: BoxDecoration(
                  color: !_d ? Colors.transparent : boxColor,
                  // shape: _d ? BoxShape.rectangle : BoxShape.circle,
                  borderRadius:
                  _d ? BorderRadius.only() : BorderRadius.circular(30.h)),
              child: secondAnim
                  ? Center(
                child: Container(
                  width: 100.h,
                  height: 100.v,
                  decoration: BoxDecoration(
                 shape: BoxShape.circle),
                  child: AnimatedBuilder(
                    animation: scaleAnimation!,
                    builder: (c, child) => Transform.scale(
                      scale: scaleAnimation!.value,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF2EDFC),
                        ),
                      ),
                    ),
                  ),
                ),
              )
                  : Center(
                child: _e
                    ? CustomImageView(
                  imagePath: ImageConstant.splashLogo,
                  width: 219.h,
                  height: 143.v,
                )
                    : SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}