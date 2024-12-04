import 'controller/home_one_controller.dart';
import 'models/home_one_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
// ignore: unused_import
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeOnePage extends StatelessWidget {
  HomeOneController controller = Get.put(HomeOneController(HomeOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  padding: getPadding(top: 14),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Text("aiBotTalk".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAirbnbCerealWBd24)),
              Container(
                  margin: getMargin(left: 20, top: 23, right: 20),
                  child: Text("msg_start_chatting_with".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtBodyGray700
                          .copyWith(letterSpacing: getHorizontalSize(0.16)))),
              Expanded(
                child: Container(
                  child: CustomImageView(
                    alignment: Alignment.bottomCenter,
                    imagePath: Constant.imagePath + "frame.png",
                    width: getVerticalSize(358),
                    height: getVerticalSize(358),
                  ),
                ),
              ),
              CustomButton(
                  height: getVerticalSize(56),
                  text: "lbl_start_chat".tr,
                  margin: getMargin(left: 20, top: 62, right: 20, bottom: 40),
                  onTap: () {
                    navigateChatScreen();
                  })
            ])));
  }

  navigateChatScreen() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}
