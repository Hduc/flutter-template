import 'package:hair_salon_app/presentation/chat_call_screen/models/chat_call_model.dart';

// ignore: unused_import
import '../../chat_page/models/chat_model.dart';
// ignore: unused_import
import '../controller/chat_call_controller.dart';
// ignore: unused_import
import '../models/chatcall_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ChatcallItemWidget extends StatelessWidget {
  ChatcallItemWidget(
    this.chatcallItemModelObj, {
    this.onTapBtnCall,
  });

  ChatCallModel chatcallItemModelObj;

  // var controller = Get.find<ChatCallController>();

  VoidCallback? onTapBtnCall;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 13,
        top: 15,
        right: 13,
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
                imagePath: Constant.imagePath + chatcallItemModelObj.image,
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
                  bottom: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      chatcallItemModelObj.name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold20,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                      ),
                      child: Text(
                        chatcallItemModelObj.call,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtFootnote,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomIconButton(
            height: 40,
            width: 40,
            margin: getMargin(
              top: 9,
              bottom: 9,
            ),
            variant: IconButtonVariant.OutlineBlack9000f_1,
            onTap: () {
              onTapBtnCall?.call();
            },
            child: CustomImageView(
              svgPath: ImageConstant.imgCallWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
