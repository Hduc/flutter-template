import '../controller/details_game_controller.dart';
import '../models/details_game_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class DetailsGameItemWidget extends StatelessWidget {
  DetailsGameItemWidget(this.detailsGameItemModelObj);

  DetailsGameItemModel detailsGameItemModelObj;

  var controller = Get.find<DetailsGameController>();

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
                          detailsGameItemModelObj.floydmilesTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSubhead,
                        ),
                      ),
                      Obx(
                        () => Text(
                          detailsGameItemModelObj.distanceTxt.value,
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
                    bottom: 0,
                  ),
                ),
                SizedBox(width: getHorizontalSize(2),),
                Padding(
                  padding: getPadding(top: 2),
                  child: Text(
                    detailsGameItemModelObj.fortyfiveTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAeonikRegular15Gray600,
                  ),
                )
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
                  detailsGameItemModelObj.qoremipsumdolorTxt.value,
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
