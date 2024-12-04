import '../controller/onboarding_one_controller.dart';
import '../models/sliderbuildingr_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderbuildingrItemWidget extends StatelessWidget {
  SliderbuildingrItemWidget(
    this.sliderbuildingrItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderbuildingrItemModel sliderbuildingrItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: getPadding(
            left: 7,
            right: 8,
          ),
          child: Text(
            "msg_building_relationships".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineSmall,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 17,
          ),
          child: Text(
            "msg_your_love_life".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
