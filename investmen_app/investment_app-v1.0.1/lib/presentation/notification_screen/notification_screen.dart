import '../notification_screen/widgets/listgrid_item_widget.dart';
import '../notification_screen/widgets/listsave_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/listgrid_item_model.dart';
import 'models/listsave_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.lightBlue900,
        body: SafeArea(
          child: Container(
              height: size.height,
              width: size.width,
              child: Stack(children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                      height: getVerticalSize(251.00),
                                      width: getHorizontalSize(width),
                                      padding: getPadding(
                                          left: 24,
                                          top: 16,
                                          right: 24,
                                          bottom: 16),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ImageConstant
                                                      .imgGroup14),
                                              fit: BoxFit.fill)),
                                      child: Stack(children: [
                                        CustomIconButton(
                                            height: 50,
                                            width: 50,
                                            variant: IconButtonVariant
                                                .FillWhiteA70014,
                                            alignment: Alignment.topLeft,
                                            onTap: () {
                                              onTapBtnArrowleft();
                                            },
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftWhiteA70050x50))
                                      ]))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      width: getHorizontalSize(253.00),
                                      padding: getPadding(
                                          left: 11,
                                          top: 27,
                                          right: 11,
                                          bottom: 27),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ImageConstant
                                                      .imgRectangle1933),
                                              fit: BoxFit.cover)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    bottom: 94),
                                                child: Text(
                                                    "lbl_notification".tr,
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                        TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold20
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.12))))
                                          ]))),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      height: getVerticalSize(682.00),
                                      width: size.width,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  getHorizontalSize(
                                                      32.00)),
                                              topRight: Radius.circular(
                                                  getHorizontalSize(
                                                      32.00)))))),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 24, right: 24,top: 114),
                                      child: ListView(
                                          // mainAxisSize: MainAxisSize.min,
                                          // crossAxisAlignment:
                                          //     CrossAxisAlignment.start,
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_today".tr,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold14Gray800
                                                    .copyWith(
                                                        height:
                                                            getVerticalSize(
                                                                1.19))),
                                            Padding(
                                                padding:
                                                    getPadding(top: 24),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context,
                                                                index) {
                                                          return Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width: getHorizontalSize(
                                                                  327.00),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color:
                                                                          ColorConstant.gray200)).paddingOnly(bottom: 16);
                                                        },
                                                        itemCount: controller
                                                            .notificationModelObj
                                                            .value
                                                            .listgridItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context,
                                                                index) {
                                                          ListgridItemModel
                                                              model =
                                                              controller
                                                                  .notificationModelObj
                                                                  .value
                                                                  .listgridItemList[index];
                                                          return ListgridItemWidget(
                                                              model);
                                                        }))),
                                            Padding(
                                                padding:
                                                    getPadding(top: 41),
                                                child: Text(
                                                    "lbl_yesterday".tr,
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                        TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold14Gray800
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.19)))),
                                            Padding(
                                                padding:
                                                    getPadding(top: 24),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context,
                                                                index) {
                                                          return Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width: getHorizontalSize(
                                                                  327.00),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color:
                                                                          ColorConstant.gray200)).paddingOnly(bottom: 16);
                                                        },
                                                        itemCount: controller
                                                            .notificationModelObj
                                                            .value
                                                            .listsaveItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context,
                                                                index) {
                                                          ListsaveItemModel
                                                              model =
                                                              controller
                                                                  .notificationModelObj
                                                                  .value
                                                                  .listsaveItemList[index];
                                                          return ListsaveItemWidget(
                                                              model);
                                                        })))
                                          ])))
                            ])))
              ])),
        ));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
