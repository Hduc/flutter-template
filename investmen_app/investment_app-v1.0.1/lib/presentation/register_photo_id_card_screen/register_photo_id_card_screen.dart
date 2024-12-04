import 'controller/register_photo_id_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_title.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_floating_button.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class RegisterPhotoIdCardScreen
    extends GetWidget<RegisterPhotoIdCardController> {
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
                onTap: onTapArrowleft11),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_photo_id_card".tr)),
        body: SafeArea(
          child: Container(
              width: size.width,
              padding: getPadding(top: 13, bottom: 13),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(top: 128),
                        child: Text("msg_please_point_the".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular16
                                .copyWith(height: getVerticalSize(1.24)))),
                    Spacer(),
                    Padding(
                        padding: getPadding(bottom: 43,right: 72,left: 72),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          CustomIconButton(
                              height: 44,
                              width: 44,
                              margin: getMargin(top: 18, bottom: 18),
                              variant: IconButtonVariant.FillWhiteA700,
                              shape: IconButtonShape.CircleBorder22,
                              padding: IconButtonPadding.PaddingAll10,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgBookmark)),
                          Container(
                              height: getSize(80.00),
                              width: getSize(80.00),
                              padding: getPadding(all: 8),
                              decoration: AppDecoration.outlineBlue700
                                  .copyWith(
                                  borderRadius: BorderRadiusStyle
                                      .circleBorder40),
                              child: Stack(children: [
                                CustomIconButton(
                                    height: 64,
                                    width: 64,
                                    variant:
                                    IconButtonVariant.FillBlue700,
                                    shape: IconButtonShape.CircleBorder32,
                                    padding:
                                    IconButtonPadding.PaddingAll16,
                                    alignment: Alignment.center,
                                    onTap: () {
                                      onTapBtnCamera();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCamera))
                              ])),
                          CustomIconButton(
                              height: 44,
                              width: 44,
                              margin: getMargin(top: 18, bottom: 18),
                              variant: IconButtonVariant.FillWhiteA700,
                              shape: IconButtonShape.CircleBorder22,
                              padding: IconButtonPadding.PaddingAll10,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgBag)),
                        ]))
                  ])),
        ),
        // floatingActionButton: CustomFloatingButton(
        //     height: 44,
        //     width: 44,
        //     child: CustomImageView(
        //         svgPath: ImageConstant.imgBag,
        //         height: getVerticalSize(22.00),
        //         width: getHorizontalSize(22.00)))
    );
  }

  onTapBtnCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapArrowleft11() {
    Get.back();
  }
}
