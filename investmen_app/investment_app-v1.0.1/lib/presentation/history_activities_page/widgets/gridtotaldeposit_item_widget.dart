import '../controller/history_activities_controller.dart';
import '../models/gridtotaldeposit_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class GridtotaldepositItemWidget extends StatelessWidget {
  GridtotaldepositItemWidget(this.gridtotaldepositItemModelObj);

  GridtotaldepositItemModel gridtotaldepositItemModelObj;

  var controller = Get.find<HistoryActivitiesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.fillPurple50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_total_deposit".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Gray800.copyWith(
              height: getVerticalSize(
                0.99,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
              bottom: 2,
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
    );
  }
}
