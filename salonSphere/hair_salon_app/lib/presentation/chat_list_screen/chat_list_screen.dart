// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/chat_page/models/chat_model.dart';

import '../chat_page/controller/chat_controller.dart';

class ChatListScreen extends StatelessWidget {
  ChatController controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          height: getVerticalSize(24),
        );
      },
      primary: false,
      shrinkWrap: true,
      itemCount: controller.chatModelObj.length,
      padding: getPadding(left: 16, right: 16, top: 24),
      itemBuilder: (context, index) {
        ChatModel chatModel = controller.chatModelObj[index];
        return GestureDetector(
          onTap: () {
            Get.toNamed(AppRoutes.chatOneScreen);
          },
          child: Container(
              padding: getPadding(all: 16),
              decoration: AppDecoration.fillGray50
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: Constant.imagePath + chatModel.image,
                              height: getSize(58),
                              width: getSize(58),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(29))),
                          Padding(
                              padding: getPadding(left: 16),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(chatModel.name,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextBold20),
                                    Padding(
                                        padding: getPadding(top: 8),
                                        child: Text(chatModel.type,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtBodyGray600))
                                  ]))
                        ]),
                    Column(
                      children: [
                        chatModel.notification
                            ? CustomImageView(
                                height: getSize(24),
                                width: getSize(24),
                                imagePath: Constant.imagePath + "alert.png",
                              )
                            : SizedBox(),
                        Padding(
                            padding: getPadding(
                                top: chatModel.notification ? 8 : 32),
                            child: Text("lbl_22_00".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtBodyGray600)),
                      ],
                    )
                  ])),
        );
      },
    );
  }
}
