import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/core/utils/validation_functions.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';
import 'package:musicapp/widgets/custom_text_form_field.dart';

import 'controller/forgot_password_controller.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  ForgotPasswordController controller = Get.put(ForgotPasswordController());
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
            backgroundColor:appTheme.bgColor,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: PrefUtils().getThemeData()=="primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,
                    margin: getMargin(left: 20, top: 29, bottom: 28),
                    onTap: () {
                      onTapArrowleft();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_forgot_password".tr),
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
                              width: getHorizontalSize(356),
                              margin: getMargin(left: 16, right: 15),
                              child: Text("msg_please_enter_your5".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                      color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white
                                  ))),
                          Padding(
                              padding: getPadding(top: 47),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_email_address".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextThemeHelper
                                            .bodyLargeGray600),
                                    CustomTextFormField(
                                        controller:
                                            controller.emailController,
                                        margin: getMargin(top: 5),
                                        contentPadding: getPadding(
                                            left: 12,
                                            top: 18,
                                            right: 12,
                                            bottom: 18),
                                        hintText:
                                            "msg_enter_email_address".tr,
                                        hintStyle: TextThemeHelper
                                            .bodyLargeGray600,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            if (!isValidEmail(value,
                                                isRequired: true)){
                                              return "Please enter valid email";
                                            }
                                            return "Please enter email";
                                          }
                                          return null;
                                        })
                                  ])),
                          CustomElevatedButton(
                              text: "lbl_continue".tr,
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
                                onTapContinue();}
                              })
                        ])))));
  }

  onTapArrowleft() {
    Get.back();
  }

  onTapContinue() {
    Get.toNamed(
      AppRoutes.otpVerificationScreen,
    );
  }
}
