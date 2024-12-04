import 'package:flutter/services.dart';
import 'package:flutter_share/flutter_share.dart';

import '../../widgets/text_form_field.dart';
import '../chat_screen/models/chat_model.dart';
import 'controller/songs_lyrics_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_image.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_title.dart';
import 'package:ai_app_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SongsLyricsScreen extends GetWidget<SongsLyricsController> {

 @override
 Widget build(BuildContext context) {
  return SafeArea(
      child: Scaffold(
       resizeToAvoidBottomInset: true,
       backgroundColor: ColorConstant.whiteA700,
       appBar: CustomAppBar(
           height: getVerticalSize(65),
           leadingWidth: 44,
           leading: AppbarImage(
               height: getSize(24),
               width: getSize(24),
               svgPath: ImageConstant.imgArrowleft,
               margin: getMargin(left: 20, top: 21, bottom: 20),
               onTap: () {
                onTapArrowleft();
               }),
           centerTitle: true,
           title: AppbarTitle(text: "lbl_email_writer".tr),
           styleType: Style.bgFillWhiteA700),
       body: Align(
        alignment: Alignment.center,
        child: Column(
         children: [
          Obx(() {
           if (controller.chatList.value == false) {
            return Expanded(
             child: ListView(children: [
              CustomImageView(
                  margin: getMarginOrPadding(top: 40),
                  svgPath: ImageConstant.imgFrameGray400,
                  height: getVerticalSize(81),
                  width: getHorizontalSize(59)),
              Padding(
                  padding: getPadding(top: 8),
                  child: Text("lbl_capabilities".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtAirbnbCerealWBd22)),
              Wrap(
               alignment: WrapAlignment.center,
               children: [
                Container(
                    margin: getMargin(top: 87, right: 35, left: 35),
                    padding: getPadding(
                        left: 29, top: 8, right: 29, bottom: 8),
                    decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius:
                        BorderRadiusStyle.roundedBorder16),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         Text("●",
                             textAlign: TextAlign.center,
                             style: AppStyle.txtHeadline.copyWith(
                                 height: 1.5,
                                 color: Color(0xFFC54F4F))),
                         Expanded(
                          child: Text("msg_write_me_a_cover"
                              .tr,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtHeadline
                                  .copyWith(height: 1.5)),
                         )
                        ])),
               ],
              ),
              Wrap(
               alignment: WrapAlignment.center,
               children: [
                Container(
                    margin: getMargin(top: 32, left: 35, right: 35),
                    padding: getPadding(
                        left: 29, top: 8, right: 29, bottom: 8),
                    decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius:
                        BorderRadiusStyle.roundedBorder16),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         Text("●",
                             textAlign: TextAlign.center,
                             style: AppStyle.txtHeadline.copyWith(
                                 height: 1.5,
                                 color: Color(0xFF74C54F))),
                         Expanded(
                          child: Text("msg_i_want_to_write5".tr,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtHeadline
                                  .copyWith(height: 1.5)),
                         )
                        ])),
               ],
              ),
              Wrap(
               alignment: WrapAlignment.center,
               children: [
                Container(
                    margin: getMargin(top: 32, left: 35, right: 35),
                    padding: getPadding(
                        left: 29, top: 8, right: 29, bottom: 8),
                    decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius:
                        BorderRadiusStyle.roundedBorder16),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         Text("●",
                             textAlign: TextAlign.center,
                             style: AppStyle.txtHeadline.copyWith(
                                 height: 1.5,
                                 color: Color(0xFF4F70C5))),
                         Expanded(
                          child: Text("msg_write_me_a_template".tr,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtHeadline
                                  .copyWith(height: 1.5)),
                         )
                        ])),
               ],
              ),
             ]),
            );
           } else {
            return Expanded(
                child: ListView.builder(
                 reverse: true,
                 padding: getPadding(right: 20, left: 20),
                 itemCount: controller.listChat.reversed.length,
                 itemBuilder: (context, index) {
                  List<ChatModel> list =
                  controller.listChat.reversed.toList();
                  ChatModel chatModel = list[index];
                  return Container(
                      margin: getMargin(
                          bottom: 24,
                          right: chatModel.type == 0 ? 80 : 0,
                          left: chatModel.type == 1 ? 80 : 0),
                      alignment: chatModel.type == 1
                          ? Alignment.topRight
                          : Alignment.topLeft,
                      child: Column(
                       crossAxisAlignment: chatModel.type == 1
                           ? CrossAxisAlignment.end
                           : CrossAxisAlignment.start,
                       children: [
                        Container(
                            padding: getPadding(
                                left: 16, top: 12, right: 16, bottom: 12),
                            decoration: AppDecoration.fillWhiteA700
                                .copyWith(
                                color: chatModel.type == 1
                                    ? ColorConstant.black900
                                    : ColorConstant.gray100,
                                borderRadius: chatModel.type == 1
                                    ? BorderRadius.only(
                                 topLeft: Radius.circular(
                                     getVerticalSize(20)),
                                 topRight: Radius.circular(
                                     getVerticalSize(20)),
                                 bottomLeft: Radius.circular(
                                     getVerticalSize(20)),
                                )
                                    : BorderRadius.only(
                                    topRight: Radius.circular(
                                        getVerticalSize(20)),
                                    topLeft: Radius.circular(
                                        getVerticalSize(20)),
                                    bottomRight: Radius.circular(
                                        getVerticalSize(20)))),
                            child: Text(chatModel.chat,
                                style: AppStyle.txtBody.copyWith(
                                    color: chatModel.type == 1
                                        ? ColorConstant.whiteA700
                                        : ColorConstant.black900,
                                    height: 1.5))),
                        chatModel.type == 0
                            ? Padding(
                         padding: getPadding(top: 8),
                         child: Row(
                          children: [
                           CustomImageView(
                            onTap: () {
                             Clipboard.setData(new ClipboardData(
                                 text: chatModel.chat));
                            },
                            svgPath:
                            Constant.imagePath + "copy.svg",
                            width: getVerticalSize(20),
                            height: getVerticalSize(20),
                           ),
                           SizedBox(width: getHorizontalSize(12)),
                           CustomImageView(
                            onTap: () {
                             FlutterShare.share(
                                 title: "Example share",
                                 text: chatModel.chat);
                            },
                            svgPath:
                            Constant.imagePath + "share.svg",
                            width: getVerticalSize(20),
                            height: getVerticalSize(20),
                           ),
                          ],
                         ),
                        )
                            : SizedBox()
                       ],
                      ));
                 },
                ));
           }
          }),
          Divider(
           height: 0,
           color: ColorConstant.gray100,
           thickness: 1,
          ),
          Padding(
           padding: getPadding(top: 22, bottom: 22, left: 20, right: 20),
           child: Row(
            children: [
             Expanded(
              child: TextFormFieldWidget(
                  controller: controller.groupthirtyoneController,
                  hintText: "msg_ask_me_anything".tr,
                  textInputAction: TextInputAction.done,
                  suffix: SizedBox(height: getVerticalSize(56)),
                  suffixConstraints:
                  BoxConstraints(maxHeight: getVerticalSize(56))),
             ),
             SizedBox(width: getHorizontalSize(16)),
             GestureDetector(
              onTap: () {
               controller.chatList.value = true;
              },
              child: Container(
                  height: getVerticalSize(56),
                  width: getVerticalSize(56),
                  decoration: BoxDecoration(
                   color: ColorConstant.black900,
                   borderRadius:
                   BorderRadius.circular(getHorizontalSize(16)),
                  ),
                  alignment: Alignment.center,
                  child: CustomImageView(
                      svgPath: ImageConstant.imgIcsend,
                      height: getVerticalSize(24),
                      width: getHorizontalSize(24))),
             )
            ],
           ),
          )
         ],
        ),
       ),
      ));
 }

 onTapArrowleft() {
  Get.back();
 }
}
