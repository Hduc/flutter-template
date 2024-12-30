import '../controller/explore_games_selected_controller.dart';
import '../models/gridrocketone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class GridrocketoneItemWidget extends StatelessWidget {
  GridrocketoneItemWidget(this.gridrocketoneItemModelObj);

  GridrocketoneItemModel gridrocketoneItemModelObj;

  var controller = Get.find<ExploreGamesSelectedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 23,
        top: 7,
        right: 23,
        bottom: 7,
      ),
      decoration: AppDecoration.outlineLightblueA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRocket1,
            height: getSize(
              73,
            ),
            width: getSize(
              73,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Obx(
              () => Text(
                gridrocketoneItemModelObj.actionTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtHeadline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
