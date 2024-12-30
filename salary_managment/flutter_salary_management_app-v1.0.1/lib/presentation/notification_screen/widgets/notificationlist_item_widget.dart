import '../controller/notification_controller.dart';
import '../models/notificationlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class NotificationlistItemWidget extends StatelessWidget {
  NotificationlistItemWidget(
    this.notificationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationlistItemModel notificationlistItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 80.v),
            child: Container(
              width: 40,
              height: 40,
              padding: EdgeInsets.all(8.h),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 13,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: CustomImageView(
                    imagePath: ImageConstant.imgIcAlertPrimary,
                color: theme.colorScheme.primary,
                  ),
            ),
            // child: CustomIconButton(
            //   height: 40.adaptSize,
            //   width: 40.adaptSize,
            //   padding: EdgeInsets.all(6.h),
            //   decoration: IconButtonStyleHelper.outlineBlack,
            //   child: CustomImageView(
            //     imagePath: ImageConstant.imgIcAlertPrimary,
            //   ),
            // ),
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.only(left: 16.0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      notificationlistItemModelObj.titleText!.value,
                      style: CustomTextStyles.titleLargeSemiBold,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Obx(
                    () => Text(
                      notificationlistItemModelObj.descriptionText!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeGray60016.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Obx(
                      () => Text(
                        notificationlistItemModelObj.timeText!.value,
                        style: CustomTextStyles.bodyLarge16_1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
