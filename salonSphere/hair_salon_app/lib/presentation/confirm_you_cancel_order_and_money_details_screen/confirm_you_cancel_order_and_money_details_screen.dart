import 'controller/confirm_you_cancel_order_and_money_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ConfirmYouCancelOrderAndMoneyDetailsScreen
    extends GetWidget<ConfirmYouCancelOrderAndMoneyDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        396,
      ),
      padding: getPadding(
        top: 67,
        bottom: 66,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: Constant.imagePath+"done.png",
            height: getSize(
              108,
            ),
            width: getSize(
              108,
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: getPadding(
              top: 24,
            ),
            child: Text(
              "lbl_successful".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProTextBold22,
            ),
          ),
          Container(
            margin: getMargin(
              top: 15,
              left: 55,
              right: 55,
            ),
            child: Text(
              "msg_you_have_successfully".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtBodyGray600,
            ),
          ),
          CustomButton(
            onTap: () {
              Get.toNamed(AppRoutes.homePageScreen);
            },
            height: getVerticalSize(
              57,
            ),
            text: "lbl_ok".tr,
            margin: getMargin(
              left: 77,
              top: 40,
              right: 77,
            ),
          ),
        ],
      ),
    );
  }
}
