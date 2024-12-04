import '../homepage_vthree_container_screen/homepage_vthree_container_screen.dart';
import 'controller/deposit_waiting_fund_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_text_form_field.dart';

class DepositWaitingFundScreen extends GetWidget<DepositWaitingFundController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.back();
          Get.back();
          return false;
        },
        child: Scaffold(
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
                        SizedBox(
                          width: getHorizontalSize(77),
                        ),
                        Text(
                          "lbl_payment_summary".tr,
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
                        padding: getPadding(left: 24, right: 24, top: 0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ListView(
                                  physics: BouncingScrollPhysics(),
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomButton(
                                          height: 50,
                                          width: 327,
                                          text: "msg_complete_payment".tr,
                                          variant: ButtonVariant.FillRed50,
                                          fontStyle:
                                              ButtonFontStyle.InterRegular12,
                                        ),
                                        SizedBox(
                                          height: getVerticalSize(24),
                                        ),
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
                                          decoration: AppDecoration.fillGray100
                                              .copyWith(shape: BoxShape.circle),
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLocationLightBlue90015x49,
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
                                            style: AppStyle.txtInterBold16
                                                .copyWith(
                                              height: getVerticalSize(
                                                1.24,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            276.00,
                                          ),
                                          margin: getMargin(
                                            top: 12,
                                          ),
                                          child: Text(
                                            "msg_we_have_created".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtInterRegular14WhiteA700
                                                .copyWith(
                                              height: getVerticalSize(
                                                1.19,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 25,
                                            ),
                                            child: Text(
                                              "lbl_amount".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium12
                                                  .copyWith(
                                                height: getVerticalSize(
                                                  1.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomTextFormField(
                                          width: double.infinity,
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.priceController,
                                          hintText: "lbl_20_423".tr,
                                          margin: getMargin(
                                            top: 6,
                                          ),
                                          variant:
                                              TextFormFieldVariant.FillGray100,
                                          padding:
                                              TextFormFieldPadding.PaddingT17,
                                          fontStyle: TextFormFieldFontStyle
                                              .InterMedium16,
                                          suffix: Container(
                                            margin: getMargin(
                                              left: 30,
                                              top: 16,
                                              right: 16,
                                              bottom: 16,
                                            ),
                                            child: CustomImageView(
                                              svgPath: ImageConstant.imgLock,
                                            ),
                                          ),
                                          suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(
                                              56.00,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 16,
                                            ),
                                            child: Text(
                                              "msg_virtual_account".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium12
                                                  .copyWith(
                                                height: getVerticalSize(
                                                  1.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomTextFormField(
                                          width: double.infinity,
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.inputbaseController,
                                          hintText: "lbl_788837649982721".tr,
                                          margin: getMargin(
                                            top: 6,
                                            bottom: 4,
                                          ),
                                          variant:
                                              TextFormFieldVariant.FillGray100,
                                          padding:
                                              TextFormFieldPadding.PaddingT17,
                                          fontStyle: TextFormFieldFontStyle
                                              .InterMedium16,
                                          textInputAction: TextInputAction.done,
                                          suffix: Container(
                                            margin: getMargin(
                                              left: 30,
                                              top: 16,
                                              right: 16,
                                              bottom: 16,
                                            ),
                                            child: CustomImageView(
                                              svgPath: ImageConstant.imgLock,
                                            ),
                                          ),
                                          suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(
                                              56.00,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              CustomButton(
                                onTap: () {
                                  Get.off(HomepageVthreeContainerScreen());
                                },
                                height: 56,
                                width: 327,
                                text: "msg_i_ve_made_the_payment".tr,
                                margin: getMargin(
                                  top: 24,
                                ),
                              ),
                              SizedBox(
                                height: getVerticalSize(20),
                              ),
                              Padding(
                                padding: getPadding(bottom: 16),
                                child: CustomButton(
                                  height: 56,
                                  width: 327,
                                  text: "msg_make_payment_later".tr,
                                  variant: ButtonVariant.OutlineBlue700,
                                  fontStyle: ButtonFontStyle.InterBold16,
                                ),
                              )
                            ]).paddingOnly(top: 0),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
