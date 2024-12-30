import '../notification_screen/widgets/notificationlist_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/notificationlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppBar(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.v),
              // decoration: AppDecoration.outlineGray300,
              decoration: BoxDecoration(
                // color: appTheme.gray200,
                border: Border(
                  bottom: BorderSide(
                    color: appTheme.gray200,
                    width: 1.h,
                  ),
                ),
              ),
              child: CustomAppBar(
                leading: AppbarLeadingImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),

                    onTap: () {
                      onTapArrowLeft();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(
                  text: "lbl_notifications".tr,
                ),
              ),
            ),
            Obx(() => Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                  physics: BouncingScrollPhysics(),
                  // shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 18.v);
                  },
                  itemCount: controller.notificationModelObj.value
                      .notificationlistItemList.value.length,
                  itemBuilder: (context, index) {
                    NotificationlistItemModel model = controller
                        .notificationModelObj
                        .value
                        .notificationlistItemList
                        .value[index];
                    return NotificationlistItemWidget(model);
                  }),
            )),
          ],
        ));
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //       leadingWidth: 40.h,
  //       leading: AppbarLeadingImage(
  //           imagePath: ImageConstant.imgArrowLeft,
  //           margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
  //           onTap: () {
  //             onTapArrowLeft();
  //           }),
  //       centerTitle: true,
  //       title: AppbarSubtitle(text: "lbl_notifications".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
