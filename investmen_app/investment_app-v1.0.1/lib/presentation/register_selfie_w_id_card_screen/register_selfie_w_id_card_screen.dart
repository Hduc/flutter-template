import 'controller/register_selfie_w_id_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class RegisterSelfieWIdCardScreen
    extends GetWidget<RegisterSelfieWIdCardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SafeArea(
          child: Container(
              width: size.width,
              padding: getPadding(top: 56, bottom: 56),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Spacer(),
                    Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: ColorConstant.blue700,
                                width: getHorizontalSize(1.00)),
                            borderRadius: BorderRadiusStyle.circleBorder40),
                        child: Container(
                            height: getSize(80.00),
                            width: getSize(80.00),
                            padding: getPadding(all: 8),
                            decoration: AppDecoration.outlineBlue700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.circleBorder40),
                            child: Stack(children: [
                              CustomIconButton(
                                  onTap: () => Get.toNamed(AppRoutes.registerSelfieWIdCardSavedScreen),
                                  // onTap: () => Get.toNamed(AppRoutes.registerSelfieWIdCardSavedScreen),
                                  height: 64,
                                  width: 64,
                                  variant: IconButtonVariant.FillBlue700,
                                  shape: IconButtonShape.CircleBorder32,
                                  padding: IconButtonPadding.PaddingAll16,
                                  alignment: Alignment.center,
                                  // onTap: () {
                                  //   onTapBtnCamera();
                                  // },
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCamera))
                            ])))
                  ])),
        ));
  }

  onTapBtnCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
