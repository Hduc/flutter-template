import '../controller/onboarding_two_controller.dart';
import '../models/sliderlistensou_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderlistensouItemWidget extends StatelessWidget {
  SliderlistensouItemWidget(this.sliderlistensouItemModelObj);

  SliderlistensouItemModel sliderlistensouItemModelObj;

  var controller = Get.find<OnboardingTwoController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "lbl_listen_sound".tr,
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
