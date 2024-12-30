import '../../widgets/custom_text_form_field.dart';
import 'controller/register_job_role_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class RegisterJobRoleScreen extends GetWidget<RegisterJobRoleController> {
  TextEditingController nameController = TextEditingController();
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
                onTap: onTapArrowleft8),
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
                                value: 9/14,
                                strokeWidth: getHorizontalSize(2.00)))),
                    AppbarSubtitle2(
                        text: "9/13",
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
                        width: getHorizontalSize(279.00),
                        child: Text("msg_what_do_you_do_at".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterBold32WhiteA700
                                .copyWith(height: getVerticalSize(1.5)))),
                    Container(
                        height: getVerticalSize(28.00),
                        width: getHorizontalSize(207.00),
                        margin: getMargin(top: 25),
                        child:
                            Stack(alignment: Alignment.topCenter, children: [
                              CustomTextFormField(
alignment: Alignment.center,
                                fontStyle: TextFormFieldFontStyle.Inter20Width500White,
                                width: 327,
                                focusNode: FocusNode(),
                                controller:
                                nameController,
                                hintText: "msg_e_g_product_designer".tr,
                                margin: getMargin(top: 6),
                                padding:TextFormFieldPadding.PaddingAll16,
                                textInputAction: TextInputAction.done,
                                textInputType:
                                TextInputType.emailAddress,
                                variant: TextFormFieldVariant.None,
                              ),
                        ])),
                    Spacer(),
                    CustomButton(
                        onTap:() => Get.toNamed(AppRoutes.registerSavingsScreen),
                        height: 56,
                        width: 327,
                        text: "lbl_continue".tr,
                        margin: getMargin(bottom: 0))
                  ])),
        ));
  }

  onTapArrowleft8() {
    Get.back();
  }
}
