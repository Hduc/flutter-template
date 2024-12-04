import '../controller/my_bookmark_controller.dart';
import '../models/mybookmark_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MybookmarkItemWidget extends StatelessWidget {
  MybookmarkItemWidget(
    this.mybookmarkItemModelObj, {
    this.onTapColumnrectangle,
  });

  MybookmarkItemModel mybookmarkItemModelObj;

  var controller = Get.find<MyBookmarkController>();

  VoidCallback? onTapColumnrectangle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnrectangle?.call();
      },
      child: Container(
        padding: getPadding(
          left: 8,
          top: 8,
          right: 8,
          bottom: 5,
        ),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle349,
              height: getVerticalSize(
                106,
              ),
              width: double.infinity,
              radius: BorderRadius.circular(
                getHorizontalSize(
                  8,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "lbl_serenity_salon".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBody,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 4,
                        ),
                        child: Text(
                          "lbl_ln_singapore".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtFootnote,
                        ),
                      ),
                    ],
                  ),
                  CustomIconButton(
                    height: 24,
                    width: 24,
                    margin: getMargin(),
                    variant: IconButtonVariant.OutlineGray300,
                    shape: IconButtonShape.CircleBorder12,
                    padding: IconButtonPadding.PaddingAll4,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIcbookmark,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
