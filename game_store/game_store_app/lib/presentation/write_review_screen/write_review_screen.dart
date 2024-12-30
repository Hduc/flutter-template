import '../thanks_for_rating_screen/thanks_for_rating_screen.dart';
import 'controller/write_review_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

class WriteReviewScreen extends GetWidget<WriteReviewController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
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
                    onTapArrowleft7();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_write_review".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 27, right: 20, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_write_your_review".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAeonikBold19),
                      CustomTextFormField(
                          fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                          controller: controller.inputController,
                          hintText: "msg_would_you_like_write".tr,
                          margin: getMargin(top: 13),
                          padding: TextFormFieldPadding.PaddingAll16,
                          textInputAction: TextInputAction.done,
                          maxLines: 10),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 11, bottom: 5),
                              child: Text("msg_350_characters_remaining".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAeonikRegular15Gray600)))
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
                        text: "lbl_submit_review".tr,
                        onTap: () {
                          onTapSubmitreview(context);
                        })
                  ]))),
    );
  }

  onTapSubmitreview(context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding:
          EdgeInsets.zero,
          content: ThanksForRatingScreen(),
        );
      },
    );
    // Get.toNamed(
    //   AppRoutes.homeScreenContainer1Screen,
    // );
  }

  onTapArrowleft7() {
    Get.back();
  }
}
