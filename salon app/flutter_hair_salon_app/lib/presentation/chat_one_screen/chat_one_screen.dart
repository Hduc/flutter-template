import 'package:hair_salon_app/presentation/chat_one_screen/models/chat_one_model.dart';

import 'controller/chat_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:hair_salon_app/widgets/custom_icon_button.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

class ChatOneScreen extends GetWidget<ChatOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getVerticalSize(24),
            ),
            Row(
              children: [
                AppbarImage(
                    height: getSize(20),
                    width: getSize(20),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 20),
                    onTap: () {
                      onTapArrowleft19();
                    }),
                Padding(
                  padding: getPadding(left: 16),
                  child: Row(
                    children: [
                      CustomImageView(
                          margin: getMarginOrPadding(right: 16),
                          imagePath: ImageConstant.imgEllipse23,
                          height: getSize(50),
                          width: getSize(50),
                          radius: BorderRadius.circular(getHorizontalSize(25))),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("msg_barbarllea_inova".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSFProTextBold20)),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: AppbarSubtitle4(
                                  text: "msg_active_6_hour_ago".tr,
                                  margin: getMargin(top: 6)),
                            )
                          ])
                    ],
                  ),
                ),
                Spacer(),
                AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgCallBlack900,
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapCall();
                    }),
                AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgSignal,
                    margin: getMargin(left: 24, right: 16))
              ],
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: getVerticalSize(24),
                  );
                },
                padding: getPadding(top: 50, right: 16, left: 16),
                primary: true,
                shrinkWrap: false,
                itemCount: controller.chatList.length,
                itemBuilder: (context, index) {
                  ChatOneModel chatOneModel = controller.chatList[index];
                  return Padding(
                    padding: getPadding(
                        left: chatOneModel.send == 0 ? 0 : 174,
                        right: chatOneModel.send == 1 ? 0 : 174),
                    child: Container(
                        width: double.infinity,
                        padding:
                            getPadding(left: 16, top: 8, right: 16, bottom: 8),
                        decoration: chatOneModel.send == 1
                            ? AppDecoration.txtFillPink800.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtCustomBorderTL16)
                            : AppDecoration.fillGray50.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL162),
                        child: Text(chatOneModel.massage,
                            style: chatOneModel.send == 1
                                ? AppStyle.txtBodyWhiteA700
                                : AppStyle.txtBody)),
                  );
                },
              ),
            ),
            Padding(
                padding: getPadding(left: 16, right: 16, bottom: 40),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: CustomTextFormField(
                        controller: controller.phraseeightController,
                        hintText: "lbl_massage".tr,
                        textInputAction: TextInputAction.done,
                        prefix: SizedBox(
                            height: getVerticalSize(61),
                            width: getVerticalSize(16)),
                        prefixConstraints:
                            BoxConstraints(maxHeight: getVerticalSize(61)),
                      )),
                      CustomIconButton(
                          height: 58,
                          width: 58,
                          margin: getMargin(left: 16),
                          variant: IconButtonVariant.FillPink800,
                          shape: IconButtonShape.CircleBorder29,
                          padding: IconButtonPadding.PaddingAll17,
                          child:
                              CustomImageView(svgPath: ImageConstant.imgSend))
                    ]))
          ]),
    ));
  }

  onTapArrowleft19() {
    Get.back();
  }

  onTapCall() {
    Get.toNamed(
      AppRoutes.callScreen,
    );
  }
}
