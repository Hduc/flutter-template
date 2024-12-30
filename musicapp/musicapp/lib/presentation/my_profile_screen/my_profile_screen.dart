import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';

import 'controller/my_profile_controller.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  MyProfileController controller = Get.put(MyProfileController());

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
                      onTapArrowleft12();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_my_profile".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgEdit:ImageConstant.imgEditWhite,
                      margin: getMargin(
                          left: 20, top: 29, right: 20, bottom: 28),
                      onTap: () {
                        onTapEdit();
                      })
                ],
                styleType: Style.bgFill),
            body: Container(
              color: appTheme.bgColor,
                width: double.maxFinite,
                padding:
                    getPadding(left: 20, top: 44, right: 20, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(right: 115),
                          child: Row(children: [
                            CustomImageView(
                                svgPath:
                                   PrefUtils().getThemeData() == "primary"? ImageConstant.imgAvtar1DeepPurpleA200:ImageConstant.imgProfileDarkTheme,
                                height: getSize(80),
                                width: getSize(80)),
                            Padding(
                                padding: getPadding(
                                    left: 15, top: 14, bottom: 14),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_john_abram".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              theme.textTheme.titleLarge),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text(
                                              "msg_johnabram_gmail_com".tr,
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextThemeHelper
                                                  .bodyLargeOpenSansGray600
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.16))))
                                    ]))
                          ])),
                      Container(
                          width:double.infinity,
                          margin: getMargin(top: 40),
                          padding: getPadding(
                              left: 16,
                              top: 15,
                              right: 16,
                              bottom: 15),
                          decoration: AppDecoration.fill2.copyWith(
                              borderRadius: BorderRadiusStyle
                                  .roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_first_name".tr,
                                        overflow:
                                            TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextThemeHelper
                                            .bodyLargeGray700)),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_john".tr,
                                        overflow:
                                            TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme
                                            .textTheme.titleMedium))
                              ])),
                      Container(
                          width: getHorizontalSize(388),
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 16,
                              top: 15,
                              right: 16,
                              bottom: 15),
                          decoration: AppDecoration.fill2.copyWith(
                              borderRadius: BorderRadiusStyle
                                  .roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_last_name".tr,
                                        overflow:
                                            TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextThemeHelper
                                            .bodyLargeGray700)),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_abram".tr,
                                        overflow:
                                            TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme
                                            .textTheme.titleMedium))
                              ])),
                      Container(
                          width: getHorizontalSize(388),
                          margin: getMargin(top: 16, bottom: 5),
                          padding: getPadding(
                              left: 15,
                              top: 13,
                              right: 15,
                              bottom: 13),
                          decoration: AppDecoration.fill2.copyWith(
                              borderRadius: BorderRadiusStyle
                                  .roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text(
                                        "lbl_email_address".tr,
                                        overflow:
                                            TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextThemeHelper
                                            .bodyLargeGray700)),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Text(
                                        "msg_johnabram_gmail_com"
                                            .tr,
                                        overflow:
                                            TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme
                                            .textTheme.titleMedium))
                              ]))
                    ]))));
  }

  onTapArrowleft12() {
    Get.back();
  }

  onTapEdit() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}
