import 'package:hair_salon_app/presentation/sign_up_screen/controller/sign_up_controller.dart';

import '../../core/country_picker/country.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/core/utils/validation_functions.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';
import 'package:hair_salon_app/widgets/custom_phone_number.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FillYourProfileScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController userNameController =
      TextEditingController(text: 'Ronald Richards');
  TextEditingController emailController =
      TextEditingController(text: 'ronaldrich@gmail.com');
  TextEditingController phoneNumberController =
      TextEditingController(text: '(480) 555-0103');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(26),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 28, bottom: 28),
                    onTap: () {
                      onTapArrowleft32();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_edit_profile".tr),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 22, right: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getVerticalSize(110),
                                  width: getHorizontalSize(121),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse18,
                                            height: getSize(110),
                                            width: getSize(110),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(55)),
                                            alignment: Alignment.centerLeft),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFloatingicon,
                                            height: getSize(30),
                                            width: getSize(30),
                                            alignment: Alignment.bottomRight,
                                            margin: getMargin(bottom: 21))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 30),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody),
                                    CustomTextFormField(
                                        controller: userNameController,
                                        hintText: "Full Name",
                                        margin: getMargin(top: 10))
                                  ])),
                          Padding(
                              padding: getPadding( top: 30),
                              child: Text("lbl_phone_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody)),
                          Padding(
                              padding: getPadding(top: 10),
                              child: Obx(() => CustomPhoneNumber(
                                  country: controller.selectedCountry.value,
                                  controller: phoneNumberController,
                                  onTap: (Country country) {
                                    controller.selectedCountry.value = country;
                                  }))),
                          Padding(
                              padding: getPadding(top: 30),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody),
                                    CustomTextFormField(
                                        controller: emailController,
                                        hintText: "Email Address",
                                        margin: getMargin(top: 10),
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
                                        })
                                  ]))
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(53),
                text: "lbl_save".tr,
                margin: getMargin(left: 16, right: 16, bottom: 40),
                onTap: () {
                  onTapSave();
                })));
  }

  onTapSave() {
    Get.back();
  }

  onTapArrowleft32() {
    Get.back();
  }
}
