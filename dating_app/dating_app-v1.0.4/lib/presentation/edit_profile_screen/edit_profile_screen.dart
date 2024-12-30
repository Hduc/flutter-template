import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';
import 'package:dating_app/core/utils/validation_functions.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dating_app/widgets/custom_icon_button.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/edit_profile_controller.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    controller.fullnameController.text = 'Ronald richards';
    controller.emailController.text = 'ronaldrichards@gmail.com';
    controller.phonenumberController.text = '(405) 555-0128';
    controller.professiononeController.text = 'Designer';
    controller.genderoneController.text = 'Male';
    controller.aboutController.text = 'I am single 25 years old. I love fitness, traveling, & going out to play. You can find me in Jakarta.';
    return Scaffold(
        backgroundColor: Colors.white,

        body: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomAppBarText(
                    title: 'Edit profile',
                  ),
                  Divider(
                    color: Color(0xFFE7E7E7),
                  ),

                  Expanded(
                    child: ListView(
                      padding: getPadding(left: getSize(16),right: getSize(16),),
                      physics: BouncingScrollPhysics(),
                      children: [
                        SizedBox(
                        height: getSize(30),
                      ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: getSize(104),
                                width: getSize(104),
                                child: Stack(
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                          ImageConstant.imgEllipse225,
                                          height: getSize(104),
                                          width: getSize(104),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(52)),
                                          alignment: Alignment.center),
                                      CustomIconButton(
                                          height: getSize(34),
                                          width: getSize(34),
                                          padding: getPadding(all: getSize(6)),
                                          decoration: IconButtonStyleHelper
                                              .fillWhiteA700,
                                          alignment: Alignment.bottomRight,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCameraBlack900))
                                    ]
                                )
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getSize(40),
                        ),

                        Text("lbl_full_name".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge),
                        CustomTextFormField(
                            controller:
                            controller.fullnameController,
                            autofocus: false,
                            margin: getMargin(top: getSize(6)),
                            contentPadding: getPadding(
                                left: getSize(16),
                                top: getSize(17),
                                right: getSize(16),
                                bottom: getSize(17)),
                            textStyle:
                            theme.textTheme.bodyLarge!,
                            hintText: "Enter Full Name".tr,

                            textInputAction:
                            TextInputAction.next,
                            filled: true,
                            fillColor: appTheme.gray50),
                        SizedBox(height: getSize(16),),
                        Text("lbl_email_address".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge),
                        CustomTextFormField(
                            controller:
                            controller.emailController,
                            autofocus: false,
                            margin: getMargin(top: getSize(6)),
                            contentPadding: getPadding(
                                left: getSize(16),
                                top: getSize(17),
                                right: getSize(16),
                                bottom: getSize(17)),
                            textStyle:
                            theme.textTheme.bodyLarge!,
                            hintText:
                            "Enter Email"
                                .tr,

                            textInputAction:
                            TextInputAction.next,
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
                            fillColor: appTheme.gray50),
                        SizedBox(height: getSize(16),),
                        Text("lbl_phone_number".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge),
                        CustomTextFormField(
                            controller: controller
                                .phonenumberController,
                            autofocus: false,
                            margin: getMargin(top: getSize(6)),
                            contentPadding: getPadding(
                                left: getSize(16),
                                top: getSize(17),
                                right: getSize(16),
                                bottom: getSize(17)),
                            textStyle:
                            theme.textTheme.bodyLarge!,
                            hintText: "Enter Number".tr,

                            textInputAction:
                            TextInputAction.next,
                            filled: true,
                            fillColor: appTheme.gray50),
                        SizedBox(height: getSize(16),),
                        Text("lbl_profession".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge),
                        CustomTextFormField(
                            controller: controller
                                .professiononeController,
                            autofocus: false,
                            margin: getMargin(top: getSize(6)),
                            contentPadding: getPadding(
                                left: getSize(16),
                                top: getSize(17),
                                right: getSize(16),
                                bottom: getSize(17)),
                            textStyle:
                            theme.textTheme.bodyLarge!,
                            hintText: "Profession".tr,

                            textInputAction:
                            TextInputAction.next,
                            filled: true,
                            fillColor: appTheme.gray50),
                        SizedBox(height: getSize(16),),
                        Text("lbl_gender".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge),
                        CustomTextFormField(
                            controller:
                            controller.genderoneController,
                            autofocus: false
                            ,
                            margin: getMargin(top: getSize(6)),
                            contentPadding: getPadding(
                                left: getSize(16),
                                top: getSize(17),
                                right: getSize(16),
                                bottom: getSize(17)),
                            textStyle:
                            theme.textTheme.bodyLarge!,
                            hintText: "Gender".tr,

                            textInputAction:
                            TextInputAction.next,
                            filled: true,
                            fillColor: appTheme.gray50),
                        SizedBox(height: getSize(16),),
                        Text("lbl_about".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge),
                        CustomTextFormField(
                            controller:
                            controller.aboutController,
                            autofocus: false,
                            margin: getMargin(top: getSize(6)),
                            contentPadding: getPadding(
                                left: getSize(16),
                                top: getSize(17),
                                right: getSize(16),
                                bottom: getSize(17)),
                            textStyle:
                            theme.textTheme.bodyLarge!,
                            hintText:
                            "About".tr,
                            maxLines: 5,
                            filled: true,
                            fillColor: appTheme.gray50),
                        SizedBox(height: getSize(16),),
                      ],
                    ),
                  ),





                ]
            )
        ),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_save_changes".tr,
            margin: getMargin(left: getSize(16), right: getSize(16), bottom: getSize(40)),
            buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getVerticalSize(54)))),
            buttonTextStyle: theme.textTheme.titleMedium!,
            onTap: () {
              Get.back();
            }));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
    onTapArrowleft19() {
    Get.back();
  }

  /// Navigates to the myProfileScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myProfileScreen.
  onTapSavechanges() {
    Get.toNamed(
      AppRoutes.myProfileScreen,
    );
  }
}
