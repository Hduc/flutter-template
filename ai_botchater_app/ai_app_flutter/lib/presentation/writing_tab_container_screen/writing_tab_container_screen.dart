import 'controller/writing_tab_container_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/account_page/account_page.dart';
import 'package:ai_app_flutter/presentation/business_page/business_page.dart';
import 'package:ai_app_flutter/presentation/home_one_page/home_one_page.dart';
import 'package:ai_app_flutter/presentation/search_page/search_page.dart';
import 'package:ai_app_flutter/presentation/writing_page/writing_page.dart';
import 'package:ai_app_flutter/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class WritingTabContainerScreen
    extends GetWidget<WritingTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
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
              Container(
                height: getVerticalSize(
                  40,
                ),
                width: getHorizontalSize(
                  394,
                ),
                margin: getMargin(
                  top: 8,
                ),
                child: TabBar(
                  controller: controller.tabviewController,
                  labelColor: ColorConstant.whiteA700,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'AirbnbCereal_W_Bd',
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelColor: ColorConstant.black900,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'AirbnbCereal_W_Md',
                    fontWeight: FontWeight.w500,
                  ),
                  indicator: BoxDecoration(
                    color: ColorConstant.black900,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16,
                      ),
                    ),
                    border: Border.all(
                      color: ColorConstant.black900,
                      width: getHorizontalSize(
                        1,
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        padding: getPadding(
                          left: 16,
                          top: 8,
                          right: 16,
                          bottom: 8,
                        ),
                        decoration: AppDecoration.outlineGray400.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgList1,
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
                                top: 1,
                                bottom: 1,
                              ),
                              child: Text(
                                "lbl_all".tr,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: getPadding(
                          left: 16,
                          top: 7,
                          right: 16,
                          bottom: 7,
                        ),
                        decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgWritinghandgesture,
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
                                top: 3,
                              ),
                              child: Text(
                                "lbl_writing".tr,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
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
                                top: 1,
                                bottom: 1,
                              ),
                              child: Text(
                                "lbl_creative".tr,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
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
                              ),
                              child: Text(
                                "lbl_personal".tr,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  628,
                ),
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    WritingPage(),
                    WritingPage(),
                    WritingPage(),
                    WritingPage(),
                    WritingPage(),
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
