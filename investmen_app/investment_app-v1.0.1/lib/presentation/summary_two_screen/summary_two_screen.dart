import 'package:investment_app/presentation/success_two_bottomsheet/controller/success_two_controller.dart';
import 'package:investment_app/presentation/success_two_bottomsheet/success_two_bottomsheet.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/summary_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';

class SummaryTwoScreen extends GetWidget<SummaryTwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    children: [
                      CustomIconButton(
                          height: 50,
                          width: 50,
                          variant: IconButtonVariant.FillWhiteA70014,
                          onTap: () {
                            Get.back();
                          },
                          child: CustomImageView(
                              svgPath:
                                  ImageConstant.imgArrowleftWhiteA70050x50)),
                      SizedBox(
                        width: getHorizontalSize(27),
                      ),
                      Text(
                        "Preview Exchange",
                        style: AppStyle.txtWhite20Width600.copyWith(
                          height: getVerticalSize(
                            1.01,
                          ),
                        ),
                      ),
                      SizedBox()
                    ],
                  ).paddingSymmetric(horizontal: 24),
                ),
              ),
              Container(
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL32,
                ),
                child: Padding(
                  padding: getPadding(left: 24, right: 24, top: 24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                                padding: getPadding(left: 47, right: 47),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse28322,
                                              height: getSize(77.00),
                                              width: getSize(77.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(38.00))),
                                          SizedBox(
                                            height: getVerticalSize(16),
                                          ),
                                          Text("lbl_spotify".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterSemiBold16
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.29))),
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: Text("lbl_spot".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: AppStyle
                                                      .txtInterRegular14WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19))))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: getVerticalSize(77),
                                          ),
                                          CustomImageView(
                                            alignment: Alignment.bottomCenter,
                                            svgPath: ImageConstant
                                                .imgArrowrightGray800,
                                            height: getSize(24.00),
                                            width: getSize(24.00),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse2832,
                                              height: getSize(77.00),
                                              width: getSize(77.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(38.00))),
                                          SizedBox(
                                            height: getVerticalSize(16),
                                          ),
                                          Text("lbl_starbucks".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterSemiBold16
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.29))),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text("lbl_sbux".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19))))
                                        ],
                                      )
                                    ])),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: getPadding(top: 17, right: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [])),
                                          Padding(
                                              padding:
                                                  getPadding(left: 26, top: 1),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: []))
                                        ]))),
                            Container(
                                height: getVerticalSize(1.00),
                                width: double.infinity,
                                margin: getMargin(top: 25),
                                decoration: BoxDecoration(
                                    color: ColorConstant.gray200)),
                            Padding(
                                padding: getPadding(top: 24),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text(
                                              "msg_market_price_spot".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular14WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.19)))),
                                      Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Text("lbl_82_38".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium14
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.19))))
                                    ])),
                            Padding(
                                padding: getPadding(top: 25),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text(
                                              "msg_market_price_sbux".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular14WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.19)))),
                                      Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Text("lbl_35_123".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium14
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.19))))
                                    ])),
                            Padding(
                                padding: getPadding(top: 25),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("msg_number_of_shares".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular14WhiteA700
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.19))),
                                      Text("lbl_0_01782937".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.19)))
                                    ])),
                            Container(
                                height: getVerticalSize(1.00),
                                width: double.infinity,
                                margin: getMargin(top: 25),
                                decoration: BoxDecoration(
                                    color: ColorConstant.gray200)),
                            Padding(
                                padding: getPadding(top: 24),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_amount".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular14WhiteA700
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.19))),
                                      Text("lbl_20_000_21".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.19)))
                                    ])),
                            Padding(
                                padding: getPadding(top: 26),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_exchange_fee2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular14WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.19)))),
                                      Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Text("lbl_20_00".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium14
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.19))))
                                    ])),
                            Container(
                                height: getVerticalSize(1.00),
                                width: double.infinity,
                                margin: getMargin(top: 24),
                                decoration: BoxDecoration(
                                    color: ColorConstant.gray200)),
                            Padding(
                                padding: getPadding(top: 24, bottom: 1),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_total_proceeds".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular14WhiteA700
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.19))),
                                      Text("lbl_14_892_00".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold14Green500
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.19)))
                                    ])),
                          ],
                        ),
                        Padding(
                          padding: getPadding(bottom: 16),
                          child: CustomButton(
                              alignment: Alignment.bottomCenter,
                              onTap: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(32),
                                          topRight: Radius.circular(32))),
                                  context: context,
                                  builder: (context) {
                                    return SuccessTwoBottomsheet(
                                        Get.put(SuccessTwoController()));
                                  },
                                );
                              },
                              height: 56,
                              width: 327,
                              text: "lbl_exchange_now".tr),
                        )
                      ]),
                ),
              ).paddingOnly(top: 118),
            ],
          ),
        ));
  }

  onTapArrowleft21() {
    Get.back();
  }
}
