import '../controller/onboarding_six_controller.dart';
import '../models/sliderwelcometoinvest_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderwelcometoinvestOneItemWidget extends StatelessWidget {
  SliderwelcometoinvestOneItemWidget(this.sliderwelcometoinvestOneItemModelObj);

  SliderwelcometoinvestOneItemModel sliderwelcometoinvestOneItemModelObj;

  var controller = Get.find<OnboardingSixController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_welcome_to".tr,
                style: TextStyle(
                  color: ColorConstant.gray800,
                  fontSize: getFontSize(
                    24,
                  ),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: getVerticalSize(
                    1.03,
                  ),
                ),
              ),
              TextSpan(
                text: "lbl_invest".tr,
                style: TextStyle(
                  color: ColorConstant.blue700,
                  fontSize: getFontSize(
                    24,
                  ),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: getVerticalSize(
                    1.03,
                  ),
                ),
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        Container(
          width: getHorizontalSize(
            285.00,
          ),
          margin: getMargin(
            top: 9,
          ),
          child: Text(
            "msg_the_best_app_to".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtInterRegular16.copyWith(
              height: getVerticalSize(
                1.24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
