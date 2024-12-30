import '../controller/business_controller.dart';
import '../models/business_item_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BusinessItemWidget extends StatelessWidget {
  BusinessItemWidget(this.businessItemModelObj);

  BusinessItemModel businessItemModelObj;

  var controller = Get.find<BusinessController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 4,
      ),
      decoration: AppDecoration.fillCyan50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShootingstar1,
            height: getSize(
              86,
            ),
            width: getSize(
              86,
            ),
            margin: getMargin(
              top: 12,
            ),
          ),
          Container(
            margin: getMargin(
              top: 17,
            ),
            padding: getPadding(
              left: 23,
              top: 13,
              right: 23,
              bottom: 13,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    businessItemModelObj.advertisementsTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHeadline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
