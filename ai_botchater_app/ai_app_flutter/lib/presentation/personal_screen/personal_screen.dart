import 'controller/personal_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/account_page/account_page.dart';
import 'package:ai_app_flutter/presentation/business_page/business_page.dart';
import 'package:ai_app_flutter/presentation/home_one_page/home_one_page.dart';
import 'package:ai_app_flutter/presentation/search_page/search_page.dart';
import 'package:ai_app_flutter/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PersonalScreen extends GetWidget<PersonalController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 131,
                    top: 16,
                    right: 131,
                    bottom: 16,
                  ),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_ai_assistants".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAirbnbCerealWBd24,
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: getPadding(
                  top: 8,
                ),
                child: IntrinsicWidth(
                  child: Container(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            127,
                          ),
                          padding: getPadding(
                            left: 13,
                            top: 8,
                            right: 13,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.outlineGray400.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgBusinessidea1,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                ),
                                child: Text(
                                  "lbl_creative".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtBody.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            130,
                          ),
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            left: 13,
                            top: 8,
                            right: 13,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.outlineGray400.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgJobsecurity1,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 11,
                                ),
                                child: Text(
                                  "lbl_business".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtBody.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle392,
                          height: getVerticalSize(
                            40,
                          ),
                          width: getHorizontalSize(
                            8,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            144,
                          ),
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            left: 13,
                            top: 7,
                            right: 13,
                            bottom: 7,
                          ),
                          decoration: AppDecoration.outlineGray400.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgDeveloper1,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 11,
                                  top: 3,
                                ),
                                child: Text(
                                  "lbl_developer".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            133,
                          ),
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 8,
                            right: 16,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPersonalinformation,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 11,
                                  top: 1,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_personal".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadlineWhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle39240x81,
                          height: getVerticalSize(
                            40,
                          ),
                          width: getHorizontalSize(
                            81,
                          ),
                          margin: getMargin(
                            left: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 20,
                    top: 24,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration: AppDecoration.fillIndigo5001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBirthdaycake1,
                              height: getSize(
                                86,
                              ),
                              width: getSize(
                                86,
                              ),
                              margin: getMargin(
                                top: 13,
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 16,
                              ),
                              padding: getPadding(
                                left: 52,
                                top: 11,
                                right: 52,
                                bottom: 11,
                              ),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                    ),
                                    child: Text(
                                      "lbl_birthday".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 16,
                        ),
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration: AppDecoration.fillOrange50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGiftbox1,
                              height: getSize(
                                86,
                              ),
                              width: getSize(
                                86,
                              ),
                              margin: getMargin(
                                top: 13,
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 16,
                              ),
                              padding: getPadding(
                                left: 51,
                                top: 11,
                                right: 51,
                                bottom: 11,
                              ),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                    ),
                                    child: Text(
                                      "lbl_apology".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 16,
                  bottom: 5,
                ),
                padding: getPadding(
                  all: 4,
                ),
                decoration: AppDecoration.fillRed100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgChristmasinvitationcard,
                      height: getSize(
                        86,
                      ),
                      width: getSize(
                        86,
                      ),
                      margin: getMargin(
                        top: 12,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 17,
                      ),
                      padding: getPadding(
                        left: 48,
                        top: 13,
                        right: 48,
                        bottom: 13,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_invitation".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtHeadline,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Chat:
        return AppRoutes.homeOnePage;
      case BottomBarEnum.Aiassistants:
        return AppRoutes.businessPage;
      case BottomBarEnum.History:
        return AppRoutes.searchPage;
      case BottomBarEnum.Account:
        return AppRoutes.accountPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeOnePage:
        return HomeOnePage();
      case AppRoutes.businessPage:
        return BusinessPage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.accountPage:
        return AccountPage();
      default:
        return DefaultWidget();
    }
  }
}
