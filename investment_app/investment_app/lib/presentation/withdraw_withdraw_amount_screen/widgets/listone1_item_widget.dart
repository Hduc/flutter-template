import '../controller/withdraw_withdraw_amount_controller.dart';
import '../models/listone1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class Listone1ItemWidget extends StatelessWidget {
  Listone1ItemWidget(this.listone1ItemModelObj);

  Listone1ItemModel listone1ItemModelObj;

  var controller = Get.find<WithdrawWithdrawAmountController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: getSize(
            63.00,
          ),
          padding: getPadding(
            left: 26,
            top: 18,
            right: 26,
            bottom: 18,
          ),
          decoration: AppDecoration.txtOutlineGray200.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder31,
          ),
          child: Text(
            "lbl_1".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold20Gray800.copyWith(
              height: getVerticalSize(
                1.12,
              ),
            ),
          ),
        ),
        Container(
          width: getSize(
            63.00,
          ),
          padding: getPadding(
            left: 25,
            top: 18,
            right: 25,
            bottom: 18,
          ),
          decoration: AppDecoration.txtOutlineGray200.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder31,
          ),
          child: Text(
            "lbl_2".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold20Gray800.copyWith(
              height: getVerticalSize(
                1.12,
              ),
            ),
          ),
        ),
        Container(
          width: getSize(
            63.00,
          ),
          padding: getPadding(
            left: 24,
            top: 18,
            right: 24,
            bottom: 18,
          ),
          decoration: AppDecoration.txtOutlineGray200.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder31,
          ),
          child: Text(
            "lbl_3".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold20Gray800.copyWith(
              height: getVerticalSize(
                1.12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
