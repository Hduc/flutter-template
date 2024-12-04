import '../controller/spot_market_stats_controller.dart';
import '../models/listlogo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListlogoItemWidget extends StatelessWidget {
  ListlogoItemWidget(this.listlogoItemModelObj);

  ListlogoItemModel listlogoItemModelObj;

  var controller = Get.find<SpotMarketStatsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: getPadding(
          all: 16,
        ),
        decoration: AppDecoration.outlineGray2001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 40,
              width: 40,
              shape: IconButtonShape.CircleBorder18,
              padding: IconButtonPadding.PaddingAll10,
              child: CustomImageView(
                svgPath: ImageConstant.imgIconBlue70036x36,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 12,
                top: 12,
                bottom: 10,
              ),
              child: Text(
                "lbl_market_cap".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold14Gray800.copyWith(
                  height: getVerticalSize(
                    1.19,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: getPadding(
                top: 11,
                bottom: 11,
              ),
              child: Text(
                "lbl_15_123".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold14Gray800.copyWith(
                  height: getVerticalSize(
                    1.19,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
