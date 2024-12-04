import '../notification_screen/widgets/notification_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(26),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 28, bottom: 28),
                    onTap: () {
                      onTapArrowleft34();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_notifications".tr),
                styleType: Style.bgFillWhiteA700),
            body: controller.notificationModelObj.value.notificationItemList
                    .value.isEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgBell1,
                          height: getVerticalSize(157),
                          width: getHorizontalSize(300)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("msg_no_notification".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtSFProTextBold22)),
                      Container(
                          margin: getMargin(top: 20, left: 69, right: 69),
                          child: Text("msg_pellentesque_eu".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtBody))
                    ],
                  )
                : Obx(() => ListView.separated(
                    padding: getPadding(top: 6, right: 16, left: 16),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(24));
                    },
                    itemCount: controller.notificationModelObj.value
                        .notificationItemList.value.length,
                    itemBuilder: (context, index) {
                      NotificationItemModel model = controller
                          .notificationModelObj
                          .value
                          .notificationItemList
                          .value[index];
                      return NotificationItemWidget(model);
                    }))));
  }

  onTapArrowleft34() {
    Get.back();
  }
}
