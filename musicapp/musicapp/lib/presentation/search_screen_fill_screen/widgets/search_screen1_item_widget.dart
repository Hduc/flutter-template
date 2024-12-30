import '../controller/search_screen_fill_controller.dart';
import '../models/search_screen1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SearchScreen1ItemWidget extends StatelessWidget {
  SearchScreen1ItemWidget(
    this.searchScreen1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchScreen1ItemModel searchScreen1ItemModelObj;

  var controller = Get.find<SearchScreenFillController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 4,
      ),
      decoration: AppDecoration.fill2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: getVerticalSize(
              214,
            ),
            width: getHorizontalSize(
              178,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img18271,
                  height: getVerticalSize(
                    214,
                  ),
                  width: getHorizontalSize(
                    178,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      16,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 32,
                  width: 32,
                  margin: getMargin(
                    top: 4,
                    right: 4,
                  ),
                  padding: getPadding(
                    all: 8,
                  ),
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgClock,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 4,
              top: 7,
            ),
            child: Obx(
              () => Text(
                searchScreen1ItemModelObj.enemyftjidTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextThemeHelper.titleMediumSemiBold,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 4,
              top: 6,
              bottom: 5,
            ),
            child: Obx(
              () => Text(
                searchScreen1ItemModelObj.nameTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
