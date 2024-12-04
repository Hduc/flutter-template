import 'package:hair_salon_app/presentation/chat_call_screen/chat_call_screen.dart';
import 'package:hair_salon_app/presentation/chat_list_screen/chat_list_screen.dart';

import '../../core/utils/buttons_tabbar.dart';
import 'controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ChatPage extends StatelessWidget {
  ChatController controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      padding: getPadding(top: 24, bottom: 24),
                      decoration: AppDecoration.white,
                      child: Text("lbl_chat".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtSFProTextBold28)),
                  Padding(
                    padding: getPadding(left: 16, top: 12, right: 16),
                    child: ButtonsTabBar(
                      space: 16,
                      // space: 16,
                      // count: 2,
                      height: getVerticalSize(34),
                      controller: controller.tabviewController,
                      labelStyle: TextStyle(
                          fontSize: getFontSize(18),
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.whiteA700),
                      backgroundColor: ColorConstant.pink800,
                      unselectedBackgroundColor: ColorConstant.whiteA700,
                      unselectedLabelStyle: TextStyle(
                          color: ColorConstant.pink800,
                          fontSize: getFontSize(18),
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600),
                      // borderColor: Colors.pink,
                      unselectedBorderColor: ColorConstant.pink800,

                      tabs: [
                        Tab(
                          text: "lbl_chats".tr,
                        ),
                        Tab(
                          text: "lbl_calls".tr,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                        controller: controller.tabviewController,
                        children: [ChatListScreen(), ChatCallScreen()]),
                  )
                ])));
  }

  onTapCalls() {
    Get.toNamed(
      AppRoutes.chatCallScreen,
    );
  }
}
