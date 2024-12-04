import '../controller/sbux_stock_controller.dart';
import '../models/sbux_stock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SbuxStockItemWidget extends StatelessWidget {
  SbuxStockItemWidget(this.sbuxStockItemModelObj);

  SbuxStockItemModel sbuxStockItemModelObj;

  var controller = Get.find<SbuxStockController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 16,
          top: 15,
          right: 16,
          bottom: 15,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 36,
              width: 36,
              margin: getMargin(
                top: 6,
                bottom: 6,
              ),
              shape: IconButtonShape.CircleBorder18,
              padding: IconButtonPadding.PaddingAll5,
              child: CustomImageView(
                svgPath: ImageConstant.imgIconBlue700,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 12,
                right: 0,
                bottom: 3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_shares".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular12.copyWith(
                      height: getVerticalSize(
                        0.99,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "lbl_0_18732".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold16Black900.copyWith(
                        height: getVerticalSize(
                          1.27,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
