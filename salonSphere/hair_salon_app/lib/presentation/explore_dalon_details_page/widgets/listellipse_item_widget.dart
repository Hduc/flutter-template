import '../controller/explore_dalon_details_controller.dart';
import '../models/listellipse_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore: must_be_immutable
class ListellipseItemWidget extends StatelessWidget {
  ListellipseItemWidget(this.listellipseItemModelObj);

  ListellipseItemModel listellipseItemModelObj;

  var controller = Get.find<ExploreDalonDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: getVerticalSize(
          62,
        ),
        width: getHorizontalSize(
          34,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: getMargin(
                  right: 1,
                ),
                padding: getPadding(
                  all: 8,
                ),
                decoration: AppDecoration.fillGray6006c.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: getSize(
                        15,
                      ),
                      width: getSize(
                        15,
                      ),
                      margin: getMargin(
                        bottom: 1,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray600,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            7,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: getVerticalSize(
                  49,
                ),
                width: getHorizontalSize(
                  34,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLocation,
                      height: getVerticalSize(
                        49,
                      ),
                      width: getHorizontalSize(
                        34,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector1,
                      height: getVerticalSize(
                        24,
                      ),
                      width: getHorizontalSize(
                        23,
                      ),
                      alignment: Alignment.topCenter,
                      margin: getMargin(
                        top: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
