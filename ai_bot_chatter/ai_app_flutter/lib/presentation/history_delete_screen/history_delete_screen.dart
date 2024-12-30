import 'controller/history_delete_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/account_page/account_page.dart';
import 'package:ai_app_flutter/presentation/business_page/business_page.dart';
import 'package:ai_app_flutter/presentation/home_one_page/home_one_page.dart';
import 'package:ai_app_flutter/presentation/search_page/search_page.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_image.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_title.dart';
import 'package:ai_app_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_app_flutter/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistoryDeleteScreen extends GetWidget<HistoryDeleteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(
        height: getVerticalSize(
          65,
        ),
        centerTitle: true,
        title: AppbarTitle(
          text: "lbl_history".tr,
        ),
        actions: [
          AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            svgPath: ImageConstant.imgSearch,
            margin: getMargin(
              left: 20,
              top: 21,
              right: 20,
              bottom: 20,
            ),
          ),
        ],
        styleType: Style.bgFillWhiteA700,
      ),
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 8,
            bottom: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: getMargin(
                  left: 20,
                  right: 20,
                ),
                padding: getPadding(
                  top: 10,
                  bottom: 10,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        263,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 7,
                      ),
                      child: Text(
                        "msg_i_weight_70_kg".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 42,
                      ),
                      child: Text(
                        "lbl_9_41_pm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtFootnote,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 16,
                  right: 20,
                ),
                padding: getPadding(
                  left: 16,
                  top: 10,
                  right: 16,
                  bottom: 10,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        width: getHorizontalSize(
                          271,
                        ),
                        margin: getMargin(
                          top: 7,
                          bottom: 4,
                        ),
                        child: Text(
                          "msg_give_me_a_recipe2".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBody.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 17,
                        top: 42,
                      ),
                      child: Text(
                        "lbl_10_06_pm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtFootnote,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 16,
                  right: 20,
                ),
                padding: getPadding(
                  left: 16,
                  top: 10,
                  right: 16,
                  bottom: 10,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        233,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 4,
                      ),
                      child: Text(
                        "msg_give_is_invitation".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 42,
                      ),
                      child: Text(
                        "lbl_11_03_pm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtFootnote,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: getMargin(
                  top: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: getVerticalSize(
                        80,
                      ),
                      width: getHorizontalSize(
                        331,
                      ),
                      padding: getPadding(
                        left: 12,
                        top: 10,
                        right: 12,
                        bottom: 10,
                      ),
                      decoration: AppDecoration.fillGray100,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: getHorizontalSize(
                                267,
                              ),
                              margin: getMargin(
                                top: 7,
                              ),
                              child: Text(
                                "msg_linkedin_a_profile2".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtBody.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: getPadding(
                                right: 38,
                              ),
                              child: Text(
                                "lbl_9_18_pm".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtFootnote,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        80,
                      ),
                      width: getHorizontalSize(
                        82,
                      ),
                      padding: getPadding(
                        all: 30,
                      ),
                      decoration: AppDecoration.fillRed600,
                      child: Stack(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgIcdelete,
                            height: getSize(
                              20,
                            ),
                            width: getSize(
                              20,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 16,
                  right: 20,
                ),
                padding: getPadding(
                  left: 16,
                  top: 10,
                  right: 16,
                  bottom: 10,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        241,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 7,
                      ),
                      child: Text(
                        "msg_the_my_18_th_birthday".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 42,
                      ),
                      child: Text(
                        "lbl_9_41_pm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtFootnote,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 16,
                  right: 20,
                ),
                padding: getPadding(
                  top: 10,
                  bottom: 10,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        270,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 7,
                      ),
                      child: Text(
                        "msg_i_am_droped_with".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 42,
                      ),
                      child: Text(
                        "lbl_9_41_pm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtFootnote,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 16,
                  right: 20,
                  bottom: 4,
                ),
                padding: getPadding(
                  left: 16,
                  top: 10,
                  right: 16,
                  bottom: 10,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        width: getHorizontalSize(
                          288,
                        ),
                        margin: getMargin(
                          top: 7,
                          bottom: 7,
                        ),
                        child: Text(
                          "msg_i_dropped_my_girlfriend2".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyGray900.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 9,
                        top: 42,
                      ),
                      child: Text(
                        "lbl_9_41_pm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtFootnote,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
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
