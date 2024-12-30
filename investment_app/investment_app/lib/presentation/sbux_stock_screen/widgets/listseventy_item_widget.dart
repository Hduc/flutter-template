import '../controller/sbux_stock_controller.dart';
import '../models/listseventy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class ListseventyItemWidget extends StatelessWidget {
  ListseventyItemWidget(this.listseventyItemModelObj);

  ListseventyItemModel listseventyItemModelObj;

  var controller = Get.find<SbuxStockController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: getPadding(
            top: 5,
            bottom: 6,
          ),
          child: Container(
            height: getVerticalSize(
              6.00,
            ),
            width: getHorizontalSize(
              123.00,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.blueGray50,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  3.00,
                ),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  3.00,
                ),
              ),
              child: LinearProgressIndicator(
                value: 0.7,
                backgroundColor: ColorConstant.blueGray50,
                valueColor: AlwaysStoppedAnimation<Color>(
                  ColorConstant.green500,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 17,
            bottom: 1,
          ),
          child: Text(
            "lbl_70".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold14Green500.copyWith(
              height: getVerticalSize(
                1.19,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 13,
            top: 1,
          ),
          child: Text(
            "lbl_buy2".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold14Green500.copyWith(
              height: getVerticalSize(
                1.19,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
