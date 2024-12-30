import '../../widgets/custom_text_form_field.dart';
import 'controller/register_where_you_born_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class RegisterWhereYouBornScreen
    extends GetWidget<RegisterWhereYouBornController> {
  TextEditingController nameController  = TextEditingController();
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
                onTap: onTapArrowleft3),
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
                                value: 4/13,
                                strokeWidth: getHorizontalSize(2.00)))),
                    AppbarSubtitle2(
                        text: "4/13",
                        margin: getMargin(
                            left: 0, top: 17, right: 0, bottom: 17))
                  ]))
            ]),
        body: SafeArea(
          child: Container(
              width: size.width,
              padding: getPadding(left: 24, top: 49, right: 24, bottom: 49),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: getHorizontalSize(250.00),
                        child: Text("msg_where_were_you_born".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterBold32WhiteA700
                                .copyWith(height: getVerticalSize(1.5)))),
                    Container(
                        height: getVerticalSize(28.00),
                        width: getHorizontalSize(130.00),
                        margin: getMargin(top: 31),
                        child:
                            Stack(alignment: Alignment.topCenter, children: [
                              CustomTextFormField(

                                fontStyle: TextFormFieldFontStyle.Inter20Width500White,
                                width: 327,
                                focusNode: FocusNode(),
                                hintText: "lbl_e_g_new_york".tr,
                                margin: getMargin(top: 6),
                                padding:TextFormFieldPadding.PaddingAll0,
                                textInputAction: TextInputAction.done,
                                textInputType:
                                TextInputType.emailAddress,
                                controller: nameController,
                                variant: TextFormFieldVariant.None,
                                // validator: (value) {
                                //   if (value == null ||
                                //       (!isValidEmail(value,
                                //           isRequired: true))) {
                                //     return "Please enter valid email";
                                //   }
                                //   return null;
                                // }
                              ),
                        ])),
                    Spacer(),
                    CustomButton(
                        onTap:() => Get.toNamed(AppRoutes.registerHopeToAchieveScreen),
                        height: 56,
                        width: 327,
                        text: "lbl_continue".tr,
                        margin: getMargin(bottom:0))
                  ])),
        ));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
