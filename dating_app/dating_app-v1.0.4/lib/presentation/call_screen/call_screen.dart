

import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import 'controller/call_controller.dart';

class CallScreen extends GetWidget<CallController> {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:getPadding(top: getSize(65) ),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(left: getSize(16)
                   ),
                  child: CustomImageView(
                      svgPath:
                          ImageConstant.imgArrowleftBlack90020x20,
                      height: getSize(20),
                      width: getSize(20),
                      alignment: Alignment.centerLeft,
                      onTap: () {

                        Get.toNamed(AppRoutes.chatsWithSendScreen);
                      }),

                ),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse23,
                    height: getSize(188),
                    width: getSize(188),
                    radius: BorderRadius.circular(
                        getSize(94)),
                    margin: getMargin(top: getSize(214))),
                Padding(
                    padding: getPadding(top: getSize(31), right: getSize(10)),
                    child: Text("lbl_jenny_wilson".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.headlineMedium)),
                Padding(
                    padding: getPadding(top: getSize(12),),
                    child: Text("lbl_13_35_min".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style:
                        CustomTextStyles.bodyLargeGray600)),
              ]),
        ),
        bottomNavigationBar: Padding(
            padding: getPadding( bottom: getSize(40)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 CustomIconButton(
                  height: getHorizontalSize(58),
                  width: getHorizontalSize(58),
                  padding: getPadding(all: 16),
                  decoration: IconButtonStyleHelper.fillGray200,
                  child: CustomImageView(svgPath: ImageConstant.imgAlarm)),
                 CustomIconButton(
                  height: getHorizontalSize(58),
                  width: getHorizontalSize(58),
                  margin: getMargin(left: getSize(57),right: getSize(57)),
                  padding: getPadding(all: 9),
                  decoration: IconButtonStyleHelper.fillRed600,
                  onTap: () {
                    // Get.toNamed(AppRoutes.chatsWithSendScreen);
                    Get.back();
                  },

                  child: CustomImageView(svgPath: ImageConstant.imgMic)),
                 CustomIconButton(
                     height: getHorizontalSize(58),
                     width: getHorizontalSize(58),
                     padding: getPadding(all: 16),
                     decoration: IconButtonStyleHelper.fillGray200,
                     child: CustomImageView(svgPath: ImageConstant.imgChat)),

            ])),
        );
  }




  onTapImgArrowleft() {
    Get.toNamed(
          AppRoutes.locationAccessContainer1Screen,
        );
  }
}
