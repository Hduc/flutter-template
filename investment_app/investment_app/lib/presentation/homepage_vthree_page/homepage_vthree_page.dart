import 'package:flutter/services.dart';
import 'package:investment_app/presentation/homepage_vthree_page/portfolio_all_data_grid_screen.dart';
import 'package:investment_app/presentation/portfolio_page/portfolio_page.dart';
import 'package:investment_app/presentation/sbux_stock_screen/sbux_stock_screen.dart';

import '../homepage_vthree_page/widgets/list1_item_widget.dart';
import '../homepage_vthree_page/widgets/listportfolio1_item_widget.dart';
import 'controller/homepage_vthree_controller.dart';
import 'models/homepage_vthree_model.dart';
import 'models/list1_item_model.dart';
import 'models/listportfolio1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

import 'my_watchlist_all_data.dart';

// ignore_for_file: must_be_immutable
class HomepageVthreePage extends StatelessWidget {
  HomepageVthreeController controller =
      Get.put(HomepageVthreeController(HomepageVthreeModel().obs));
  List<Listportfolio1ItemModel> data = HomepageVthreeModel.getPortfolioData();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Future.delayed(const Duration(milliseconds: 1000), () {
          SystemNavigator.pop();
        });
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
            height: getVerticalSize(
              56.00,
            ),
            leadingWidth: 74,
            leading: AppbarCircleimage(
              imagePath: ImageConstant.imgUserPNG,
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
                      top: 8,
                      right: 10,
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              AppbarIconbutton1(
                onTap: () {
                  Get.toNamed(AppRoutes.notificationScreen);
                },
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
                  top: 33,
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
                          1.27,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
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
                      child: GetBuilder<HomepageVthreeController>(
                        init:
                            HomepageVthreeController(HomepageVthreeModel().obs),
                        builder: (controller) => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              onTap: () {
                                controller.setButtonId(1);
                                Get.toNamed(
                                    AppRoutes.withdrawSelectAccountScreen);
                              },
                              variant: controller.id != 1
                                  ? ButtonVariant.OutlineBlue700
                                  : null,
                              height: 56,
                              width: 159,
                              text: "lbl_withdraw".tr,
                              fontStyle: controller.id != 1
                                  ? ButtonFontStyle.InterBold16
                                  : null,
                              padding: ButtonPadding.PaddingT17,
                              prefixWidget: Container(
                                margin: getMargin(
                                  right: 8,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  color: controller.id != 1
                                      ? ColorConstant.blue700
                                      : ColorConstant.whiteA700,
                                ),
                              ),
                            ),
                            CustomButton(
                              onTap: () {
                                controller.setButtonId(2);
                                Get.toNamed(
                                    AppRoutes.depositSelectPaymentScreen);
                              },
                              height: 56,
                              width: 159,
                              text: "lbl_deposit".tr,
                              margin: getMargin(
                                left: 8,
                              ),
                              variant: controller.id != 2
                                  ? ButtonVariant.OutlineBlue700
                                  : null,
                              padding: ButtonPadding.PaddingT17,
                              fontStyle: controller.id != 2
                                  ? ButtonFontStyle.InterBold16
                                  : null,
                              prefixWidget: Container(
                                margin: getMargin(
                                  right: 8,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgContrast,
                                  color: controller.id != 2
                                      ? ColorConstant.blue700
                                      : ColorConstant.whiteA700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: getPadding(top: 32),
                      child: Container(
                        width: size.width,


                        decoration: AppDecoration.fillBgColor.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL32,
                      ),child: Column(
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 24,
                              top: 25,
                              right: 24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "lbl_portfolio".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16White.copyWith(
                                    height: getVerticalSize(
                                      1.24,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Get.to(PortfolioAllData());
                                  },
                                  child: Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "lbl_view_all".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBoldWhite14.copyWith(
                                        height: getVerticalSize(
                                          1.19,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: getVerticalSize(
                                160.00,
                              ),
                              child: ListView.separated(
                                padding: getPadding(
                                  left: 10,
                                  top: 18,
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
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                  Listportfolio1ItemModel model = data[index];
                                  return GestureDetector(
                                    onTap: (){
                                      Get.toNamed(AppRoutes.sbuxStockScreen);
                                    },
                                    child: IntrinsicWidth(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          // width: getVerticalSize(183),
                                          margin: getMargin(
                                            right: 8,
                                          ),
                                          padding: getPadding(
                                            left: 16,
                                            top: 17,
                                            right: 16,
                                            bottom: 17,
                                          ),
                                          decoration:
                                          model.progressType=='up'?AppDecoration.fillLightgreen100.copyWith(
                                            borderRadius:
                                            BorderRadiusStyle.roundedBorder24,
                                          ):AppDecoration.fillLightpurple100.copyWith(
                                            borderRadius:
                                            BorderRadiusStyle.roundedBorder24,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: model.icon,
                                                    height: getSize(
                                                      40.00,
                                                    ),
                                                    width: getSize(
                                                      40.00,
                                                    ),
                                                    radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                        20.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 12,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          model.title!,
                                                          overflow:
                                                          TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style:  model.progressType == 'up'?AppStyle
                                                              .txtInterBold14Gray800
                                                              .copyWith(
                                                            height: getVerticalSize(
                                                              1.19,
                                                            ),
                                                          ):AppStyle
                                                              .txtInterBoldWhite14
                                                              .copyWith(
                                                            height: getVerticalSize(
                                                              1.19,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 6,
                                                          ),
                                                          child: Text(
                                                            model.subtitle!,
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: model.progressType == 'up'?AppStyle
                                                                .txtInterRegularblack
                                                                .copyWith(
                                                              height: getVerticalSize(
                                                                1.27,
                                                              ),
                                                            ):AppStyle
                                                                .txtInterRegularDarkeshGray400
                                                                .copyWith(
                                                              height: getVerticalSize(
                                                                1.27,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 15,
                                                ),
                                                child: Text(
                                                  model.rate!,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: model.progressType == 'up'?
                                                  AppStyle.txtInterBold16.copyWith(
                                                    height: getVerticalSize(
                                                      1.24,
                                                    ),
                                                  ): AppStyle.txtInterRegular16White.copyWith(
                                                    height: getVerticalSize(
                                                      1.24,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 6,
                                                ),
                                                child: Row(
                                                  children: [
                                                    CustomImageView(
                                                      svgPath:
                                                      model.progressType == 'up'
                                                          ? ImageConstant
                                                          .imgCheckmarkGray800
                                                          : ImageConstant
                                                          .imgCheckmarkDown800,
                                                      height: getSize(
                                                        14.00,
                                                      ),
                                                      width: getSize(
                                                        14.00,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 4,
                                                      ),
                                                      child: Text(
                                                        model.progress!,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style:  model.progressType == 'up'
                                                            ?AppStyle
                                                            .txtInterRegular12Gray800
                                                            .copyWith(
                                                          height: getVerticalSize(
                                                            1.27,
                                                          ),
                                                        ):AppStyle
                                                            .txtInterRegular12White
                                                            .copyWith(
                                                          height: getVerticalSize(
                                                            1.27,
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
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 24),
                            child: Container(
                              width: size.width,
                              margin: getMargin(
                                bottom: 0,
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
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 17,
                                        ),
                                        child: Text(
                                          "lbl_my_watchlist".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold16.copyWith(
                                            height: getVerticalSize(
                                              1.24,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          Get.to(MyWatchListAllDataScreen());
                                        },
                                        child: Padding(
                                          padding: getPadding(
                                            bottom: 0,
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
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 0,
                                      top: 0,
                                      right: 0,
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
                                        itemCount: controller.homepageVthreeModelObj
                                            .value.list1ItemList.length,
                                        itemBuilder: (context, index) {
                                          List1ItemModel model = controller
                                              .homepageVthreeModelObj
                                              .value
                                              .list1ItemList[index];
                                          return List1ItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
