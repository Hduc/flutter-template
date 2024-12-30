import '../controller/review_one_controller.dart';
import '../models/review_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class ReviewOneItemWidget extends StatelessWidget {
  ReviewOneItemWidget(this.reviewOneItemModelObj);

  ReviewOneItemModel reviewOneItemModelObj;

  var controller = Get.find<ReviewOneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse152,
                  height: getSize(
                    40,
                  ),
                  width: getSize(
                    40,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      20,
                    ),
                  ),
                  margin: getMargin(
                    top: 1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          reviewOneItemModelObj.nameTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSubhead,
                        ),
                      ),
                      Obx(
                        () => Text(
                          reviewOneItemModelObj.distanceTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAeonikRegular15Gray600,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  svgPath: ImageConstant.imgStarOrangeA200,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  margin: getMargin(
                    bottom: 17,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 2,
                    bottom: 17,
                  ),
                  child: Obx(
                    () => Text(
                      reviewOneItemModelObj.ratingTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAeonikRegular15Gray600,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: getHorizontalSize(
                339,
              ),
              margin: getMargin(
                top: 17,
                right: 48,
              ),
              child: Obx(
                () => Text(
                  reviewOneItemModelObj.quoteTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAeonikRegular15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
