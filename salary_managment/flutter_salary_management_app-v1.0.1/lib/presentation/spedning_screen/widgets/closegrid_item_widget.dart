import '../controller/spedning_controller.dart';
import '../models/closegrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class ClosegridItemWidget extends StatelessWidget {
  ClosegridItemWidget(
    this.closegridItemModelObj, {
    Key? key,
    this.onTapClose,
  }) : super(
          key: key,
        );

  ClosegridItemModel closegridItemModelObj;

  var controller = Get.find<SpedningController>();

  VoidCallback? onTapClose;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapClose!.call();
      },
      child: Container(
        padding: EdgeInsets.all(11.h),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () =>CustomImageView(
      imagePath: closegridItemModelObj.close!.value,
        height: 48.adaptSize,
        width: 48.adaptSize,
      ),
                //   CustomIconButton(
                // height: 48.adaptSize,
                // width: 48.adaptSize,
                // padding: EdgeInsets.all(12.h),
                // decoration: IconButtonStyleHelper.fillPurple,
                // child:
              // ),
            ),
            SizedBox(height: 16.v),
            Obx(
              () => Text(
                closegridItemModelObj.userName!.value,
                style: CustomTextStyles.titleMediumBlack90001SemiBold,
              ),
            ),
            SizedBox(height: 10.v),
            Expanded(
              child: Obx(
                () => Text(
                  closegridItemModelObj.rechargeStatus!.value,
                  style: CustomTextStyles.bodyMediumBlack90001,
                ),
              ),
            ),
            SizedBox(height: 7.v),
            Obx(
              () => Text(
                closegridItemModelObj.amount!.value,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
