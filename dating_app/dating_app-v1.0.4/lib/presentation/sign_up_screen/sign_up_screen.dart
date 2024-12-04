import 'package:country_pickers/country.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dating_app/widgets/custom_phone_number.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/sign_up_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:Colors.white,
        body: Form(
            key: _formKey,
            child: SizedBox(
                width: double.maxFinite,
                child: Column(

                  // padding: EdgeInsets.only(left: 16,right: 16,top: 65),
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(top: getSize(85)),
                        child: Text("lbl_sign_up".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.displaySmall),
                      ),
                      Padding(
                          padding: getPadding(top: 8)  ,
                          child: Text("msg_please_enter_the".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyLarge)),
                      Expanded(
                        child: ListView(
                          padding: getPadding(left: getSize(16),right: getSize(16),
                          ),
                            physics: BouncingScrollPhysics(),

                            children: [
                              Padding(
                                padding:getPadding(top: 24),
                                child: Text("lbl_full_name".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .bodyLargeGray600),
                              ),
                              CustomTextFormField(
                             autofocus: false,
                                  controller: controller
                                      .fullnameController,
                                  margin: getMargin(top: 4),

                                  hintText:
                                      "Enter Full Name".tr,

                                  textInputAction:
                                      TextInputAction.next,
                                  filled: true,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return "Please enter valid name";
                                  }
                                  return null;
                                },

                              ),
                              Padding(
                                padding: getPadding(top: getSize(16)),
                                child: Text("lbl_email_address".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .bodyLargeGray600),
                              ),
                              CustomTextFormField(
                                  autofocus: false,
                                  controller:  controller.emailController,
                                  margin: getMargin(top: 4),


                                  hintText:
                                  "Enter Email".tr,

                                  textInputAction:
                                  TextInputAction.next,
                                  filled: true,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return "Please enter valid email";
                                  }
                                  return null;
                                },

                                  ),

                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: getSize(16),bottom: getSize(6)),
                                      child: Text("lbl_phone_number".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodyLargeGray600))),
                              Obx(() => CustomPhoneNumber(
                                

                                  country:

                                  controller.selectedCountry.value,
                                  controller:
                                  controller.phoneNumberController,
                                  onTap: (Country country) {
                                    controller.selectedCountry.value =
                                        country;
                                  },

                                  )),
                              Padding(
                                 padding: getPadding(top: getSize(16)),
                                child: Text("lbl_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .bodyLargeGray600),
                              ),
                              Obx(() => CustomTextFormField(
                                  textStyle: theme.textTheme.bodyLarge,
                                  autofocus: false,
                                  controller: controller.passController,
                                  margin: getMargin(top: 6,),
                                  hintText: "Enter Password".tr,
                                  textInputAction: TextInputAction.done,
                                  hintStyle: CustomTextStyles.bodyLargeGray600,
                                  textInputType: TextInputType.visiblePassword,
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
                                                ? ImageConstant.imgIcEye
                                                : ImageConstant.imgIcEye,color: Colors.black,))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(57)),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },

                                  obscureText: controller.isShowPassword.value,
                                  contentPadding:
                                  getPadding( top: 18, bottom: 18))),

                              Padding(
                                padding: getPadding(top: getSize(16)),
                                child: Text("lbl_date_of_birth".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .bodyLargeGray600),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowdate();
                                  },
                                  child: Container(
                                    height: getSize(54),
                                      margin: getMargin(top: getSize(6)),
                                      padding: getPadding(
                                          left: getSize(16),
                                          top: getSize(15),
                                          right: getSize(16),
                                          bottom: getSize(15)),
                                      decoration: AppDecoration
                                          .outline2
                                          .copyWith(
                                        color: Colors.white,
                                          borderRadius:
                                          BorderRadiusStyle
                                              .roundedBorder12),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                getPadding(
                                                    top: getSize(2),
                                                    bottom:
                                                    getSize(1)),
                                                child: Obx(() => Text( controller.signUpModelObj.value.dateTxt.isEmpty?"Select Date":controller.signUpModelObj.value.dateTxt.value,
                                                    overflow:
                                                    TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                    TextAlign
                                                        .left,
                                                    style: theme
                                                        .textTheme
                                                        .bodyLarge!.copyWith(
                                                        color: controller.signUpModelObj.value.dateTxt.isEmpty?Color(0xFF7C7C7C):Colors.black
                                                    )))),
                                            CustomImageView(
                                                svgPath:
                                                ImageConstant
                                                    .imgCalendar,
                                                height:
                                                getSize(22.h),
                                                width:
                                                getSize(22.h))
                                          ]))),

                            ]),
                      ),
                      Padding(
                        padding:getPadding(left: getSize(16),right: getSize(16),),
                        child: CustomElevatedButton(
                            text: "lbl_sign_up".tr,
                            margin: getMargin(top: 24.h),
                            buttonStyle: CustomButtonStyles
                                .fillPrimary
                                .copyWith(
                                fixedSize: MaterialStateProperty
                                    .all<Size>(Size(
                                    double.maxFinite,
                                    getSize(54.h)))),
                            buttonTextStyle:
                            theme.textTheme.titleMedium!,
                            onTap: () {
                              if(_formKey.currentState!.validate()){
                                Get.back();

                              }

                            }),
                      ),
                     
                      Padding(
                          padding: getPadding(top: 24.h),
                          child: Text("lbl_or".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .titleMediumBlack900)),
                      Padding(
                          padding: getPadding(top: 24.h,right: getSize(16),left: getSize(16)),
                          child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [

                                Expanded(
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
                                    )
                                ),
                                SizedBox(
                                  width: getSize(16),
                                ),

                                Expanded(
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
                                    )
                                )
                              ])),
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 27,bottom: 26.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_already_have_an2"
                                              .tr,
                                          style: theme
                                              .textTheme.bodyLarge),
                                      TextSpan(
                                          text: "lbl_sign_in".tr,
                                          style: CustomTextStyles
                                              .bodyLargePrimary)
                                    ]),
                                    textAlign: TextAlign.left)),
                          ))
                    ]
                )
            )
        )
    );
  }


  Future<void> onTapRowdate() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.signUpModelObj.value.selectedDateTxt!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.signUpModelObj.value.selectedDateTxt!.value = dateTime;
      controller.signUpModelObj.value.dateTxt.value =
          dateTime.format(SHORT_DATE_WITH_FULL_YEAR);
    }
  }

  onTapSignup() {
    Get.toNamed(
      AppRoutes.genderScreen,
      // Get.back();
    );
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
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}
