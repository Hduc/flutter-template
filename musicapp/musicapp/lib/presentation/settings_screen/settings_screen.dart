import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';

import '../rate_us_screen/rate_us_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.back();
          return true;
        },
        child: Scaffold(
            backgroundColor: appTheme.bgColor,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,
                    margin: getMargin(left: 20, top: 29, bottom: 28),
                    onTap: () {
                      onTapArrowleft15();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_settings".tr),
                styleType: Style.bgFill),
            body: Container(
              color: appTheme.bgColor,
                width: double.maxFinite,
                padding:
                    getPadding(left: 20, top: 24, right: 20, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapRowfile();
                          },
                          child: Container(
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fill2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                        svgPath: ImageConstant.imgFile,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding:
                                            getPadding(left: 8, top: 2),
                                        child: Text("lbl_about_us".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.bodyLarge!.copyWith(
                                                  color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                                ))),
                                    Spacer(),
                                    CustomImageView(
                                        color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                        svgPath:
                                            ImageConstant.imgArrowright,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowichelp();
                          },
                          child: Container(
                              margin: getMargin(top: 16),
                              padding: getPadding(
                                  left: 16, top: 15, right: 16, bottom: 15),
                              decoration: AppDecoration.fill2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                        svgPath: ImageConstant.imgIchelp,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding:
                                            getPadding(left: 8, top: 3),
                                        child: Text("lbl_help".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.bodyLarge!.copyWith(
                                                  color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                                ))),
                                    Spacer(),
                                    CustomImageView(
                                        color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                        svgPath:
                                            ImageConstant.imgArrowright,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowstarone();
                          },
                          child: Container(
                              margin: getMargin(top: 16),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fill2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                        svgPath: ImageConstant.imgStar1,
                                        height: getSize(24),
                                        width: getSize(24),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(2))),
                                    Padding(
                                        padding:
                                            getPadding(left: 8, top: 2),
                                        child: Text("lbl_rate_us".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.bodyLarge!.copyWith(
                                                  color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                                ))),
                                    Spacer(),
                                    CustomImageView(
                                        color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                        svgPath:
                                            ImageConstant.imgArrowright,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowicfeedback();
                          },
                          child: Container(
                              margin: getMargin(top: 16, bottom: 5),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fill2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                        svgPath:
                                            ImageConstant.imgIcfeedback,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding:
                                            getPadding(left: 8, top: 2),
                                        child: Text("lbl_feedback".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                theme.textTheme.bodyLarge!.copyWith(
                                                  color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                                ))),
                                    Spacer(),
                                    CustomImageView(
                                        color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                        svgPath:
                                            ImageConstant.imgArrowright,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ])))
                    ]))));
  }

  onTapArrowleft15() {
    Get.back();
  }

  onTapRowfile() {
    Get.toNamed(
      AppRoutes.aboutUsScreen,
    );
  }

  onTapRowichelp() {
    Get.toNamed(
      AppRoutes.aboutUsOneScreen,
    );
  }

  onTapRowstarone() {

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding:
          EdgeInsets.zero,
          content: RateUsScreen(),
        );
      },
    );


    // Get.toNamed(
    //   AppRoutes.rateUsScreen,
    // );
  }

  onTapRowicfeedback() {
    Get.toNamed(
      AppRoutes.feedbackScreen,
    );
  }
}
