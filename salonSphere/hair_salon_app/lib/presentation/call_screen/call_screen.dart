import 'controller/call_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
// ignore: unused_import
import 'package:hair_salon_app/widgets/custom_floating_button.dart';
import 'package:hair_salon_app/widgets/custom_icon_button.dart';

class CallScreen extends GetWidget<CallController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          body: SafeArea(
            child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
              margin: getMarginOrPadding(top: 37, left: 16),
              svgPath: ImageConstant.imgArrowleft,
              height: getSize(20),
              width: getSize(20),
              alignment: Alignment.centerLeft,
              onTap: () {
                onTapImgArrowleft();
              }),
                    Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse23188x188,
                height: getSize(188),
                width: getSize(188),
                radius: BorderRadius.circular(getHorizontalSize(94)),
              ),
              Padding(
                  padding: getPadding(top: 30),
                  child: Text("msg_barbarllea_inova".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold28)),
              Padding(
                  padding: getPadding(top: 12),
                  child: Text("lbl_13_35_min".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBodyGray600)),
            ],
                    )),
                    Padding(
            padding: getPadding(bottom: 41),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomIconButton(
                  height: 58,
                  width: 58,
                  variant: IconButtonVariant.FillGray100,
                  shape: IconButtonShape.CircleBorder29,
                  padding: IconButtonPadding.PaddingAll17,
                  child:
                      CustomImageView(svgPath: ImageConstant.imgVideocamera)),
              CustomIconButton(
                  height: 58,
                  width: 58,
                  margin: getMargin(left: 57),
                  variant: IconButtonVariant.FillRed60001,
                  shape: IconButtonShape.CircleBorder29,
                  onTap: () {
                    onTapBtnMic();
                  },
                  child: CustomImageView(svgPath: ImageConstant.imgMic)),
              CustomIconButton(
                  height: 58,
                  width: 58,
                  margin: getMargin(left: 57),
                  variant: IconButtonVariant.FillGray100,
                  shape: IconButtonShape.CircleBorder29,
                  padding: IconButtonPadding.PaddingAll17,
                  child: CustomImageView(
                      svgPath: ImageConstant.imgIcinboxBlack900)),
            ]),
                    )
                  ]),
          ),
        );
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnMic() {
    Get.toNamed(
      AppRoutes.chatCallScreen,
    );
  }
}
