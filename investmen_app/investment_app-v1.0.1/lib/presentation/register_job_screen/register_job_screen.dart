import 'controller/register_job_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_radio_button.dart';

class RegisterJobScreen extends GetWidget<RegisterJobController> {
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
                onTap: onTapArrowleft6),
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
                                value: 0.5,
                                strokeWidth: getHorizontalSize(2.00)))),
                    AppbarSubtitle2(
                        text: "7/13",
                        margin: getMargin(
                            left: 0, top: 17, right: 0, bottom: 17))
                  ]))
            ]),
        body: SafeArea(
          child: Container(
              width: size.width,
              padding: getPadding(left: 24, top: 48, right: 24, bottom: 40),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(317.00),
                              child: Text("msg_what_do_you_do_for".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtInterBold32WhiteA700
                                      .copyWith(height: getVerticalSize(1.5)))),
                          Padding(
                              padding: getPadding(top: 25, bottom: 6),
                              child: Obx(() => Column(children: [
                                    CustomRadioButton(
                                        text: "lbl_i_m_employed".tr,
                                        value: controller
                                            .registerJobModelObj.value.radioList[0],
                                        groupValue: controller.radioGroup.value,
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        }),
                                    CustomRadioButton(
                                        text: "msg_i_m_a_professional".tr,
                                        value: controller
                                            .registerJobModelObj.value.radioList[1],
                                        groupValue: controller.radioGroup.value,
                                        margin: getMargin(top: 8),
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        }),
                                    CustomRadioButton(
                                        text: "msg_i_m_a_enterpreneur".tr,
                                        value: controller
                                            .registerJobModelObj.value.radioList[2],
                                        groupValue: controller.radioGroup.value,
                                        margin: getMargin(top: 8),
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        }),
                                    CustomRadioButton(
                                        text: "msg_i_m_a_freelancer".tr,
                                        value: controller
                                            .registerJobModelObj.value.radioList[3],
                                        groupValue: controller.radioGroup.value,
                                        margin: getMargin(top: 8),
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        }),
                                    CustomRadioButton(
                                        text: "lbl_i_m_a_student".tr,
                                        value: controller
                                            .registerJobModelObj.value.radioList[4],
                                        groupValue: controller.radioGroup.value,
                                        margin: getMargin(top: 8),
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        })
                                  ])))
                        ]),
                  ),
                  Padding(
                      padding: getPadding(left: 0, right: 0, bottom: 0),
                      child:
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        CustomButton(onTap:() => Get.toNamed(AppRoutes.registerCompanyNameScreen),height: 56, width: 327, text: "lbl_continue".tr)
                      ]))
                ],
              )),
        ),
         );
  }

  onTapArrowleft6() {
    Get.back();
  }
}
