import 'package:country_pickers/country.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';
import 'package:dating_app/presentation/location_access_container_page/controller/location_access_container_controller.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dating_app/widgets/custom_phone_number.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/add_manually_address_controller.dart';

class AddManuallyAddressScreen extends GetWidget<AddManuallyAddressController> {
  const AddManuallyAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(

        backgroundColor: Colors.white,

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBarText(
                title: 'Add manually address',
              ),
             Expanded(
               child: ListView(
                 padding: EdgeInsets.only(left: getSize(16),right: getSize(16),top: getSize(16)),
                 children: [
                   Text("lbl_name".tr,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.bodyLarge),
                   CustomTextFormField(

                       controller: controller.nameoneController,
                       margin: getMargin(top: getSize(6)),

                       textStyle: theme.textTheme.bodyLarge!,
                       hintText: "full name".tr,
                       hintStyle: theme.textTheme.bodyLarge!.copyWith(
                            color: Color(0xFF7C7C7C),
                       ),
                       textInputAction: TextInputAction.next,
                       filled: true,
                       fillColor: Color(0xFFF8F8F8),),
                   SizedBox(
                     height: getSize(16),
                   ),
                   Text("lbl_address_line_1".tr,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.bodyLarge),
                   CustomTextFormField(
                       controller:
                       controller.addresslineoneController,
                       margin: getMargin(top: getSize(4)),

                       textStyle: theme.textTheme.bodyLarge!,
                       hintText: "address 1".tr,
                       hintStyle: theme.textTheme.bodyLarge!.copyWith(
                          color: Color(0xFF7C7C7C),
                       ),
                       textInputAction: TextInputAction.next,
                       filled: true,
                       fillColor: appTheme.gray50),SizedBox(
                     height: getSize(16),
                   ),

                   Text("lbl_address_line_2".tr,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.bodyLarge),
                   CustomTextFormField(
                       controller:
                       controller.addresslinetwoController,
                       margin: getMargin(top: getSize(4)),

                       textStyle: theme.textTheme.bodyLarge!,
                       hintText: "address 2".tr,
                       hintStyle: theme.textTheme.bodyLarge!.copyWith(
                          color: Color(0xFF7C7C7C),
                       ),
                       textInputAction: TextInputAction.next,
                       filled: true,
                       fillColor: appTheme.gray50),SizedBox(
                     height: getSize(16),
                   ),

                   Text("lbl_select_city".tr,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.bodyLarge),
                   CustomTextFormField(
                       controller: controller.cityController,
                       margin: getMargin(top: getSize(4)),


                       textStyle: theme.textTheme.bodyLarge!,
                       hintText: "Enter city".tr,
                       hintStyle: theme.textTheme.bodyLarge!.copyWith(
                          color: Color(0xFF7C7C7C),
                       ),
                       textInputAction: TextInputAction.next,
                       suffix: Container(
                           margin: getMargin(
                               left: 30,
                               top: 17,
                               right: 18,
                               bottom: 17),
                           child: CustomImageView(
                               svgPath:
                               ImageConstant.imgRightIcon)),
                       suffixConstraints: BoxConstraints(
                           maxHeight: getHorizontalSize(54)),
                       filled: true,
                       fillColor: appTheme.gray50),
                   SizedBox(
                     height: getSize(16),
                   ),
                   Text("lbl_select_state".tr,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.bodyLarge),
                   CustomTextFormField(
                       controller: controller.stateController,
                       margin: getMargin(top: 4),

                       textStyle: theme.textTheme.bodyLarge!,
                       hintText: "Enter State".tr,
                       hintStyle: theme.textTheme.bodyLarge!.copyWith(
                          color: Color(0xFF7C7C7C),
                       ),
                       textInputAction: TextInputAction.next,
                       suffix: Container(
                           margin: getMargin(
                               left: 30,
                               top: 17,
                               right: 18,
                               bottom: 17),
                           child: CustomImageView(
                               svgPath:
                               ImageConstant.imgRightIcon)),
                       suffixConstraints: BoxConstraints(
                           maxHeight: getHorizontalSize(54)),
                       filled: true,
                       fillColor: appTheme.gray50),
                   SizedBox(
                     height: getSize(16),
                   ),
                   Text("lbl_select_country".tr,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.bodyLarge),
                   CustomTextFormField(
                       controller: controller.countryController,
                       margin: getMargin(top: 4),

                       textStyle: theme.textTheme.bodyLarge!,
                       hintText: "Enter country".tr,
                       hintStyle: theme.textTheme.bodyLarge!.copyWith(
                          color: Color(0xFF7C7C7C),
                       ),
                       textInputAction: TextInputAction.next,
                       suffix: Container(
                           margin: getMargin(
                               left: 30,
                               top: 17,
                               right: 18,
                               bottom: 18),
                           child: CustomImageView(
                               svgPath:
                               ImageConstant.imgRightIcon)),
                       suffixConstraints: BoxConstraints(
                           maxHeight: getHorizontalSize(54)),
                       filled: true,
                       fillColor: appTheme.gray50),
                   SizedBox(
                     height: getSize(16),
                   ),
                   Text("lbl_phone_number".tr,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.bodyLarge),
                   SizedBox(
                      height: getSize(4),
                   ),
                   Obx(() => CustomPhoneNumber(

                     color: Color(0xFFF8F8F8),
                       country: controller.selectedCountry.value,
                       controller: controller.phoneNumberController,
                       onTap: (Country country) {
                         controller.selectedCountry.value = country;
                       }))
                 ],
               ),
             )
            ]),
        bottomNavigationBar: GetBuilder<LocationAccessContainerController>(builder: (locController) {
          return CustomElevatedButton(
              onTap: () {
                // PrefData.setLoc(false);
                  locController.changeLoc();
                  Get.back();
              },
              text: "lbl_save".tr,
              margin: getMargin(left: getSize(16), right: getSize(16), bottom: getSize(40)),
              buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size(double.maxFinite, getSize(54)))),
              buttonTextStyle: theme.textTheme.titleMedium!);
        },init: LocationAccessContainerController(),)
    );
  }

 
  onTapArrowleft11() {
    Get.back();
  }
}
