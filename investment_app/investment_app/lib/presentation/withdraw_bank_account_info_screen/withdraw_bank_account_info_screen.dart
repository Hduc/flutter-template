import 'controller/withdraw_bank_account_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/core/utils/validation_functions.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_drop_down.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';
import 'package:investment_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WithdrawBankAccountInfoScreen
    extends GetWidget<WithdrawBankAccountInfoController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.lightBlue900,
          body: SafeArea(
            child: Form(
                key: _formKey,
                child: Container(
                    height: size.height,
                    width: size.width,
                    child: Stack(alignment: Alignment.topRight, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              height: getVerticalSize(251.00),
                              width: getHorizontalSize(width),
                              padding: getPadding(
                                  left: 24, top: 16, right: 24, bottom: 16),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgGroup14),
                                      fit: BoxFit.fill)),
                              child: Stack(children: [
                                CustomIconButton(
                                    height: 50,
                                    width: 50,
                                    variant: IconButtonVariant.FillWhiteA70014,
                                    alignment: Alignment.topLeft,
                                    onTap: () {
                                      onTapBtnArrowleft();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowleftWhiteA70050x50))
                              ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle1933,
                          height: getVerticalSize(175.00),
                          width: getHorizontalSize(253.00),
                          alignment: Alignment.topRight),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: size.width,
                              margin: getMargin(top: 90),
                              padding: getPadding(
                                  left: 24, top: 23, right: 24, bottom: 23),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL32),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(259.00),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_enter_your".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray800,
                                                      fontSize: getFontSize(32),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: getVerticalSize(
                                                          1.5))),
                                              TextSpan(
                                                  text: "lbl_bank_mandiri".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.blue700,
                                                      fontSize: getFontSize(32),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: getVerticalSize(
                                                          1.5))),
                                              TextSpan(
                                                  text: "lbl_account".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray800,
                                                      fontSize: getFontSize(32),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: getVerticalSize(
                                                          1.5)))
                                            ]),
                                            textAlign: TextAlign.left)),
                                    Padding(
                                        padding: getPadding(top: 24),
                                        child: Text(
                                            "msg_bank_account_number".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium12
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.00)))),
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.inputbaseController,
                                        hintText: "lbl_78371277736".tr,
                                        margin: getMargin(top: 6),
                                        textInputType: TextInputType.phone,
                                        validator: (value) {
                                          if (!isValidPhone(value)) {
                                            return "Please enter valid phone number";
                                          }
                                          return null;
                                        }),
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Text("msg_bank_account_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium12
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.00)))),
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.inputbaseOneController,
                                        hintText: "lbl_78371277736".tr,
                                        margin: getMargin(top: 6),
                                        textInputType: TextInputType.phone,
                                        validator: (value) {
                                          if (!isValidPhone(value)) {
                                            return "Please enter valid phone number";
                                          }
                                          return null;
                                        }),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Text("lbl_city".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium12
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.00)))),
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.inputbaseTwoController,
                                        hintText: "lbl_yogyakarta".tr,
                                        margin: getMargin(top: 5),
                                        textInputAction: TextInputAction.done),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Text("lbl_city".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium12
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.00)))),
                                    CustomDropDown(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 16),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownGray800)),
                                        hintText: "lbl_savings".tr,
                                        margin: getMargin(top: 5),
                                        shape: DropDownShape.RoundedBorder16,
                                        padding: DropDownPadding.PaddingT16,
                                        fontStyle:
                                            DropDownFontStyle.InterRegular16,
                                        items: controller
                                            .withdrawBankAccountInfoModelObj
                                            .value
                                            .dropdownItemList,
                                        onChanged: (value) {
                                          controller.onSelected(value);
                                        }),
                                    Spacer(),
                                    CustomButton(
                                      onTap: (){
                                        Get.toNamed(AppRoutes.withdrawConfirmBankAccountOneScreen);
                                      },
                                        height: 56,
                                        width: 327,
                                        text: "lbl_continue".tr,
                                        margin: getMargin(bottom: 16))
                                  ])))
                    ]))),
          )),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
