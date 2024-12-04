import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/core/utils/validation_functions.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';
import 'package:investment_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            margin: getMargin(top: 110),
                            padding: getPadding(
                                left: 24, top: 24, right: 24, bottom: 21),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL32),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Text("Hello there 👋",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold32.copyWith(
                                          height: getVerticalSize(1.5))),
                                  Container(
                                      width: getHorizontalSize(311.00),
                                      margin: getMargin(top: 20),
                                      child: Text("msg_please_enter_your".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular16Gray800
                                              .copyWith(
                                                  height: getVerticalSize(
                                                      1.5)))),
                                  Padding(
                                      padding: getPadding(top: 22),
                                      child: Text("lbl_email".tr,
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
                                      hintText: "msg_type_your_email".tr,
                                      margin: getMargin(top: 6),
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "Please enter valid email";
                                        }
                                        return null;
                                      }),
                                  Spacer(),
                                  CustomButton(
                                    onTap: () {
                                      if(_formKey.currentState!.validate()){
                                      Get.toNamed(AppRoutes.otpScreen);}
                                    },
                                      height: 56,
                                      width: 327,
                                      text: "lbl_continue".tr,
                                      margin: getMargin(bottom: 18))
                                ])))
                  ]))),
        ));
  }


  onTapBtnArrowleft() {
    Get.back();
  }
}
