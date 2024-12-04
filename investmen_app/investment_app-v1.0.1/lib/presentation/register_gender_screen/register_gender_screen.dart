import 'controller/register_gender_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_radio_button.dart';

class RegisterGenderScreen extends GetWidget<RegisterGenderController> {
  RegisterGenderController registerGenderController =
      Get.put(RegisterGenderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(56.00),
            leadingWidth: 74,
            leading: AppbarIconbutton(
                svgPath: ImageConstant.imgArrowLeftIcon,
                margin: getMargin(left: 24, top: 3, bottom: 3),
                onTap: onTapArrowleft1),
            actions: [
              Container(
                  height: getSize(50.00),
                  width: getSize(50.00),
                  margin: getMargin(left: 227, top: 3, right: 24, bottom: 3),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: getSize(50.00),
                            width: getSize(50.00),
                            child: CircularProgressIndicator(
                                color: ColorConstant.lightBlue900,
                                backgroundColor: ColorConstant.lightGray,
                                value: 2 / 14,
                                strokeWidth: getHorizontalSize(2.00)))),
                    AppbarSubtitle2(
                        text: "2/13",
                        margin:
                            getMargin(left: 0, top: 17, right: 0, bottom: 17))
                  ]))
            ]),
        body: GetBuilder<RegisterGenderController>(
          init: RegisterGenderController(),
          builder: (registerGenderController) => SafeArea(
            child: Container(
                width: size.width,
                padding: getPadding(left: 32, top: 48, right: 32, bottom: 48),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(195.00),
                          child: Text("msg_what_is_your_gender".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterBold32WhiteA700
                                  .copyWith(height: getVerticalSize(1.5)))),
                      SizedBox(
                        height: getVerticalSize(40),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                registerGenderController.setGender(1);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color:
                                            registerGenderController.genderID ==
                                                    1
                                                ? ColorConstant.darkBlack
                                                : ColorConstant.lightGray),
                                    color: ColorConstant.lightGray),
                                child: Padding(
                                  padding: getPadding(bottom: 4),
                                  child: Column(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgMaleIcon,
                                        margin: getMargin(
                                            left: 16, right: 16, top: 26),
                                      ),
                                      SizedBox(
                                        height: getVerticalSize(8),
                                      ),
                                      Text("Male",
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtRobotoRegular16
                                              .copyWith(
                                                  height: getVerticalSize(1.5)))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(left: 46, right: 46),
                            child: Text("Or",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtLightBlack16Width400
                                    .copyWith(height: getVerticalSize(1.5))),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                registerGenderController.setGender(2);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                        registerGenderController.genderID ==
                                            2
                                            ? ColorConstant.darkBlack
                                            : ColorConstant.lightGray),
                                    borderRadius: BorderRadius.circular(8),
                                    color: ColorConstant.lightGray),
                                child: Column(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgFemaleIcon,
                                      margin: getMargin(
                                          left: 16, right: 16, top: 26),
                                    ),
                                    SizedBox(
                                      height: getVerticalSize(8),
                                    ),
                                    Text("Female",
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRobotoRegular16
                                            .copyWith(
                                                height: getVerticalSize(1.5)))
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ])),
          ),
        ),
        bottomNavigationBar: Padding(
            padding: getPadding(left: 24, right: 24, bottom: 40),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomButton(
                  onTap: () => Get.toNamed(AppRoutes.registerDateOfBirthScreen),
                  height: 56,
                  width: 327,
                  text: "lbl_continue".tr)
            ])));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
