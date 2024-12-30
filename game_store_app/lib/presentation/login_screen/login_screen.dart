import 'package:flutter/services.dart';

import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/core/utils/validation_functions.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable

class LoginSCreen extends StatefulWidget {
  const LoginSCreen({Key? key}) : super(key: key);

  @override
  State<LoginSCreen> createState() => _LoginSCreenState();
}

class _LoginSCreenState extends State<LoginSCreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginController controller = Get.put(LoginController());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
   passwordController.dispose();
   emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        closeApp();
        return false;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          body: SafeArea(
            child: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                    getPadding(left: 20, top: 32, right: 20, bottom: 32),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgCut,
                              height: getVerticalSize(93),
                              width: getHorizontalSize(88)),
                          Padding(
                              padding: getPadding(top: 27),
                              child: Text("lbl_login".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAeonikBold27)),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Text("msg_please_enter_your".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBodyGray600)),
                          CustomTextFormField(
                              fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                              controller: emailController,
                              hintText: "lbl_email_address".tr,
                              margin: getMargin(top: 53),
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 8, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(54)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Obx(() => CustomTextFormField(
                              fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                              controller: passwordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT19_1,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 8, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(54)),
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 16,
                                          right: 16,
                                          bottom: 16),
                                      child: CustomImageView(
                                          svgPath:
                                          controller.isShowPassword.value
                                              ? ImageConstant.imgEye
                                              : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: controller.isShowPassword.value)),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 19),
                                      child: Text("msg_forgot_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                          AppStyle.txtAeonikRegular15)))),
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "lbl_login".tr,
                              margin: getMargin(top: 46),
                              onTap: () {
                                if(_formKey.currentState!.validate()){
                                  onTapLoginone();}
                              }),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                onTapTxtDonthaveaaccount();
                              },
                              child: Padding(
                                  padding: getPadding(bottom: 13),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                            "msg_don_t_have_a_account2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(17),
                                                fontFamily: 'Aeonik',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_sign_up".tr,
                                            style: TextStyle(
                                                color:
                                                ColorConstant.lightBlueA700,
                                                fontSize: getFontSize(18),
                                                fontFamily: 'Aeonik',
                                                fontWeight: FontWeight.w700))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ]))),
          )),
    );
  }

  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
  closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemNavigator.pop();
    });
  }
  onTapLoginone() {
    PrefUtils.setIsSignIn(false);
    Get.toNamed(
      AppRoutes.exploreGamesScreen,
    );
  }

  onTapTxtDonthaveaaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}




