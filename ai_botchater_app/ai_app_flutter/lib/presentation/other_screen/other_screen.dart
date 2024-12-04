import '../other_screen/widgets/other_item_widget.dart';
import 'controller/other_controller.dart';
import 'models/other_item_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/account_page/account_page.dart';
import 'package:ai_app_flutter/presentation/business_page/business_page.dart';
import 'package:ai_app_flutter/presentation/home_one_page/home_one_page.dart';
import 'package:ai_app_flutter/presentation/search_page/search_page.dart';
import 'package:ai_app_flutter/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OtherScreen extends GetWidget<OtherController> {
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: getPadding(
                  top: 8,
                  right: 1,
                ),
                child: IntrinsicWidth(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          122,
                        ),
                        padding: getPadding(
                          left: 16,
                          top: 8,
                          right: 16,
                          bottom: 8,
                        ),
                        decoration: AppDecoration.outlineBlack9001.copyWith(
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
                              ),
                              child: Text(
                                "lbl_writing".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtHeadline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          127,
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
                      Container(
                        width: getHorizontalSize(
                          138,
                        ),
                        padding: getPadding(
                          left: 10,
                          top: 7,
                          right: 10,
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
                          113,
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
                              imagePath: ImageConstant.imgMenu1,
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
                                "lbl_other".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtHeadlineWhiteA700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 20,
                    top: 24,
                    right: 20,
                  ),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          172,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          16,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          16,
                        ),
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller
                          .otherModelObj.value.otherItemList.value.length,
                      itemBuilder: (context, index) {
                        OtherItemModel model = controller
                            .otherModelObj.value.otherItemList.value[index];
                        return OtherItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
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
