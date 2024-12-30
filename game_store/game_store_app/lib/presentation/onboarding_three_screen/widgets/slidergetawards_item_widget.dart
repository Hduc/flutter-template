import '../controller/onboarding_three_controller.dart';
import '../models/slidergetawards_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class SlidergetawardsItemWidget extends StatelessWidget {
  SlidergetawardsItemWidget(this.slidergetawardsItemModelObj);

  SlidergetawardsItemModel slidergetawardsItemModelObj;

  var controller = Get.find<OnboardingThreeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "lbl_get_awards".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtAeonikBold33,
        ),
        Container(
          width: getHorizontalSize(
            332,
          ),
          margin: getMargin(
            top: 24,
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
