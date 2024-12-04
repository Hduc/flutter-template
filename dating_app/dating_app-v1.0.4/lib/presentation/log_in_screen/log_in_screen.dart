import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/validation_functions.dart';
import 'package:dating_app/data/pref_data.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/log_in_controller.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            backgroundColor: Colors.white,
            shape:  RoundedRectangleBorder(borderRadius:
            BorderRadius.all(Radius.circular(16))),
            insetPadding: getPadding(left: getSize(27),right: getSize(27)),
            title: Padding(
              padding: getPadding(left: getSize(40),right: getSize(40)),
              child: Text('Are you sure you want to Exit?',style: TextStyle(
                color: Colors.black,
                fontSize: getFontSize(18),
                fontWeight: FontWeight.w600,
              ),),
            ),

            actions: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: getPadding(left: getSize(30),bottom: getSize(20)),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xFFAA6BE9),
                                width: getSize(1.5),
                              )
                          ),
                          child: Padding(
                            padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                            child: Center(
                              child: Text(
                                'No',style: TextStyle(
                                color: Color(0xFFAA6BE9),
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w700,
                              ),

                                textAlign: TextAlign.center,

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getSize(20),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()  {
                       controller.onExit();
                       controller.update();

                      },
                      child: Padding(
                        padding: getPadding(right: getSize(30),bottom: getSize(20)),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFAA6BE9),
                          ),
                          child: Padding(
                            padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                            child: Center(
                              child: Text(
                                'Yes',style: TextStyle(
                                color: Colors.white,
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w700,
                              ),

                                textAlign: TextAlign.center,

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        );
        return Future(() => false);


      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Form(
              key: _formKey,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: getSize(16)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 85),
                          child: Text("lbl_log_in".tr,

                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.displaySmall)),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Text("msg_please_enter_the".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyLarge)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_email_address".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.bodyLargeGray600),
                                SizedBox(
                                  height: getSize(4),
                                ),
                                CustomTextFormField(
                                  autofocus: false,
                                    controller: controller.emailController,



                                    hintText: "lbl_email_address".tr,

                                    textInputAction: TextInputAction.next,
                                    textInputType:
                                        TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    },
                                    filled: true,


                                )
                              ])),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.bodyLargeGray600),
                                SizedBox(
                                  height: getSize(4),
                                ),
                                CustomTextFormField(
                                  autofocus: false,
                                    controller:
                                        controller.passwordoneController,



                                    hintText: "lbl_password".tr,

                                    textInputType:
                                        TextInputType.visiblePassword,
                                    validator: (password) {
                                      if (password == null || password.isEmpty) {
                                        return 'Please enter valid password';
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    filled: true,

                                )
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtTextstandardfil();
                              },
                              child: Padding(
                                  padding: getPadding(top: 19),
                                  child: Text("msg_forget_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodyLarge)))),
                      CustomElevatedButton(
                          text: "lbl_log_in".tr,
                          margin: getMargin(top: getSize(24)),
                          buttonStyle: CustomButtonStyles.fillPrimary
                              .copyWith(
                                  fixedSize:
                                      MaterialStateProperty.all<Size>(Size(
                                          double.maxFinite,
                                          getSize(50)))),
                          buttonTextStyle: theme.textTheme.titleMedium!,
                          onTap: () {
                            PrefData.setLogin(false);
                            onTapLogin();
                            controller.emailController.clear();
                            controller.passwordoneController.clear();
                          }),
                      Padding(
                          padding: getPadding(top: getSize(26)),
                          child: Text("lbl_or".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumBlack900)),
                      Padding(
                          padding: getPadding(top:getSize(24)),
                          child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [

                                Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        onTapGoogle();
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8F8F8),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(vertical: getSize(15)),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                svgPath:
                                                ImageConstant
                                                    .imgGoogle,height: getSize(24),
                                              ),
                                              Padding(
                                                padding: getPadding(left: getSize(16)),
                                                child: Text('Google',style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: getFontSize(16),
                                                    color: Colors.black
                                                ),),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                ),
                                SizedBox(
                                  width: getSize(16),
                                ),

                                Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        onTapApple();
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8F8F8),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(vertical: getSize(15)),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                svgPath:
                                                ImageConstant
                                                    .imgFire,height: getSize(24),),
                                              Padding(
                                                padding: getPadding(left: getSize(16)),
                                                child: Text('lbl_apple'.tr,style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: getFontSize(16),
                                                    color: Colors.black
                                                ),),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                )
                              ])),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanaccount();
                          },
                          child: Padding(
                            padding:  EdgeInsets.only(bottom: getSize(25)),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_don_t_have_an_account2".tr,
                                      style: theme.textTheme.bodyLarge),
                                  TextSpan(
                                      text: "lbl_sign_up".tr,
                                      style:
                                          CustomTextStyles.bodyLargePrimary)
                                ]),
                                textAlign: TextAlign.left),
                          ))
                    ]),
              )
          )
      ),
    );
  }


  onTapTxtTextstandardfil() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
  onTapLogin() {
   if(_formKey.currentState!.validate()){
     Get.toNamed(
       AppRoutes.genderScreen,
     );
   }
  }
  onTapGoogle() {
    Get.toNamed(
      AppRoutes.genderScreen,
    );
  }
  onTapApple() {
    Get.toNamed(
      AppRoutes.genderScreen,
    );
  }
  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
