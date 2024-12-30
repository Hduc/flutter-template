import 'controller/feed_back_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

class FeedBackScreen extends GetWidget<FeedBackController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
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
                    onTapArrowleft26();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_feedback".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 25, right: 20, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Expanded(
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                      Text("msg_give_us_feedback".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline),
                      Padding(
                          padding: getPadding(top: 6),
                          child: Text("msg_your_option_matters".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBodyGray600)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("msg_what_do_you_like".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline)),
                      CustomTextFormField(
                          fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                          controller: controller.inputController,
                          hintText: "msg_write_a_feedback".tr,
                          margin: getMargin(top: 13, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT16,
                          textInputAction: TextInputAction.done,
                          maxLines: 10),
                     ],
                    ),
                  ),
                     CustomButton(
                         height: getVerticalSize(56),
                         text: "lbl_submit".tr,
                         onTap: () {
                          onTapSubmit();
                         })
                    ])),
          ),
        ),
    );
  }

  onTapSubmit() {
   Get.back();
  }

  onTapArrowleft26() {
    Get.back();
  }
}
