import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/register_name_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class RegisterNameScreen extends GetWidget<RegisterNameController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                onTap: onTapArrowleft),
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
                                value: 1/14,
                                strokeWidth: getHorizontalSize(2.00)))),
                    AppbarSubtitle2(
                        text: "1/13",
                        margin: getMargin(
                            left: 0, top: 17, right: 0, bottom: 17))
                  ]))

            ]),
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 52, right: 24, bottom: 52),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_what_is_your_name".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold32WhiteA700
                              .copyWith(height: getVerticalSize(1.5))),
                      Container(
                          height: getVerticalSize(28.00),
                          width: getHorizontalSize(169.00),
                          margin: getMargin(top: 29),
                          child:
                              Stack( children: [
                                Center(
                                  child: CustomTextFormField(
alignment: Alignment.centerRight,
                                    fontStyle: TextFormFieldFontStyle.Inter20Width500White,
                                      width: 327,
                                      focusNode: FocusNode(),
                                      controller:
                                      controller.nameController,
                                      hintText: "msg_e_g_jack_sparrow".tr,
                                      margin: getMargin(top: 6),
                                      padding:TextFormFieldPadding.PaddingAll0,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                      TextInputType.emailAddress,
                                      variant: TextFormFieldVariant.None,
                                      validator: (value) {
                                        if (value == null ) {
                                          return "Please enter valid Name";
                                        }
                                        return null;
                                      }
                                      ),
                                ),
                          ])),
                      Spacer(),
                      CustomButton(
                       onTap:() {
                         if(_formKey.currentState!.validate()){
                         Get.toNamed(AppRoutes.registerGenderScreen);}
                       },
                          height: 56,
                          width: 327,
                          text: "lbl_continue".tr,
                          margin: getMargin(bottom: 0))
                    ])),
          ),
        ));
  }

  onTapArrowleft() {
    Get.back();
  }
}
