import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/core/utils/validation_functions.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_icon_button.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(66),
              leadingWidth: 44,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleftBlack900,
                  margin: getMargin(left: 20, top: 17, bottom: 25),
                  onTap: () {
                    onTapArrowleft20();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_edit_profile".tr),
              styleType: Style.bgFillWhiteA700),
          body: Form(
              key: _formKey,
              child: SafeArea(
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 20, top: 24, right: 20, bottom: 24),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(100),
                                    width: getSize(100),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse25100x100,
                                              height: getSize(100),
                                              width: getSize(100),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(50)),
                                              alignment: Alignment.center),
                                          CustomIconButton(
                                              height: 32,
                                              width: 32,
                                              variant: IconButtonVariant.White,
                                              shape: IconButtonShape.CircleBorder16,
                                              alignment: Alignment.bottomRight,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgClockBlack900))
                                        ])),
                                CustomTextFormField(
                                    fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                                    controller: controller.inputController,
                                    hintText: "lbl_john2".tr,
                                    margin: getMargin(top: 40),
                                    padding: TextFormFieldPadding.PaddingT19_2),
                                CustomTextFormField(
                                    fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                                    controller: controller.inputoneController,
                                    hintText: "lbl_abram2".tr,
                                    margin: getMargin(top: 16),
                                    padding: TextFormFieldPadding.PaddingT19_2),
                                CustomTextFormField(
                                    fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                                    controller: controller.emailController,
                                    hintText: "msg_johnabram_gmail_com".tr,
                                    margin: getMargin(top: 16, bottom: 5),
                                    padding: TextFormFieldPadding.PaddingT19_2,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value, isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    })
                              ]),
                        ),
                       CustomButton(onTap: (){
                        Get.back();
                       },
                           height: getVerticalSize(56), text: "lbl_save".tr)
                      ],
                    )),
              )),
         ),
    );
  }

  onTapArrowleft20() {
    Get.back();
  }
}
