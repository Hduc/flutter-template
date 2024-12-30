import '../sign_up_screen/custom_country_piker.dart';
import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/core/utils/validation_functions.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_icon_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: _buildAppBar(),
        body: Form(
            key: _formKey,
            child: Column(children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.v),
                // decoration: AppDecoration.outlineGray300,
                decoration: BoxDecoration(
                  // color: appTheme.gray200,
                  border: Border(
                    bottom: BorderSide(
                      color: appTheme.gray200,
                      width: 1.h,
                    ),
                  ),
                ),
                child: CustomAppBar(
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowLeft,
                      // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                      onTap: () {
                        onTapArrowLeft();
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(
                    text: "lbl_edit_profile".tr,
                  ),
                ),
              ),
     GetBuilder<EditProfileController>(init:EditProfileController(),builder: (controller) {
       return          SizedBox(
           height: 103.adaptSize,
           width: 103.adaptSize,
           child: Stack(
               alignment: Alignment.bottomRight,
               children: [
                 controller.image==null?CustomImageView(
                     imagePath: ImageConstant.profile,
                     height: 100.adaptSize,
                     width: 100.adaptSize,
                     radius: BorderRadius.circular(50.h),
                     alignment: Alignment.center):Container(
                   height: 100.adaptSize,
                   width: 100.adaptSize,
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       // borderRadius: BorderRadius.circular(40.h),
                       image: DecorationImage(
                           image: FileImage(controller.image!),
                           fit: BoxFit.cover
                       )
                   ),
                 ),
                 CustomIconButton(onTap: () {
                   showPicker(context);
                   controller.update();
                 },
                     height: 34.adaptSize,
                     width: 34.adaptSize,
                     padding: EdgeInsets.all(7.h),
                     decoration:
                     IconButtonStyleHelper.fillGrayTL17,
                     alignment: Alignment.bottomRight,
                     child: CustomImageView(
                         imagePath: ImageConstant.imgIcCamera))
               ]));
     },),
             Expanded(
                 child: ListView(
                   padding: EdgeInsets.symmetric(horizontal: 16.h),
               children: [
                 SizedBox(height: 42.v),
                 _buildMasterUsername(),
                 SizedBox(height: 18.v),
                 _buildMasterUsername1(),
                 SizedBox(height: 18.v),
                 Align(
                     alignment: Alignment.centerLeft,
                     child: Text("lbl_phone_number".tr,
                         style: theme.textTheme.bodyLarge)),
                 SizedBox(height: 5.v),
                 _buildPhoneNumber(),
                 SizedBox(height: 5.v),
               ],
             ))
            ])),
        bottomNavigationBar: _buildSave());
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //       leadingWidth: 40.h,
  //       leading: AppbarLeadingImage(
  //           imagePath: ImageConstant.imgArrowLeft,
  //           margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
  //           onTap: () {
  //             onTapArrowLeft();
  //           }),
  //       centerTitle: true,
  //       title: AppbarSubtitle(text: "lbl_edit_profile".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Section Widget
  Widget _buildProfilePhoto() {
    return CustomTextFormField(
        controller: controller.profilePhotoController,
        hintText: "enter full name".tr,validator: (value) {
          if (value !.isEmpty) {
            return "please enter full name".tr;
          }
          return null;
        },);
  }

  /// Section Widget
  Widget _buildMasterUsername() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_full_name".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      _buildProfilePhoto()
    ]);
  }

  /// Section Widget
  Widget _buildMasterUsernameEmail() {
    return CustomTextFormField(

        controller: controller.masterUsernameEmailController,
        hintText: "enter email address".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        }
        );
  }

  /// Section Widget
  Widget _buildMasterUsername1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email_address".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      _buildMasterUsernameEmail()
    ]);
  }

  /// Section Widget
  Widget _buildPhoneNumber() {

    return CustomTextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "please enter phone number".tr;
        }
        return null;
      },
      prefix: CustomCountryCodePicker(

        initialSelection: "+91",padding: EdgeInsets.zero,
        showCountryOnly: true,alignLeft: false,showDropDownButton: true,
        onChanged: (value) {
          controller.countryCode.value = value.toString();
          print("value===$value");

        },),
      textInputAction: TextInputAction.next,
      controller: controller.phoneNumberController,
      hintText: "enter phone number ".tr,
      textInputType: TextInputType.phone,
    );
      // Obx(() => CustomPhoneNumber(
      //   country: controller.selectedCountry.value,
      //   controller: controller.phoneNumberController,
      //   onTap: (Country value) {
      //     controller.selectedCountry.value = value;
      //   }));
  }

  /// Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Get.back();
          }
        },
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v));
  }
  void showPicker(context) {
    showModalBottomSheet(
        useSafeArea: true,
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Gallery'),
                    onTap: () {
                      controller.imgFromGallery();
                      Get.back();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    controller.imgFromCamera();
                    Get.back();
                  },
                ),
              ],
            ),
          );
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
