import '../../widgets/custom_text_form_field.dart';
import 'controller/register_company_name_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class RegisterCompanyNameScreen
    extends GetWidget<RegisterCompanyNameController> {
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
                onTap: onTapArrowleft7),
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
                                value: 8/14,
                                strokeWidth: getHorizontalSize(2.00)))),
                    AppbarSubtitle2(
                        text: "8/13",
                        margin: getMargin(
                            left: 0, top: 17, right: 0, bottom: 17))
                  ]))
            ]),
        body: SafeArea(
          child: Container(
              width: size.width,
              padding: getPadding(left: 24, top: 48, right: 24, bottom: 48),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Column(
                   children: [
                     Container(
                         width:double.infinity,
                         child: Text("msg_what_s_the_name".tr,
                             maxLines: null,
                             textAlign: TextAlign.center,
                             style: AppStyle.txtInterBold32WhiteA700
                                 .copyWith(height: getVerticalSize(1.05)))),
                     Container(
                         width: getHorizontalSize(281.00),
                         margin: getMargin(top: 9),
                         child: Text("msg_regulations_require".tr,
                             maxLines: null,
                             textAlign: TextAlign.center,
                             style: AppStyle.txtInterRegular16Bluegray10001
                                 .copyWith(height: getVerticalSize(1.5)))),
                     Container(
                         height: getVerticalSize(28.00),
                         width: getHorizontalSize(106.00),
                         margin: getMargin(top: 6),
                         child:
                         Stack(alignment: Alignment.topCenter, children: [
                           CustomTextFormField(

                             fontStyle: TextFormFieldFontStyle.Inter20Width500White,
                             width: 327,
                             focusNode: FocusNode(),
                             controller:
                             nameController,
                             hintText: "lbl_e_g_google".tr,
                             margin: getMargin(top: 6),
                             padding:TextFormFieldPadding.PaddingAll0,
                             textInputAction: TextInputAction.done,
                             textInputType:
                             TextInputType.emailAddress,
                             variant: TextFormFieldVariant.None,
                           ),
                         ])),
                   ],
                 ),
                    CustomButton(
                        onTap:() => Get.toNamed(AppRoutes.registerJobRoleScreen),
                        height: 56,
                        width: 327,
                        text: "lbl_continue".tr,
                        margin: getMargin(top: 0, bottom: 0))

                  ])),
        ));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
