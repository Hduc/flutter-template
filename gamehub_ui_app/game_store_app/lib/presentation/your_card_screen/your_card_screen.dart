import 'controller/your_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';

class YourCardScreen extends GetWidget<YourCardController> {
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
                    onTapArrowleft25();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_your_card".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: GetBuilder<YourCardController>(
              init: YourCardController(),
              builder:(controller) =>  Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       CustomImageView(
                         margin: getMargin(left: 20,right: 20,top: 24),
                         imagePath: ImageConstant.imgMyCard,
                       ),
                        Spacer()
                      ])),
            ),
          ),
          bottomNavigationBar: GetBuilder<YourCardController>(
            init: YourCardController(),
            builder:(controller) =>  Container(
                margin: getMargin(left: 20, right: 20, bottom: 30),
                decoration: AppDecoration.white,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_add_new_card".tr,
                          onTap: () {
                            controller.setNavigationIsSetting(true);
                            onTapAddnewcard();
                          })
                    ])),
          )),
    );
  }

  onTapAddnewcard() {
    Get.toNamed(
      AppRoutes.addNewCardScreen,
    );
  }

  onTapArrowleft25() {
    Get.back();
  }
}
