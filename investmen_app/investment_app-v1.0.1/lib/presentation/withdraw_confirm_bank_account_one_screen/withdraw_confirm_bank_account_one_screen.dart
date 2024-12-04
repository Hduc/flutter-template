
import 'controller/withdraw_confirm_bank_account_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';

class WithdrawConfirmBankAccountOneScreen
    extends GetWidget<WithdrawConfirmBankAccountOneController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        Get.back();
        return false;
      },
      child:  Scaffold(
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
                      SizedBox(width: getHorizontalSize(56),),
                      Text(
                        "msg_confirm_your_bank".tr,
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
                      padding: getPadding(left: 24,right: 24,top: 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: getVerticalSize(23)),
                                Container(
                                  height: getSize(
                                    77.00,
                                  ),
                                  width: getSize(
                                    77.00,
                                  ),
                                  padding: getPadding(
                                    left: 13,
                                    top: 30,
                                    right: 13,
                                    bottom: 30,
                                  ),
                                  decoration: AppDecoration.fillGray100.copyWith(
                                      shape: BoxShape.circle
                                  ),
                                  child: CustomImageView(
                                    svgPath:
                                    ImageConstant.imgLocationLightBlue90015x49,
                                    height: getVerticalSize(
                                      15.00,
                                    ),
                                    width: getHorizontalSize(
                                      49.00,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 17,
                                  ),
                                  child: Text(
                                    "msg_bank_central_asia".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16.copyWith(
                                      height: getVerticalSize(
                                        1.24,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: double.infinity
                                  ,
                                  margin: getMargin(
                                    top: 27,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray200,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "msg_account_holder_name".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                          AppStyle.txtInterRegular14WhiteA700.copyWith(
                                            height: getVerticalSize(
                                              1.19,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_jack_sparrow".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14.copyWith(
                                            height: getVerticalSize(
                                              1.19,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 25,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "lbl_account_number".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14WhiteA700.copyWith(
                                          height: getVerticalSize(
                                            1.19,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "lbl_1143672638".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14.copyWith(
                                          height: getVerticalSize(
                                            1.19,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 26,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "lbl_bank_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14WhiteA700.copyWith(
                                          height: getVerticalSize(
                                            1.19,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "lbl_bank_bca".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14.copyWith(
                                          height: getVerticalSize(
                                            1.19,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 28,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "lbl_city".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14WhiteA700.copyWith(
                                          height: getVerticalSize(
                                            1.19,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "lbl_yogyakarta".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14.copyWith(
                                          height: getVerticalSize(
                                            1.19,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 25,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_currency".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                          AppStyle.txtInterRegular14WhiteA700.copyWith(
                                            height: getVerticalSize(
                                              1.19,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_usd".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14.copyWith(
                                            height: getVerticalSize(
                                              1.19,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 26,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "lbl_account_type".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14WhiteA700.copyWith(
                                          height: getVerticalSize(
                                            1.19,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "lbl_savings".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14.copyWith(
                                          height: getVerticalSize(
                                            1.19,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: double.infinity,
                                  margin: getMargin(
                                    top: 24,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray200,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: getMargin(
                                    top: 23,
                                  ),
                                  padding: getPadding(
                                    left: 16,
                                    top: 17,
                                    right: 16,
                                    bottom: 17,
                                  ),
                                  decoration: AppDecoration.fillRed50.copyWith(
                                    borderRadius: BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(
                                          233.00,
                                        ),
                                        child: Text(
                                          "msg_make_sure_your_destination".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular12Blue700.copyWith(
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
                              padding: getPadding(bottom: 16),
                              child:  CustomButton(
                                onTap: (){
                                  Get.toNamed(AppRoutes.withdrawConfirmBankAccountScreen);
                                },
                                height: 56,
                                width: 327,
                                text: "lbl_add_account".tr,
                              ),
                            )]
                      ).paddingOnly(top:0),

                    )),
              )],
          ),
        ),
      )
    );
  }
}
