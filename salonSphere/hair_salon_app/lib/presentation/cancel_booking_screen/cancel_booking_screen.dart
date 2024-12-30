import 'controller/cancel_booking_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

class CancelBookingScreen extends GetWidget<CancelBookingController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              32,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              32,
            ),
          ),
        ),
        color: ColorConstant.whiteA700,
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Align(
            alignment: Alignment.topCenter,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMarginOrPadding(top: 15),
                        height: getVerticalSize(5),
                        width: getVerticalSize(70),
                        decoration: AppDecoration.white.copyWith(
                            borderRadius:
                                BorderRadius.circular(getVerticalSize(100)),
                            color: ColorConstant.gray8004c),
                      )),
                  Container(
                      margin: getMargin(top: 16),
                      child: Text("lbl_cancel_booking".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtSFProTextBold20)),
                  SizedBox(
                    height: getVerticalSize(16),
                  ),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: ColorConstant.gray300,
                  ),
                  Container(
                      margin: getMargin(top: 16, left: 70, right: 70),
                      child: Text("msg_are_you_sure_want".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtHeadline)),
                  Container(
                      margin: getMargin(left: 47, top: 16, right: 47),
                      child: Text("msg_only_80_of_the".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtBodyGray600)),
                  Padding(
                      padding:
                          getPadding(left: 16, top: 30, right: 16, bottom: 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomButton(
                                height: getVerticalSize(53),
                                text: "lbl_cancel".tr,
                                variant: ButtonVariant.OutlinePink800,
                                fontStyle:
                                    ButtonFontStyle.SFProTextBold18Pink800,
                                onTap: () {
                                  Get.back();
                                },
                              ),
                            ),
                            SizedBox(
                              width: getVerticalSize(23),
                            ),
                            Expanded(
                              child: CustomButton(
                                  height: getVerticalSize(53),
                                  text: "msg_yes_cancel_booking".tr,
                                  fontStyle:
                                      ButtonFontStyle.SFProTextBold15WhiteA700,
                                  onTap: () {
                                    Get.back();
                                    onTapYescancel();
                                  }),
                            )
                          ]))
                ]))
      ]),
    );
  }

  onTapYescancel() {
    Get.toNamed(
      AppRoutes.cancelBookingPaymentScreen,
    );
  }
}
