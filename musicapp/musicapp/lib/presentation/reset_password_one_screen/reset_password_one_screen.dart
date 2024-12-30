import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';
import 'package:musicapp/widgets/custom_text_form_field.dart';

import '../reset_password_screen/reset_password_screen.dart';
import 'controller/reset_password_one_controller.dart';

class ResetPasswordOneScreen extends StatefulWidget {
  const ResetPasswordOneScreen({super.key});

  @override
  State<ResetPasswordOneScreen> createState() => _ResetPasswordOneScreenState();
}

class _ResetPasswordOneScreenState extends State<ResetPasswordOneScreen> {
  ResetPasswordOneController controller = Get.put(ResetPasswordOneController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
   setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.back();
          return true;
        },
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.bgColor,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath:  PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:
                    ImageConstant.imgArrowleftWhite,
                    margin: getMargin(left: 20, top: 29, bottom: 28),
                    onTap: () {
                      onTapArrowleft2();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_reset_password".tr),
                styleType: Style.bgFill),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(
                        left: 20, top: 16, right: 20, bottom: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(343),
                              margin: getMargin(left: 22, right: 21),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_p".tr,
                                        style: TextStyle(
                                            color: appTheme.black900,
                                            fontSize: getFontSize(17),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "msg_lease_enter_your2".tr,
                                        style: TextStyle(
                                            color: appTheme.black900,
                                            fontSize: getFontSize(17),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400))
                                  ]),
                                  textAlign: TextAlign.center)),
                          Padding(
                              padding: getPadding(top: 48),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_new_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextThemeHelper
                                            .bodyLargeGray600),
                                    Obx(() => CustomTextFormField(
                                        controller: controller
                                            .newpasswordController,
                                        margin: getMargin(top: 4),
                                        contentPadding: getPadding(
                                            left: 16, top: 18, bottom: 18),
                                        hintText:
                                            "msg_enter_new_password".tr,
                                        hintStyle: TextThemeHelper
                                            .bodyLargeGray600,
                                        textInputAction:
                                            TextInputAction.next,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword
                                                      .value =
                                                  !controller
                                                      .isShowPassword.value;
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 12,
                                                    top: 16,
                                                    right: 16,
                                                    bottom: 16),
                                                child: CustomImageView(
                                                    svgPath: !controller
                                                            .isShowPassword
                                                            .value
                                                        ? ImageConstant
                                                            .imgEye
                                                        : ImageConstant
                                                            .imgEyeClose))),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(56)),
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        obscureText: controller
                                            .isShowPassword.value))
                                  ])),
                          Padding(
                              padding: getPadding(top: 27),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    Text("msg_confirm_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextThemeHelper
                                            .bodyLargeGray600),
                                    Obx(() => CustomTextFormField(
                                        controller: controller
                                            .confirmpasswordController,
                                        margin: getMargin(top: 4),
                                        contentPadding: getPadding(
                                            left: 16, top: 18, bottom: 18),
                                        hintText:
                                            "msg_enter_confirm_password".tr,
                                        hintStyle: TextThemeHelper
                                            .bodyLargeGray600,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword1
                                                      .value =
                                                  !controller
                                                      .isShowPassword1
                                                      .value;
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 12,
                                                    top: 16,
                                                    right: 16,
                                                    bottom: 16),
                                                child: CustomImageView(
                                                    svgPath: !controller
                                                            .isShowPassword1
                                                            .value
                                                        ? ImageConstant
                                                            .imgEye
                                                        : ImageConstant
                                                            .imgEyeClose))),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(56)),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        obscureText: controller
                                            .isShowPassword1.value))
                                  ])),
                          CustomElevatedButton(
                              text: "lbl_create".tr,
                              margin: getMargin(top: 48, bottom: 5),
                              buttonStyle: ButtonThemeHelper
                                  .fillDeeppurpleA200
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(
                                              Size(double.maxFinite,
                                                  getVerticalSize(54)))),
                              buttonTextStyle:
                                  TextThemeHelper.titleMediumPrimary_1,
                              onTap: () {
                                if(_formKey.currentState!.validate()){
                                onTapCreate();}
                              })
                        ])))));
  }

  onTapArrowleft2() {
    Get.back();
  }

  onTapCreate() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(20))),
          contentPadding:
          EdgeInsets.zero,
          content: ResetPasswordScreen(),
        );
      },
    );
  }
}
