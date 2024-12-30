// ignore_for_file: unused_element

import '../../core/country_picker/country.dart';
import '../../core/country_picker/country_picker_dialog.dart';
import '../../core/country_picker/utils/utils.dart';
import '../sign_up_screen/controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController phoneNumberController =
      TextEditingController(text: "(480) 555-0103");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onTapArrowleft31();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_profile".tr),
            styleType: Style.bgFillWhiteA700,
            actions: [
              CustomImageView(
                onTap: () {
                  Get.toNamed(AppRoutes.fillYourProfileScreen);
                },
                margin: getMarginOrPadding(right: 16),
                svgPath: Constant.imagePath + "edit.svg",
                height: getVerticalSize(24),
                width: getVerticalSize(24),
              )
            ]),
        body: Form(
            key: _formKey,
            child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: getVerticalSize(110),
                            width: getHorizontalSize(120),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse18,
                                      height: getSize(110),
                                      width: getSize(110),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(55)),
                                      alignment: Alignment.centerLeft),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgFloatingicon,
                                      height: getSize(30),
                                      width: getSize(30),
                                      alignment: Alignment.bottomRight,
                                      margin: getMargin(bottom: 22))
                                ]))),
                    Padding(
                        padding: getPadding(top: 28, right: 16, left: 16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody),
                              Container(
                                margin: getMarginOrPadding(top: 10),
                                padding: getPadding(left: 16, right: 16),
                                height: 61,
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(16)),
                                ),
                                alignment: Alignment.centerLeft,
                                child: Text("lbl_ronald_richards".tr,
                                    style: AppStyle.txtBody),
                              ),
                              Divider(
                                color: ColorConstant.gray300,
                                height: 0,
                                thickness: 1,
                              )
                            ])),
                    Padding(
                        padding: getPadding(top: 30, right: 16, left: 16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_phone_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody),
                              Obx(
                                () => Padding(
                                  padding: getPadding(top: 9),
                                  child: Row(
                                    children: [
                                      IntrinsicWidth(
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                // _openCountryPicker(context);
                                              },
                                              child: Container(
                                                height: getVerticalSize(62),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.whiteA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      16,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 15,
                                                        top: 23,
                                                        bottom: 23,
                                                      ),
                                                      child: CountryPickerUtils
                                                          .getDefaultFlagImage(
                                                        controller
                                                            .selectedCountry.value,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 8,
                                                        right: 22,
                                                      ),
                                                      child: Text(
                                                        "+${controller.selectedCountry.value.phoneCode}",
                                                        style: AppStyle
                                                            .txtSFProTextRegular17,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              color: ColorConstant.gray300,
                                              height: 0,
                                              thickness: 1,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: getVerticalSize(8),),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Container(
                                              // padding: getPadding(left: 8),
                                              height: getVerticalSize(62),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius: BorderRadius.circular(
                                                    getHorizontalSize(16)),
                                              ),
                                              alignment: Alignment.centerLeft,
                                              child: Text("(480) 555-0103",
                                                  style: AppStyle.txtBody),
                                            ),
                                            Divider(
                                              color: ColorConstant.gray300,
                                              height: 0,
                                              thickness: 1,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ])),
                    Padding(
                        padding: getPadding(top: 30, right: 16, left: 16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody),
                              Container(
                                margin: getMarginOrPadding(top: 10),
                                padding: getPadding(left: 16, right: 16),
                                height: 61,
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(16)),
                                ),
                                alignment: Alignment.centerLeft,
                                child: Text("msg_ronaldrich_gmail_com2".tr,
                                    style: AppStyle.txtBody),
                              ),
                              Divider(
                                color: ColorConstant.gray300,
                                height: 0,
                                thickness: 1,
                              )
                            ])),
                  ]),
            )));
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );

  void _openCountryPicker(BuildContext context) => showModalBottomSheet(
        backgroundColor: ColorConstant.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(getHorizontalSize(32)),
              topRight: Radius.circular(getHorizontalSize(32))),
        ),
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) =>
              controller.selectedCountry.value = country,
          itemBuilder: _buildDialogItem,
        ),
      );

  onTapArrowleft31() {
    Get.back();
  }
}
