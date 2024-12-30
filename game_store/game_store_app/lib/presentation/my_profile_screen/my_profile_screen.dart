import 'controller/my_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';

class MyProfileScreen extends GetWidget<MyProfileController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(66),
              leadingWidth: 44,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleftBlack900,
                  margin: getMargin(left: 20, top: 17, bottom: 25),
                  onTap: () {
                    onTapArrowleft19();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_my_profile".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse25100x100,
                          height: getSize(100),
                          width: getSize(100),
                          radius: BorderRadius.circular(getHorizontalSize(50))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(388),
                              margin: getMargin(top: 40),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_first_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSubhead)),
                                    Padding(
                                        padding: getPadding(top: 6),
                                        child: Text("lbl_john".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAeonikRegular15Gray600))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(388),
                              margin: getMargin(top: 16),
                              padding: getPadding(
                                  left: 16, top: 14, right: 16, bottom: 14),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("lbl_last_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSubhead)),
                                    Padding(
                                        padding: getPadding(top: 8),
                                        child: Text("lbl_abram".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAeonikRegular15Gray600))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(388),
                              margin: getMargin(top: 18, bottom: 5),
                              padding: getPadding(
                                  left: 15, top: 14, right: 15, bottom: 14),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("lbl_email_address".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSubhead)),
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Text(
                                            "msg_johnabram_gmail_com".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAeonikRegular15Gray600))
                                  ])))
                    ])),
          ),
          bottomNavigationBar: Container(
              margin: getMargin(left: 20, right: 20, bottom: 40),
              decoration: AppDecoration.white,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButton(
                        height: getVerticalSize(56),
                        text: "lbl_edit_profile".tr,
                        onTap: () {
                          onTapEditprofile();
                        })
                  ]))),
    );
  }

  onTapEditprofile() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  onTapArrowleft19() {
    Get.back();
  }
}
