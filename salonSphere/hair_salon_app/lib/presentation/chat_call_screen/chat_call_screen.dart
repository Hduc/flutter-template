
import '../chat_call_screen/widgets/chatcall_item_widget.dart';
import 'controller/chat_call_controller.dart';
import 'models/chat_call_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

class ChatCallScreen extends GetWidget<ChatCallController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          body: Container(
      width: double.maxFinite,
      child: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Expanded(
              child: Padding(
                  padding: getPadding(left: 19, top: 24, right: 16),
                  child: GetBuilder<ChatCallController>(
                    init: ChatCallController(),
                    builder: (controller) => ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(24));
                        },
                        itemCount: controller.chatModelObj.length,
                        itemBuilder: (context, index) {
                          ChatCallModel model =
                              controller.chatModelObj[index];
                          return ChatcallItemWidget(model, onTapBtnCall: () {
                            onTapBtnCall();
                          });
                        }),
                  )))
        ]),
      )),
        );
  }

  onTapBtnCall() {
    Get.toNamed(AppRoutes.callScreen);
  }
}
