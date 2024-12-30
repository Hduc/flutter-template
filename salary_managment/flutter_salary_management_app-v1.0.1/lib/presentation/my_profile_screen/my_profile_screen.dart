import 'common/my_profilr_common.dart';
import 'controller/my_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MyProfileScreen extends GetWidget<MyProfileController> {
  MyProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                  actions: [
                    AppbarTrailingImage(
                        imagePath: ImageConstant.imgIcEdit,
                        margin: EdgeInsets.only(right: 16.h),
                        // margin: E≥dgeInsets.fromLTRB(16.h, 29.v, 16.h, 26.v),
                        onTap: () {
                          onTapIcEdit();
                        })
                  ],
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowLeft,

                      onTap: () {
                        onTapArrowLeft();
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(
                    text: "lbl_my_profile".tr,
                  ),
                ),
              ),
              Expanded(child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 103.adaptSize,
                        width: 103.adaptSize,
                        child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.profile,
                                  height: 100.adaptSize,
                                  width: 100.adaptSize,
                                  alignment: Alignment.center),
                              // CustomIconButton(
                              //     height: 34.adaptSize,
                              //     width: 34.adaptSize,
                              //     padding: EdgeInsets.all(7.h),
                              //     decoration:
                              //     IconButtonStyleHelper.fillGrayTL17,
                              //     alignment: Alignment.bottomRight,
                              //     child: CustomImageView(
                              //         imagePath: ImageConstant.imgIcCamera))
                            ])),
                    SizedBox(height: 40.v),
                    MyProfileCommon(
                        text: "name".tr,
                        secondText:  "Ronald richards".tr),

                    // CustomFloatingTextField(
                    //     controller: controller.nameController,
                    //     labelText: "lbl_name".tr,
                    //     labelStyle: theme.textTheme.bodyLarge!,
                    //     hintText: "lbl_name".tr,
                    //     validator: (value) {
                    //       if (!isText(value)) {
                    //         return "err_msg_please_enter_valid_text".tr;
                    //       }
                    //       return null;
                    //     }),
                    SizedBox(height: 16.v),
                    MyProfileCommon(
                        text: "Email address".tr,
                        secondText:  "ronaldrichards@gmail.com".tr),
                    SizedBox(height: 16.v),
                    MyProfileCommon(
                        text: "Phone number".tr,
                        secondText:  "(219) 555-0114".tr),
                    SizedBox(height: 5.v)
                  ],
                ),
              ))

            ])));
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
  //       title: AppbarSubtitle(text: "lbl_my_profile".tr),
  //       actions: [
  //         AppbarTrailingImage(
  //             imagePath: ImageConstant.imgIcEdit,
  //             margin: EdgeInsets.fromLTRB(16.h, 29.v, 16.h, 26.v),
  //             onTap: () {
  //               onTapIcEdit();
  //             })
  //       ],
  //       styleType: Style.bgOutline);
  // }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapIcEdit() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}
