import 'package:investment_app/presentation/success_bottomsheet/success_bottomsheet.dart';
import '../../widgets/custom_icon_button.dart';
import '../success_bottomsheet/controller/success_controller.dart';
import 'controller/summary_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';

class SummaryScreen extends GetWidget<SummaryController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Get.back();
        Get.back();
        return false;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.lightBlue900,
          body:Container(
            width: size.width,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup14,
                  height: getVerticalSize(
                    251.00,
                  ),
                  width: getHorizontalSize(
                      width
                  ),
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
                            variant: IconButtonVariant
                                .FillWhiteA70014,
                            onTap: () {
                              Get.back();
                            },
                            child: CustomImageView(
                                svgPath: ImageConstant
                                    .imgArrowleftWhiteA70050x50)
                        ),
                        SizedBox(width: getHorizontalSize(27),),
                        Text(
                          "Preview",
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
                Padding(
                  padding: getPadding(top: 118),
                  child: Container(
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL32,
                    ),
                    child: Padding(
                      padding: getPadding(left: 24,right: 24,top: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(

                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse2832,
                                    height: getSize(77.00),
                                    width: getSize(77.00)),
                                Padding(
                                    padding: getPadding(top: 18),
                                    child: Text("lbl_sbux".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold16
                                            .copyWith(height: getVerticalSize(1.29)))),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Text("lbl_starbucks".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14WhiteA700
                                            .copyWith(height: getVerticalSize(1.19)))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: double.infinity,
                                    margin: getMargin(top: 25),
                                    decoration:
                                    BoxDecoration(color: ColorConstant.gray200)),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_sell_in".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14WhiteA700
                                                  .copyWith(height: getVerticalSize(1.19))),
                                          Text("lbl_dollars_usd".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium14
                                                  .copyWith(height: getVerticalSize(1.19)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 26),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_market_price".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14WhiteA700
                                                  .copyWith(height: getVerticalSize(1.19))),
                                          Text("lbl_35_123".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium14
                                                  .copyWith(height: getVerticalSize(1.19)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 26),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("msg_number_of_shares".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14WhiteA700
                                                  .copyWith(height: getVerticalSize(1.19))),
                                          Text("lbl_0_32771821".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium14
                                                  .copyWith(height: getVerticalSize(1.19)))
                                        ])),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: double.infinity,
                                    margin: getMargin(top: 25),
                                    decoration:
                                    BoxDecoration(color: ColorConstant.gray200)),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_amount".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14WhiteA700
                                                  .copyWith(height: getVerticalSize(1.19))),
                                          Text("lbl_35_123".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium14
                                                  .copyWith(height: getVerticalSize(1.19)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 26),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_trading_fee".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtInterRegular14WhiteA700
                                                      .copyWith(
                                                      height: getVerticalSize(1.19)))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_3_93".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtInterMedium14.copyWith(
                                                      height: getVerticalSize(1.19))))
                                        ])),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: double.infinity,
                                    margin: getMargin(top: 24),
                                    decoration:
                                    BoxDecoration(color: ColorConstant.gray200)),
                                Padding(
                                    padding: getPadding(top: 24, bottom: 1),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_total_proceeds".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14WhiteA700
                                                  .copyWith(height: getVerticalSize(1.19))),
                                          Text("lbl_10_033".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold14Green500
                                                  .copyWith(height: getVerticalSize(1.19)))
                                        ]))
                              ]),
                        Padding(
                          padding: getPadding(bottom: 16),
                          child: CustomButton(
                              onTap: () {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(32),
                                            topLeft: Radius.circular(32))),
                                    context: context,
                                    builder: (context) =>
                                        SuccessBottomsheet(Get.put(SuccessController())));
                                // SuccessOneBottomsheet(Get.put(SuccessOneController())));
                              },
                              height: 56,
                              width: 327,
                              text: "lbl_sell_now".tr),
                        )]
                  ).paddingOnly(top:0),
                    )),
                )],
            ),
          ),
    ));
  }

  onTapArrowleft20() {
    Get.back();
    Get.back();
  }
}
