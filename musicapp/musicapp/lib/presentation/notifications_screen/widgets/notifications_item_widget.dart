import '../controller/notifications_controller.dart';
import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(
    this.notificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsItemModel notificationsItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 10,
        right: 16,
        bottom: 10,
      ),
      decoration: AppDecoration.fill2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
            svgPath: ImageConstant.imgIcnotification,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              top: 14,
              bottom: 14,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 6,
              bottom: 5,
            ),
            child:  Container(
              width: getSize(255),
              child: Text(
                notificationsItemModelObj.messege!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 35,
            ),
            child: Text(
              notificationsItemModelObj.time!,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
