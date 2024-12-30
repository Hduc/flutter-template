import 'controller/history_one_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/account_page/account_page.dart';
import 'package:ai_app_flutter/presentation/business_page/business_page.dart';
import 'package:ai_app_flutter/presentation/home_one_page/home_one_page.dart';
import 'package:ai_app_flutter/presentation/search_page/search_page.dart';
import 'package:ai_app_flutter/widgets/custom_bottom_bar.dart';
import 'package:ai_app_flutter/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistoryOneScreen extends GetWidget<HistoryOneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 163,
                    top: 14,
                    right: 163,
                    bottom: 14,
                  ),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "lbl_history".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWBd24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomSearchView(
                focusNode: FocusNode(),
                autofocus: true,
                controller: controller.searchController,
                hintText: "lbl_give_me".tr,
                margin: getMargin(
                  left: 20,
                  top: 8,
                  right: 20,
                ),
                prefix: Container(
                  margin: getMargin(
                    left: 16,
                    top: 12,
                    right: 16,
                    bottom: 12,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    48,
                  ),
                ),
                suffix: Padding(
                  padding: EdgeInsets.only(
                    right: getHorizontalSize(
                      15,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      controller.searchController.clear();
                    },
                    icon: Icon(
                      Icons.clear,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 24,
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
                        216,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 4,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_give_me2".tr,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'AirbnbCereal_W_Md',
                                fontWeight: FontWeight.w500,
                                letterSpacing: getHorizontalSize(
                                  0.16,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "msg_toggle_to_use_video".tr,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'AirbnbCereal_W_Md',
                                fontWeight: FontWeight.w500,
                                letterSpacing: getHorizontalSize(
                                  0.16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
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
                          287,
                        ),
                        margin: getMargin(
                          top: 7,
                          bottom: 4,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_give".tr,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'AirbnbCereal_W_Md',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: getHorizontalSize(
                                    0.16,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: "msg_this_is_better_to".tr,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'AirbnbCereal_W_Md',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: getHorizontalSize(
                                    0.16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
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
                width: getHorizontalSize(
                  374,
                ),
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        295,
                      ),
                      margin: getMargin(
                        top: 7,
                        right: 47,
                      ),
                      child: Text(
                        "msg_give_me_a_joke_about".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.16,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
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
                          288,
                        ),
                        margin: getMargin(
                          top: 7,
                          bottom: 4,
                        ),
                        child: Text(
                          "msg_linkedin_a_profile".tr,
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        width: getHorizontalSize(
                          286,
                        ),
                        margin: getMargin(
                          top: 7,
                          bottom: 7,
                        ),
                        child: Text(
                          "msg_give_me_i_m_having".tr,
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
                        left: 11,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        234,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 4,
                      ),
                      child: Text(
                        "msg_give_me_dropped".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyGray900.copyWith(
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
                        275,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 7,
                      ),
                      child: Text(
                        "msg_give_me_my_girlfriend".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHeadlineGray900,
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
