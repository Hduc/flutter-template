import '../controller/sbux_stock_controller.dart';
import '../models/list4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class List4ItemWidget extends StatelessWidget {
  List4ItemWidget(this.list4ItemModelObj);

  List4ItemModel list4ItemModelObj;

  var controller = Get.find<SbuxStockController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 8,
        ),
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
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse283240x40,
              height: getSize(
                40.00,
              ),
              width: getSize(
                40.00,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  20.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 12,
                top: 2,
                right: 31,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_aapl".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold14Gray800.copyWith(
                      height: getVerticalSize(
                        1.19,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "lbl_apple".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12.copyWith(
                        height: getVerticalSize(
                          0.99,
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
