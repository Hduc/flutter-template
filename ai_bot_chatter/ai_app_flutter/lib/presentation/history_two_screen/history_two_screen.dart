import 'controller/history_two_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/account_page/account_page.dart';
import 'package:ai_app_flutter/presentation/business_page/business_page.dart';
import 'package:ai_app_flutter/presentation/home_one_page/home_one_page.dart';
import 'package:ai_app_flutter/presentation/search_page/search_page.dart';
import 'package:ai_app_flutter/widgets/custom_bottom_bar.dart';
import 'package:ai_app_flutter/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistoryTwoScreen extends GetWidget<HistoryTwoController> {
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
                hintText: "lbl_hello".tr,
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
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgSpalash,
                height: getSize(
                  129,
                ),
                width: getSize(
                  129,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Text(
                  "lbl_not_found".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAirbnbCerealWXBd20,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  324,
                ),
                margin: getMargin(
                  left: 44,
                  top: 19,
                  right: 44,
                  bottom: 203,
                ),
                child: Text(
                  "msg_we_re_sorry_the".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtBodyGray900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.16,
                    ),
                  ),
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
