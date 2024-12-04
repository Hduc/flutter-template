import '../homepage_screen/widgets/list_item_widget.dart';
import '../homepage_screen/widgets/listportfolio_item_widget.dart';
import 'controller/homepage_controller.dart';
import 'models/list_item_model.dart';
import 'models/listportfolio_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/history_transaction_tab_container_page/history_transaction_tab_container_page.dart';
import 'package:investment_app/presentation/homepage_vthree_page/homepage_vthree_page.dart';
import 'package:investment_app/presentation/portfolio_page/portfolio_page.dart';
import 'package:investment_app/presentation/profile_page/profile_page.dart';
import 'package:investment_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_bottom_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class HomepageScreen extends GetWidget<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 74,
          leading: AppbarCircleimage(
            svgPath: ImageConstant.imgUser,
            margin: getMargin(
              left: 24,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarSubtitle1(
                  text: "msg_hello_good_morning".tr,
                ),
                AppbarSubtitle(
                  text: "lbl_jack_sparrow".tr,
                  margin: getMargin(
                    top: 6,
                    right: 10,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarIconbutton1(
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 24,
                right: 24,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              margin: getMargin(
                top: 31,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_available_balance".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular12.copyWith(
                      height: getVerticalSize(
                        0.99,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_112_340".tr,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                32,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: getVerticalSize(
                                1.01,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: "lbl_00".tr,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: getVerticalSize(
                                1.03,
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
                      top: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_10_240_00".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium12Gray800.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                          ),
                          child: Text(
                            "lbl_122".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12Green500.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 32,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          height: 57,
                          width: 159,
                          text: "lbl_withdraw".tr,
                          padding: ButtonPadding.PaddingT17,
                          prefixWidget: Container(
                            margin: getMargin(
                              right: 8,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                            ),
                          ),
                        ),
                        CustomButton(
                          height: 57,
                          width: 159,
                          text: "lbl_deposit".tr,
                          margin: getMargin(
                            left: 8,
                          ),
                          variant: ButtonVariant.OutlineBlue700,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle: ButtonFontStyle.InterBold16,
                          prefixWidget: Container(
                            margin: getMargin(
                              right: 8,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgContrast,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      683.00,
                    ),
                    width: size.width,
                    margin: getMargin(
                      top: 24,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: size.width,
                            margin: getMargin(
                              bottom: 223,
                            ),
                            padding: getPadding(
                              left: 24,
                              top: 25,
                              right: 24,
                              bottom: 25,
                            ),
                            decoration: AppDecoration.fillLightblue900.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL32,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 388,
                                  ),
                                  child: Text(
                                    "lbl_portfolio".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16WhiteA700
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.27,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    bottom: 388,
                                  ),
                                  child: Text(
                                    "lbl_view_all".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold14.copyWith(
                                      height: getVerticalSize(
                                        1.19,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: size.width,
                            margin: getMargin(
                              top: 216,
                              bottom: 216,
                            ),
                            padding: getPadding(
                              left: 24,
                              top: 27,
                              right: 24,
                              bottom: 27,
                            ),
                            decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL32,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 176,
                                  ),
                                  child: Text(
                                    "lbl_my_watchlist".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16.copyWith(
                                      height: getVerticalSize(
                                        1.27,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 178,
                                  ),
                                  child: Text(
                                    "lbl_view_all".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold14.copyWith(
                                      height: getVerticalSize(
                                        1.19,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 24,
                              top: 281,
                              right: 24,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      8.00,
                                    ),
                                  );
                                },
                                itemCount: controller
                                    .homepageModelObj.value.listItemList.length,
                                itemBuilder: (context, index) {
                                  ListItemModel model = controller
                                      .homepageModelObj
                                      .value
                                      .listItemList[index];
                                  return ListItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: getVerticalSize(
                              683.00,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                padding: getPadding(
                                  left: 24,
                                  top: 65,
                                  bottom: 486,
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      8.00,
                                    ),
                                  );
                                },
                                itemCount: controller.homepageModelObj.value
                                    .listportfolioItemList.length,
                                itemBuilder: (context, index) {
                                  ListportfolioItemModel model = controller
                                      .homepageModelObj
                                      .value
                                      .listportfolioItemList[index];
                                  return ListportfolioItemWidget(
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
                ],
              ),
            ),
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
      case BottomBarEnum.Iconsolidhomealt:
        return AppRoutes.homepageVthreePage;
      case BottomBarEnum.Menu:
        return AppRoutes.portfolioPage;
      case BottomBarEnum.Maximize:
        return "/";
      case BottomBarEnum.Clockbluegray10001:
        return AppRoutes.historyTransactionTabContainerPage;
      case BottomBarEnum.Search:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepageVthreePage:
        return HomepageVthreePage();
      case AppRoutes.portfolioPage:
        return PortfolioPage();
      case AppRoutes.historyTransactionTabContainerPage:
        return HistoryTransactionTabContainerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
