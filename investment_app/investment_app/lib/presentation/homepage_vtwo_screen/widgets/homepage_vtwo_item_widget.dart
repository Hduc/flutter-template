import '../controller/homepage_vtwo_controller.dart';
import '../models/homepage_vtwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class HomepageVtwoItemWidget extends StatelessWidget {
  HomepageVtwoItemWidget(this.homepageVtwoItemModelObj);

  HomepageVtwoItemModel homepageVtwoItemModelObj;

  var controller = Get.find<HomepageVtwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 16,
        bottom: 16,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse28321,
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
            margin: getMargin(
              top: 1,
              bottom: 1,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_meta".tr,
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
                  top: 4,
                ),
                child: Text(
                  "lbl_facebook".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12.copyWith(
                    height: getVerticalSize(
                      1.27,
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChart,
            height: getVerticalSize(
              40.00,
            ),
            width: getHorizontalSize(
              57.00,
            ),
            margin: getMargin(
              top: 1,
              bottom: 1,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_35_123".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: AppStyle.txtInterBold14Gray800.copyWith(
                  height: getVerticalSize(
                    1.19,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  "lbl_142".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: AppStyle.txtInterRegular12Green500.copyWith(
                    height: getVerticalSize(
                      1.27,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
