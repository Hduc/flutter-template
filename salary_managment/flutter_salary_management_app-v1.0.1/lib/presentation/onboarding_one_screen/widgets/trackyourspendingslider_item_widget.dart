import '../controller/onboarding_one_controller.dart';
import '../models/trackyourspendingslider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore: must_be_immutable
class TrackyourspendingsliderItemWidget extends StatelessWidget {
  TrackyourspendingsliderItemWidget(
    this.trackyourspendingsliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TrackyourspendingsliderItemModel trackyourspendingsliderItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 311.h,
          margin: EdgeInsets.only(
            left: 18.h,
            right: 23.h,
          ),
          child: Text(
            "msg_track_your_spending".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineMedium!.copyWith(
              height: 1.57,
            ),
          ),
        ),
        SizedBox(height: 13.v),
        SizedBox(
          width: 353.h,
          child: Text(
            "msg_do_you_want_to_focus".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge!.copyWith(
              height: 1.47,
            ),
          ),
        ),
      ],
    );
  }
}
