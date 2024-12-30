import '../controller/sell_controller.dart';
import '../models/sell_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class SellItemWidget extends StatelessWidget {
  SellItemWidget(this.sellItemModelObj);

  SellItemModel sellItemModelObj;

  var controller = Get.find<SellController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: getHorizontalSize(
            63.00,
          ),
          padding: getPadding(
            left: 26,
            top: 17,
            right: 26,
            bottom: 17,
          ),
          decoration: AppDecoration.txtOutlineGray200.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder28,
          ),
          child: Text(
            "lbl_1".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold20Gray800.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            63.00,
          ),
          padding: getPadding(
            left: 24,
            top: 17,
            right: 24,
            bottom: 17,
          ),
          decoration: AppDecoration.txtOutlineGray200.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder28,
          ),
          child: Text(
            "lbl_2".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold20Gray800.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            63.00,
          ),
          padding: getPadding(
            left: 24,
            top: 17,
            right: 24,
            bottom: 17,
          ),
          decoration: AppDecoration.txtOutlineGray200.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder28,
          ),
          child: Text(
            "lbl_3".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold20Gray800.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
