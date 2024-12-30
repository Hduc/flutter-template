import '../controller/wallet_screen_controller.dart';
import '../models/closelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class CloselistItemWidget extends StatelessWidget {
  CloselistItemWidget(
    this.closelistItemModelObj, {
    Key? key,
    this.onTapClose,
  }) : super(
          key: key,
        );

  CloselistItemModel closelistItemModelObj;

  var controller = Get.find<WalletScreenController>();

  VoidCallback? onTapClose;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190.h,
      child: GestureDetector(
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
                () => CustomImageView(
                  imagePath: closelistItemModelObj.close!.value,
                  height: 48.adaptSize,
                    width: 48.adaptSize,
                ),
                //     CustomIconButton(
                //   height: 48.adaptSize,
                //   width: 48.adaptSize,
                //   padding: EdgeInsets.all(12.h),
                //   decoration: IconButtonStyleHelper.fillPurple,
                //   child: CustomImageView(
                //     imagePath: closelistItemModelObj.close!.value,
                //   ),
                // ),
              ),
              SizedBox(height: 16.v),
              Obx(
                () => Text(
                  closelistItemModelObj.userName!.value,
                  style: CustomTextStyles.titleMediumBlack90001SemiBold,
                ),
              ),
              SizedBox(height: 10.v),
              Expanded(
                child: Obx(
                  () => Text(
                    closelistItemModelObj.rechargeStatus!.value,
                    style: CustomTextStyles.bodyMediumBlack90001,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Obx(
                () => Text(
                  closelistItemModelObj.amount!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
