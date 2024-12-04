import 'controller/register_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/core/utils/validation_functions.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_drop_down.dart';
import 'package:investment_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterAddressScreen extends GetWidget<RegisterAddressController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(56.00),
            leadingWidth: 74,
            leading: AppbarIconbutton(
                svgPath: ImageConstant.imgArrowLeftIcon,
                margin: getMargin(left: 24, top: 3, bottom: 3),
                onTap: onTapArrowleft13),
            actions: [
              Container(
                  height: getSize(50.00),
                  width: getSize(50.00),
                  margin:
                      getMargin(left: 227, top: 3, right: 24, bottom: 3),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: getSize(50.00),
                            width: getSize(50.00),
                            child: CircularProgressIndicator(
                                color: ColorConstant.lightBlue900,
                                backgroundColor: ColorConstant.lightGray,
                                value: 12/14,
                                strokeWidth: getHorizontalSize(2.00)))),
                    AppbarSubtitle2(
                        text: "12/13",
                        margin: getMargin(
                            left: 0, top: 17, right: 0, bottom: 17))
                  ]))
            ]),
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: Container(
                  width: size.width,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: getHorizontalSize(327.00),
                            margin: getMargin(top: 48),
                            child: Text("msg_what_is_your_address".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtInterBold32WhiteA700
                                    .copyWith(
                                        height: getVerticalSize(1.5)))),
                        Expanded(
                          child: Container(

                              width: size.width,
                              margin: getMargin(top: 25),
                              padding: getPadding(all: 24),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL32),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_street_address".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium12
                                            .copyWith(
                                                height: getVerticalSize(1.00))),
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.inputbaseController,
                                        hintText: "msg_type_your_email".tr,
                                        margin: getMargin(top: 6),
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
                                        }),
                                    Padding(
                                        padding: getPadding(top: 18),
                                        child: Text("lbl_city".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium12
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.00)))),
                                    CustomDropDown(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 16),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownGray800,color: ColorConstant.lightBlack,)),
                                        hintText: "msg_select_your_city".tr,
                                        margin: getMargin(top: 5),
                                        shape: DropDownShape.RoundedBorder16,
                                        padding: DropDownPadding.PaddingT16,
                                        fontStyle:
                                            DropDownFontStyle.InterRegular16,
                                        items: controller
                                            .registerAddressModelObj
                                            .value
                                            .dropdownItemList,
                                        onChanged: (value) {
                                          controller.onSelected(value);
                                        }),
                                    Padding(
                                        padding: getPadding(top: 18),
                                        child: Text("lbl_country".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium12
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.00)))),
                                    CustomDropDown(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 16),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownGray800,color: ColorConstant.lightBlack)),
                                        hintText: "msg_select_your_country".tr,
                                        margin: getMargin(top: 5),
                                        shape: DropDownShape.RoundedBorder16,
                                        padding: DropDownPadding.PaddingT16,
                                        fontStyle:
                                            DropDownFontStyle.InterRegular16,
                                        items: controller
                                            .registerAddressModelObj
                                            .value
                                            .dropdownItemList1,
                                        onChanged: (value) {
                                          controller.onSelected1(value);
                                        }),
                                    Spacer(),
                                    CustomButton(
                                      onTap: () => Get.toNamed(AppRoutes.registerSelfieWIdCardOneScreen),
                                        height: 56,
                                        width: 327,
                                        text: "lbl_continue".tr,
                                        margin: getMargin(bottom: 15))
                                  ])),
                        )
                      ]))),
        ));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
