import 'controller/login_screen_fill_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/core/utils/validation_functions.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreenFillScreen extends GetWidget<LoginScreenFillController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 20,
              top: 32,
              right: 20,
              bottom: 32,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgCut,
                  height: getVerticalSize(
                    93,
                  ),
                  width: getHorizontalSize(
                    88,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 27,
                  ),
                  child: Text(
                    "lbl_login".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAeonikBold27,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 15,
                  ),
                  child: Text(
                    "msg_please_enter_your".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtBodyGray600,
                  ),
                ),
                CustomTextFormField(
                  fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                  controller: controller.emailController,
                  hintText: "msg_johnabram_gmail_com".tr,
                  margin: getMargin(
                    top: 53,
                  ),
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 16,
                      right: 7,
                      bottom: 16,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgCheckmark,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      56,
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                  controller: controller.priceController,
                  hintText: "lbl_1234".tr,
                  margin: getMargin(
                    top: 16,
                  ),
                  variant: TextFormFieldVariant.Blue,
                  padding: TextFormFieldPadding.PaddingT19_1,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 16,
                      right: 8,
                      bottom: 16,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgCheckmark,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      56,
                    ),
                  ),
                  suffix: Container(
                    margin: getMargin(
                      left: 30,
                      top: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgEye,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      56,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      top: 19,
                    ),
                    child: Text(
                      "msg_forgot_password".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAeonikRegular15,
                    ),
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    56,
                  ),
                  text: "lbl_login".tr,
                  margin: getMargin(
                    top: 49,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: getPadding(
                    bottom: 13,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_don_t_have_a_account2".tr,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              17,
                            ),
                            fontFamily: 'Aeonik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_sign_up".tr,
                          style: TextStyle(
                            color: ColorConstant.lightBlueA700,
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Aeonik',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
