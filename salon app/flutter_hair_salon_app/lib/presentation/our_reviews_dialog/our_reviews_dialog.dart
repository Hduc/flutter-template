import 'controller/our_reviews_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class OurReviewsDialog extends StatelessWidget {
  OurReviewsDialog(this.controller);

  OurReviewsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(left: 16, right: 16),
        padding: getPadding( top: 30, bottom: 30),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Card(
              //     clipBehavior: Clip.antiAlias,
              //     elevation: 0,
              //     margin: EdgeInsets.all(0),
              //     color: ColorConstant.green600,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadiusStyle.circleBorder54),
              //     child: Container(
              //         height: getSize(108),
              //         width: getSize(108),
              //         padding: getPadding(all: 26),
              //         decoration: AppDecoration.fillGreen600.copyWith(
              //             borderRadius: BorderRadiusStyle.circleBorder54),
              //         child: Stack(children: [
              //           CustomImageView(
              //               svgPath: ImageConstant.imgEdit2,
              //               height: getSize(56),
              //               width: getSize(56),
              //               alignment: Alignment.center)
              //         ]))),
              CustomImageView(
                  imagePath: Constant.imagePath+"edit.png",
                  height: getSize(108),
                  width: getSize(108),),
              Container(
                  margin: getMargin(top: 30,right: 81,left: 81),
                  child: Text("msg_you_have_done_using".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtSFProTextBold22)),
              Container(
                  margin: getMargin(left: 66, top: 16, right: 66),
                  child: Text("msg_please_leave_your".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtBody)),
              Padding(
                  padding: getPadding(top: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgIcstar,
                            height: getSize(30),
                            width: getSize(30)),
                        CustomImageView(
                            svgPath: ImageConstant.imgIcstar,
                            height: getSize(30),
                            width: getSize(30),
                            margin: getMargin(left: 20)),
                        CustomImageView(
                            svgPath: ImageConstant.imgIcstar,
                            height: getSize(30),
                            width: getSize(30),
                            margin: getMargin(left: 20)),
                        CustomImageView(
                            svgPath: ImageConstant.imgIcstar,
                            height: getSize(30),
                            width: getSize(30),
                            margin: getMargin(left: 20)),
                        CustomImageView(
                            svgPath: ImageConstant.imgIcstar,
                            height: getSize(30),
                            width: getSize(30),
                            margin: getMargin(left: 20))
                      ])),
              Container(
                width: double.infinity,
                  margin: getMargin(top: 24,left: 16,right: 16),
                  padding: getPadding(
                      all: 16),
                  decoration: AppDecoration.outlinePink8001,
                  child: Text(
                      "msg_it_is_a_long_established3".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBody)),
              CustomButton(
                  height: getVerticalSize(57),
                  text: "lbl_write_review".tr,
                  margin: getMargin(top: 24,right: 77,left: 77),
                  onTap: () {
                    onTapWritereview();
                  }),
              CustomButton(
                  height: getVerticalSize(57),
                  text: "lbl_cancel".tr,
                  margin: getMargin(top: 16,right: 77,left: 77),
                  variant: ButtonVariant.FillPink50,
                  fontStyle: ButtonFontStyle.SFProTextBold18Pink800,
                  onTap: () {
                    onTapCancel();
                  })
            ]));
  }

  onTapWritereview() {
    Get.back();
    Get.toNamed(
      AppRoutes.reviewsScreen,
      arguments: true
    );
  }

  onTapCancel() {
    Get.back();
  }
}
