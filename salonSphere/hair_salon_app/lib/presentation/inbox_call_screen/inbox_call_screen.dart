import 'controller/inbox_call_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_bottom_bar.dart';

class InboxCallScreen extends GetWidget<InboxCallController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: double.maxFinite,
                        child: Container(
                            padding: getPadding(
                                left: 180, top: 22, right: 180, bottom: 22),
                            decoration: AppDecoration.white,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("lbl_chat".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFProTextBold28))
                                ]))),
                    Spacer(),
                    CustomImageView(
                        svgPath: ImageConstant.imgGroup295,
                        height: getVerticalSize(136),
                        width: getHorizontalSize(300)),
                    Padding(
                        padding: getPadding(top: 30),
                        child: Text("lbl_no_chats".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProTextBold22)),
                    Container(
                        width: getHorizontalSize(270),
                        margin: getMargin(top: 17, bottom: 203),
                        child: Text("msg_pellentesque_eu2".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtBody))
                  ])),
        ),
        bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {}));
  }
}
