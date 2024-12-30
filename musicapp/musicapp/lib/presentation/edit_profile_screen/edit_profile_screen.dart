import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/core/utils/validation_functions.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';
import 'package:musicapp/widgets/custom_icon_button.dart';
import 'package:musicapp/widgets/custom_text_form_field.dart';

import 'controller/edit_profile_controller.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  EditProfileController controller = Get.put(EditProfileController());

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.firstnameController.text = "John";
    controller.lastnameController.text = "Abram";
    controller.emailoneController.text = "johnabram@gmail.com";
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
                    svgPath:  PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,
                    margin: getMargin(left: 20, top: 29, bottom: 28),
                    onTap: () {
                      onTapArrowleft13();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_edit_profile".tr),
                styleType: Style.bgFill),
            body: Form(
                key: _formKey,
                child: Container(
                  color: appTheme.bgColor,
                    width: double.maxFinite,
                    padding: getPadding(
                        left: 20, top: 44, right: 20, bottom: 24),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(right: 115),
                              child: Row(children: [
                                SizedBox(
                                    height: getSize(80),
                                    width: getSize(80),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse225,
                                              height: getSize(80),
                                              width: getSize(80),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(40)),
                                              alignment: Alignment.center),
                                          CustomIconButton(
                                              height: 28,
                                              width: 28,
                                              padding: getPadding(all: 4),
                                              decoration:
                                                  IconButtonStyleHelper
                                                      .fillPrimaryTL14,
                                              alignment:
                                                  Alignment.bottomRight,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgClockBlack90028x28))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 15, top: 14, bottom: 14),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_john_abram".tr,
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleLarge),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "msg_johnabram_gmail_com"
                                                      .tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextThemeHelper
                                                      .bodyLargeOpenSansGray600
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.16))))
                                        ]))
                              ])),
                          Padding(
                              padding: getPadding(top: 42),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_first_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextThemeHelper
                                            .bodyLargeGray600),
                                    CustomTextFormField(
                                        controller:
                                            controller.firstnameController,
                                        margin: getMargin(top: 5),
                                        contentPadding: getPadding(
                                            left: 16,
                                            top: 18,
                                            right: 16,
                                            bottom: 18),
                                        textStyle:
                                        TextThemeHelper.text16width400Black,
                                        // textStyle:
                                        //     theme.textTheme.bodyLarge!,
                                        hintText: "lbl_first_name".tr,
                                        hintStyle:
                                        TextThemeHelper.bodyLargeGray600,
                                        textInputAction:
                                            TextInputAction.next)
                                  ])),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_last_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextThemeHelper
                                            .bodyLargeGray600),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller:
                                            controller.lastnameController,
                                        margin: getMargin(top: 5),
                                        contentPadding: getPadding(
                                            left: 16,
                                            top: 18,
                                            right: 16,
                                            bottom: 18),
                                        textStyle:
                                        TextThemeHelper.text16width400Black,
                                        // textStyle:
                                        //     theme.textTheme.bodyLarge!,
                                        hintText: "lbl_last_name".tr,
                                        hintStyle:
                                        TextThemeHelper.bodyLargeGray600,
                                        // hintStyle:
                                        //     theme.textTheme.bodyLarge!,
                                        textInputAction:
                                            TextInputAction.next)
                                  ])),
                          Padding(
                              padding: getPadding(top: 18, bottom: 5),
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
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller:
                                            controller.emailoneController,
                                        margin: getMargin(top: 5),
                                        contentPadding: getPadding(
                                            left: 15,
                                            top: 18,
                                            right: 15,
                                            bottom: 18),
                                        textStyle:
                                        theme.textTheme.bodyLarge!.copyWith(
                                            color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white
                                        ),
                                        // textStyle:
                                        //     theme.textTheme.bodyLarge!,
                                        hintText:
                                            "lbl_email_address".tr,
                                        hintStyle:
                                        TextThemeHelper.bodyLargeGray600,
                                        // hintStyle:
                                        //     theme.textTheme.bodyLarge!,
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
            bottomNavigationBar: CustomElevatedButton(
              onTap: (){
                Get.back();
              },
                text: "lbl_save".tr,
                margin: getMargin(left: 20, right: 20, bottom: 32),
                buttonStyle: ButtonThemeHelper.fillDeeppurpleA200.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(54)))),
                buttonTextStyle: TextThemeHelper.titleMediumPrimary_1)));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
