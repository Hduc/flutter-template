import '../controller/details_controller.dart';
import '../models/sliderarrowleft_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dating_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderarrowleftItemWidget extends StatelessWidget {
  SliderarrowleftItemWidget(
    this.sliderarrowleftItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderarrowleftItemModel sliderarrowleftItemModelObj;

  var controller = Get.find<DetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          all: 16,
        ),
        decoration: AppDecoration.gradientnameblack900opacity0nameblack900,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 36,
              width: 36,
              margin: getMargin(
                bottom: 324,
              ),
              padding: getPadding(
                all: 7,
              ),
              decoration: IconButtonStyleHelper.fillGray100,
              child: CustomImageView(
                svgPath: ImageConstant.imgArrowleftBlack900,
              ),
            ),
            CustomElevatedButton(
              text: "lbl_2_5_km".tr,
              margin: getMargin(
                top: 4,
                bottom: 328,
              ),
              leftIcon: Container(
                margin: getMargin(
                  right: 1,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgRewind,
                ),
              ),
              buttonStyle: CustomButtonStyles.fillGray50TL61.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                getHorizontalSize(
                  77,
                ),
                getVerticalSize(
                  28,
                ),
              ))),
              buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
            ),
          ],
        ),
      ),
    );
  }
}
