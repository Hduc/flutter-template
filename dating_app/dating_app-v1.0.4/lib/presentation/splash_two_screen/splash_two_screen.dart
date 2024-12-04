import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'controller/splash_two_controller.dart';

class SplashTwoScreen extends GetWidget<SplashTwoController> {
  const SplashTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarIconBrightness:Brightness.dark));
    return Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
            width: double.maxFinite,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgGroup,
                      height: getVerticalSize(100.h),
                      width: getHorizontalSize(134.h)),
                  Padding(
                      padding: getPadding(top: 24.h,),
                      child: Text("lbl_dating_app".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.displaySmallWhiteA700))
                ])));
  }
}
