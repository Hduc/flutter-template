import '../controller/onboarding_one_controller.dart';
import '../models/sliderplaygames_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderplaygamesItemWidget extends StatelessWidget {
  SliderplaygamesItemWidget(this.sliderplaygamesItemModelObj);

  SliderplaygamesItemModel sliderplaygamesItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "lbl_play_games".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtAeonikBold33,
        ),
        Container(
          width: getHorizontalSize(
            332,
          ),
          margin: getMargin(
            top: 20,
          ),
          child: Text(
            "msg_product_features".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtBody,
          ),
        ),
      ],
    );
  }
}
