import 'package:country_pickers/country.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';

import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dating_app/widgets/custom_phone_number.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/edit_address_controller.dart';

class EditAddressScreen extends GetWidget<EditAddressController> {
  const EditAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    controller.fullnameController.text ='Ronald richards';
    controller.addresslineoneController.text ='Parker Rd. Allentown,';
    controller.addresslinetwoController.text ='New Mexico 31134';
    controller.addresslinetwoController.text ='New Mexico 31134';
    controller.selectcityController.text ='Broome';
    controller.selectstateoneController.text ='New york';
    controller.selectstateController.text ='New york';
    controller.phoneNumberController.text ='(405) 555-0128';

    return Scaffold(

        backgroundColor:Colors.white,

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             CustomAppBarText(
              title: 'Edit address',
             ),
             Divider(
              color: Color(0xFFE7E7E7),
              thickness: getSize(1.5),
             ),
              Expanded(
                child: ListView(
                  padding: getPadding(left: getSize(16),right: getSize(16)),
                  physics:BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      height: getSize(12),
                    ),
                    Text("lbl_name".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge),
                    CustomTextFormField(
                        controller: controller.fullnameController,
                        autofocus: false,
                        margin: getMargin(top: getSize(6)),

                        textStyle: theme.textTheme.bodyLarge!,
                        hintText: "Full Name".tr,
                        hintStyle: theme.textTheme.bodyLarge!.copyWith(
                          color: Color(0xFF7C7C7C),
                        ),
                        borderDecoration: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                        ),
                        enableBorderDecoration: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            )
                        ),
                        textInputAction: TextInputAction.next,
                        filled: true,
                        fillColor: appTheme.gray50),
                    SizedBox(
                      height: getSize(15),
                    ),
                    Text("lbl_address_line_1".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge),
                    CustomTextFormField(
                        controller:
                        controller.addresslineoneController,
                        autofocus: false,
                        margin: getMargin(top: 6),
                        borderDecoration: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                        ),
                        enableBorderDecoration: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            )
                        ),

                        textStyle: theme.textTheme.bodyLarge!,
                        hintText: "Address".tr,
                        hintStyle: theme.textTheme.bodyLarge!.copyWith(
                          color: Color(0xFF7C7C7C),
                        ),

                        textInputAction: TextInputAction.next,
                        filled: true,
                        fillColor: appTheme.gray50),
                    SizedBox(
                      height: getSize(15),
                    ),
                    Text("lbl_address_line_2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge),
                    CustomTextFormField(
                        controller:
                        controller.addresslinetwoController,
                        autofocus: false,
                        margin: getMargin(top: 6),
                        borderDecoration: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                        ),
                        enableBorderDecoration: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            )
                        ),

                        textStyle: theme.textTheme.bodyLarge!,
                        hintText: "Address".tr,
                        hintStyle: theme.textTheme.bodyLarge!,
                        textInputAction: TextInputAction.next,
                        filled: true,
                        fillColor: appTheme.gray50),
                    SizedBox(
                      height: getSize(15),
                    ),
                    Text("lbl_select_city".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge),
                    CustomTextFormField(
                        controller: controller.selectcityController,
                        autofocus: false,
                        margin: getMargin(top:6),

                        textStyle: theme.textTheme.bodyLarge!,
                        hintText: "City".tr,
                        hintStyle: theme.textTheme.bodyLarge!,
                        textInputAction: TextInputAction.next,
                        borderDecoration: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                        ),
                        enableBorderDecoration: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            )
                        ),
                        suffix: Container(
                            margin: getMargin(
                                left: getSize(30),
                                top: getSize(17),
                                right: getSize(18),
                                bottom: getSize(17)),
                            child: CustomImageView(
                                svgPath:
                                ImageConstant.imgRightIcon)),
                        suffixConstraints: BoxConstraints(
                            maxHeight: getHorizontalSize(54)),
                        filled: true,
                        fillColor: appTheme.gray50),
                    SizedBox(
                      height: getSize(15),
                    ),
                    Text("lbl_select_state2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge),
                    CustomTextFormField(
                        controller: controller.selectstateController,
                        autofocus: false,
                        margin: getMargin(top:6),

                        textStyle: theme.textTheme.bodyLarge!,
                        hintText: "State".tr,
                        hintStyle: theme.textTheme.bodyLarge!,
                        textInputAction: TextInputAction.next,
                        borderDecoration: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                        ),
                        enableBorderDecoration: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            )
                        ),
                        suffix: Container(
                            margin: getMargin(
                                left: getSize(30),
                                top: getSize(17),
                                right: getSize(18),
                                bottom: getSize(17)),
                            child: CustomImageView(
                                svgPath:
                                ImageConstant.imgRightIcon)),
                        suffixConstraints: BoxConstraints(
                            maxHeight: getSize(54)),
                        filled: true,
                        fillColor: appTheme.gray50),
                    SizedBox(
                      height: getSize(15),
                    ),
                    Text("lbl_select_country".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge),
                    CustomTextFormField(
                        controller: controller.selectstateoneController,
                        autofocus: false,
                        margin: getMargin(top: 6),
                        borderDecoration: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                        ),
                        enableBorderDecoration: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            )
                        ),

                        textStyle: theme.textTheme.bodyLarge!,
                        hintText: "Country".tr,
                        hintStyle: theme.textTheme.bodyLarge!,
                        textInputAction: TextInputAction.next,
                        suffix: Container(
                            margin: getMargin(
                                left: getSize(30),
                                top: getSize(17),
                                right: getSize(18),
                                bottom: getSize(17)),
                            child: CustomImageView(
                                svgPath:
                                ImageConstant.imgRightIcon)),
                        suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(54)),
                        filled: true,
                        fillColor: appTheme.gray50),

                    Padding(
                        padding: getPadding(top: 9),
                        child: Text("lbl_phone_number".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge)),
                    Padding(
                        padding: getPadding(top: getSize(5), bottom: getSize(5)),
                        child: Obx(() => CustomPhoneNumber(
                            color: appTheme.gray50,

                            country: controller.selectedCountry.value,
                            controller: controller.phoneNumberController,
                            onTap: (Country country) {
                              controller.selectedCountry.value = country;
                            })))
                  ],
                ),
              )
            ]),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_save_changes".tr,
            margin: getMargin(left: getSize(16), right: getSize(16), bottom: getSize(40)),
            buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getVerticalSize(54)))),
            buttonTextStyle: theme.textTheme.titleMedium!,
            onTap: () {
              onTapSavechanges();
            }));
  }

  onTapArrowleft23() {
    Get.back();
  }


  onTapSavechanges() {
    Get.toNamed(
      AppRoutes.myAddressScreen,
    );
  }
}
