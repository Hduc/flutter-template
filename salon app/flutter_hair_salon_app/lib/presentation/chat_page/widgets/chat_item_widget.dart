import '../controller/chat_controller.dart';
import '../models/chat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatelessWidget {
  ChatItemWidget(this.chatItemModelObj);

  ChatItemModel chatItemModelObj;

  var controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 15,
        right: 16,
        bottom: 15,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2258x58,
                height: getSize(
                  58,
                ),
                width: getSize(
                  58,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    29,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  bottom: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        chatItemModelObj.nameTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProTextBold20,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                      ),
                      child: Obx(
                        () => Text(
                          chatItemModelObj.greetingTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyGray600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              top: 31,
              bottom: 6,
            ),
            child: Text(
              "lbl_22_00".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtBodyGray600,
            ),
          ),
        ],
      ),
    );
  }
}
