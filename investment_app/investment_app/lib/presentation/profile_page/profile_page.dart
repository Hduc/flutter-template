import 'package:flutter/services.dart';
import 'package:investment_app/presentation/logout_dialog/logout_dialog.dart';
import 'package:investment_app/presentation/personal_information/personal.dart';
import '../about_dinvest/about_dinvest_screen.dart';
import '../edit_profile/edit_profile_screen.dart';
import '../help_center/help_center_screen.dart';
import '../logout_dialog/controller/logout_controller.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Future.delayed(const Duration(milliseconds: 1000), () {
          SystemNavigator.pop();
        });
        return false;
      },
      child: Scaffold(
        backgroundColor: ColorConstant.lightBlue900,
        body: Container(
          width: size.width,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup14,
                height: getVerticalSize(
                  251.00,
                ),
                width: getHorizontalSize(width),
                alignment: Alignment.topLeft,
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_account2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold3700.copyWith(
                          height: getVerticalSize(
                            1.01,
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 50,
                        width: 50,
                        onTap: () {
                          Get.to(EditProfileScreen());
                        },
                        variant: IconButtonVariant.FillWhiteA70014,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgEditWhiteA700,
                        ),
                      )
                    ],
                  ).paddingSymmetric(horizontal: 24),
                ),
              ),
              Padding(
                padding: getPadding(top: 20),
                child: Stack(
                  children: [
                    Container(
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL32,
                        ),
                        child: Padding(
                          padding: getPadding(top: 149),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: AppDecoration.fillGray100.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL32,
                                  ),
                                  child: Padding(
                                    padding: getPadding(top: 24),
                                    child: ListView(
                                      padding: getPadding(
                                          top: 0, left: 24, right: 24),
                                      physics: BouncingScrollPhysics(),
                                      children: [
                                        Text(
                                          "lbl_account2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold14Gray800
                                              .copyWith(
                                            height: getVerticalSize(
                                              1.19,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(PersonalInformation());
                                          },
                                          child: Container(
                                            margin: getMargin(
                                              top: 16,
                                            ),
                                            padding: getPadding(
                                              all: 16,
                                            ),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder24,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color:
                                                          ColorConstant.yellow700,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder20,
                                                      ),
                                                      child: Container(
                                                        height: getSize(
                                                          40.00,
                                                        ),
                                                        width: getSize(
                                                          40.00,
                                                        ),
                                                        padding: getPadding(
                                                          all: 8,
                                                        ),
                                                        decoration: AppDecoration
                                                            .fillYellow700
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder20,
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgUserWhiteA700,
                                                              height: getSize(
                                                                24.00,
                                                              ),
                                                              width: getSize(
                                                                24.00,
                                                              ),
                                                              alignment: Alignment
                                                                  .center,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 12,
                                                        top: 10,
                                                        bottom: 9,
                                                      ),
                                                      child: Text(
                                                        "lbl_personal_info".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith(
                                                          height: getVerticalSize(
                                                            1.24,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgArrowright,
                                                  height: getSize(
                                                    20.00,
                                                  ),
                                                  width: getSize(
                                                    20.00,
                                                  ),
                                                  margin: getMargin(
                                                    top: 10,
                                                    bottom: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.toNamed(
                                                AppRoutes.notificationScreen);
                                          },
                                          child: Container(
                                            margin: getMargin(
                                              top: 8,
                                            ),
                                            padding: getPadding(
                                              all: 16,
                                            ),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder24,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color:
                                                          ColorConstant.redA200,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder20,
                                                      ),
                                                      child: Container(
                                                        height: getSize(
                                                          40.00,
                                                        ),
                                                        width: getSize(
                                                          40.00,
                                                        ),
                                                        padding: getPadding(
                                                          all: 8,
                                                        ),
                                                        decoration: AppDecoration
                                                            .fillRedA200
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder20,
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgNotificationWhiteA700,
                                                              height: getSize(
                                                                24.00,
                                                              ),
                                                              width: getSize(
                                                                24.00,
                                                              ),
                                                              alignment: Alignment
                                                                  .center,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 12,
                                                        top: 10,
                                                        bottom: 9,
                                                      ),
                                                      child: Text(
                                                        "lbl_notification".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith(
                                                          height: getVerticalSize(
                                                            1.24,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgArrowright,
                                                  height: getSize(
                                                    20.00,
                                                  ),
                                                  width: getSize(
                                                    20.00,
                                                  ),
                                                  margin: getMargin(
                                                    top: 10,
                                                    bottom: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            top: 8,
                                          ),
                                          padding: getPadding(
                                            all: 16,
                                          ),
                                          decoration: AppDecoration.fillWhiteA700
                                              .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle.roundedBorder24,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Card(
                                                    clipBehavior: Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: EdgeInsets.all(0),
                                                    color: ColorConstant.blue300,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder20,
                                                    ),
                                                    child: Container(
                                                      height: getSize(
                                                        40.00,
                                                      ),
                                                      width: getSize(
                                                        40.00,
                                                      ),
                                                      padding: getPadding(
                                                        all: 8,
                                                      ),
                                                      decoration: AppDecoration
                                                          .fillBlue300
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder20,
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCheckmarkWhiteA700,
                                                            height: getSize(
                                                              24.00,
                                                            ),
                                                            width: getSize(
                                                              24.00,
                                                            ),
                                                            alignment:
                                                                Alignment.center,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 12,
                                                      top: 11,
                                                      bottom: 8,
                                                    ),
                                                    child: Text(
                                                      "lbl_security".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                        height: getVerticalSize(
                                                          1.24,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(
                                                  20.00,
                                                ),
                                                width: getSize(
                                                  20.00,
                                                ),
                                                margin: getMargin(
                                                  top: 10,
                                                  bottom: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            top: 8,
                                          ),
                                          padding: getPadding(
                                            all: 16,
                                          ),
                                          decoration: AppDecoration.fillWhiteA700
                                              .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle.roundedBorder24,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Card(
                                                    clipBehavior: Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: EdgeInsets.all(0),
                                                    color: ColorConstant
                                                        .deepPurpleA200,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder20,
                                                    ),
                                                    child: Container(
                                                      height: getSize(
                                                        40.00,
                                                      ),
                                                      width: getSize(
                                                        40.00,
                                                      ),
                                                      padding: getPadding(
                                                        all: 8,
                                                      ),
                                                      decoration: AppDecoration
                                                          .fillDeeppurpleA200
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder20,
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCloseWhiteA700,
                                                            height: getSize(
                                                              24.00,
                                                            ),
                                                            width: getSize(
                                                              24.00,
                                                            ),
                                                            alignment:
                                                                Alignment.center,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 12,
                                                      top: 11,
                                                      bottom: 8,
                                                    ),
                                                    child: Text(
                                                      "lbl_language".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                        height: getVerticalSize(
                                                          1.24,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(
                                                  20.00,
                                                ),
                                                width: getSize(
                                                  20.00,
                                                ),
                                                margin: getMargin(
                                                  top: 10,
                                                  bottom: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 26,
                                          ),
                                          child: Text(
                                            "lbl_settings".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold14Gray800
                                                .copyWith(
                                              height: getVerticalSize(
                                                1.19,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(HelpCenterScreen());
                                          },
                                          child: Container(
                                            margin: getMargin(
                                              top: 8,
                                            ),
                                            padding: getPadding(
                                              all: 16,
                                            ),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder24,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color:
                                                          ColorConstant.green400,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder20,
                                                      ),
                                                      child: Container(
                                                        height: getSize(
                                                          40.00,
                                                        ),
                                                        width: getSize(
                                                          40.00,
                                                        ),
                                                        padding: getPadding(
                                                          all: 8,
                                                        ),
                                                        decoration: AppDecoration
                                                            .fillGreen400
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder20,
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgQuestion,
                                                              height: getSize(
                                                                24.00,
                                                              ),
                                                              width: getSize(
                                                                24.00,
                                                              ),
                                                              alignment: Alignment
                                                                  .center,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 12,
                                                        top: 11,
                                                        bottom: 8,
                                                      ),
                                                      child: Text(
                                                        "lbl_help_center".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith(
                                                          height: getVerticalSize(
                                                            1.24,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgArrowright,
                                                  height: getSize(
                                                    20.00,
                                                  ),
                                                  width: getSize(
                                                    20.00,
                                                  ),
                                                  margin: getMargin(
                                                    top: 10,
                                                    bottom: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(AboutDinvestScreen());
                                          },
                                          child: Container(
                                            margin: getMargin(
                                              top: 8,
                                            ),
                                            padding: getPadding(
                                              all: 16,
                                            ),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder24,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color:
                                                          ColorConstant.blue700,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder20,
                                                      ),
                                                      child: Container(
                                                        height: getSize(
                                                          40.00,
                                                        ),
                                                        width: getSize(
                                                          40.00,
                                                        ),
                                                        padding: getPadding(
                                                          all: 8,
                                                        ),
                                                        decoration: AppDecoration
                                                            .fillBlue700
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder20,
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgWarning,
                                                              height: getSize(
                                                                24.00,
                                                              ),
                                                              width: getSize(
                                                                24.00,
                                                              ),
                                                              alignment: Alignment
                                                                  .center,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 12,
                                                        top: 10,
                                                        bottom: 9,
                                                      ),
                                                      child: Text(
                                                        "lbl_about_dinvest".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith(
                                                          height: getVerticalSize(
                                                            1.24,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgArrowright,
                                                  height: getSize(
                                                    20.00,
                                                  ),
                                                  width: getSize(
                                                    20.00,
                                                  ),
                                                  margin: getMargin(
                                                    top: 10,
                                                    bottom: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {

                                            //
                                          },
                                          child: Container(
                                            margin: getMargin(
                                              top: 8,
                                              bottom: 10,
                                            ),
                                            padding: getPadding(
                                              all: 16,
                                            ),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder24,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant.red400,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder20,
                                                      ),
                                                      child: Container(
                                                        height: getSize(
                                                          40.00,
                                                        ),
                                                        width: getSize(
                                                          40.00,
                                                        ),
                                                        padding: getPadding(
                                                          all: 8,
                                                        ),
                                                        decoration: AppDecoration
                                                            .fillRed400
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder20,
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowleftWhiteA700,
                                                              height: getSize(
                                                                24.00,
                                                              ),
                                                              width: getSize(
                                                                24.00,
                                                              ),
                                                              alignment: Alignment
                                                                  .center,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 12,
                                                        top: 11,
                                                        right: 188,
                                                        bottom: 8,
                                                      ),
                                                      child: Text(
                                                        "lbl_logout".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith(
                                                          height: getVerticalSize(
                                                            1.24,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox()
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )).paddingOnly(top: getVerticalSize(142)),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            height: getVerticalSize(108),
                            width: getVerticalSize(108),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(32)),
                              color: ColorConstant.whiteA700,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 20),
                                    blurRadius: 32,
                                    spreadRadius: -16,
                                    color: Color(0XFF1C1E28).withOpacity(0.12)),
                              ],
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgAvtar,
                              fit: BoxFit.fill,
                            ),
                          ).paddingOnly(
                              top: getVerticalSize(90),
                              left: getHorizontalSize(0)),
                          Padding(
                            padding: getPadding(top: 16),
                            child: Text(
                              "lbl_lorem".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold20Gray800.copyWith(
                                height: getVerticalSize(
                                  1.12,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "msg_jack_sparrow14_gmail_com".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14BlackA700.copyWith(
                                height: getVerticalSize(
                                  1.19,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
