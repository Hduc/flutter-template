import '../controller/history_activities_controller.dart';
import '../models/list5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class List5ItemWidget extends StatelessWidget {
  List5ItemWidget(this.list5ItemModelObj);

  List5ItemModel list5ItemModelObj;

  var controller = Get.find<HistoryActivitiesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
          children: [
            CustomIconButton(
              height: 40,
              width: 40,
              shape: IconButtonShape.CircleBorder18,
              padding: IconButtonPadding.PaddingAll1,
              child: CustomImageView(
                svgPath: ImageConstant.imgAirplane4,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_30_942".tr,
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
                      top: 7,
                    ),
                    child: Text(
                      "msg_deposi_via_bank".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegularblack.copyWith(
                        height: getVerticalSize(
                          1.27,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
          CustomButton(
            height: 26,
            width: 80,
            text: "lbl_successful".tr,
            margin: getMargin(
              left: 0,
              top: 0,
              bottom: 0,
            ),
            variant: ButtonVariant.FillGreen5001,
            shape: ButtonShape.RoundedBorder13,
            padding: ButtonPadding.PaddingAll5,
            fontStyle: ButtonFontStyle.InterRegular12Green500,
          ),
        ],
      ),
    );
  }
}
