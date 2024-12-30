import 'controller/forget_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordScreen extends GetWidget<ForgetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgForgetpassword,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  926,
                ),
                width: double.maxFinite,
                decoration: AppDecoration.fillBlack90066,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: getPadding(
                          left: 179,
                          top: 15,
                          right: 179,
                          bottom: 15,
                        ),
                        decoration: AppDecoration.white.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL32,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 807,
                              ),
                              child: Divider(
                                height: getVerticalSize(
                                  5,
                                ),
                                thickness: getVerticalSize(
                                  5,
                                ),
                                color: ColorConstant.gray600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        76,
                      ),
                      width: double.maxFinite,
                      text: "lbl_select_contry".tr,
                      margin: getMargin(
                        top: 84,
                      ),
                      variant: ButtonVariant.OutlineGray300,
                      shape: ButtonShape.Square,
                      padding: ButtonPadding.PaddingAll26,
                      fontStyle: ButtonFontStyle.SFProTextBold20,
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
