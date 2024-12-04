import '../controller/other_controller.dart';
import '../models/other_item_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OtherItemWidget extends StatelessWidget {
  OtherItemWidget(this.otherItemModelObj);

  OtherItemModel otherItemModelObj;

  var controller = Get.find<OtherController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 4,
      ),
      decoration: AppDecoration.fillIndigo5002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImagesendingviachat,
            height: getSize(
              86,
            ),
            width: getSize(
              86,
            ),
            margin: getMargin(
              top: 13,
            ),
          ),
          Container(
            margin: getMargin(
              top: 16,
            ),
            padding: getPadding(
              left: 11,
              top: 13,
              right: 11,
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
                    otherItemModelObj.createconversaiTxt.value,
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
