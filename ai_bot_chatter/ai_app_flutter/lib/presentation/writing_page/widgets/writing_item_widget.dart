import '../controller/writing_controller.dart';
import '../models/writing_item_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WritingItemWidget extends StatelessWidget {
  WritingItemWidget(
    this.writingItemModelObj, {
    this.navigateWriteAnArticles,
  });

  WritingItemModel writingItemModelObj;

  var controller = Get.find<WritingController>();

  VoidCallback? navigateWriteAnArticles;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateWriteAnArticles?.call();
      },
      child: Container(
        padding: getPadding(
          all: 4,
        ),
        decoration: AppDecoration.fillOrange5001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgWritingnotes2,
              height: getSize(
                86,
              ),
              width: getSize(
                86,
              ),
              margin: getMargin(
                top: 13,
              ),
            ),
            Container(
              margin: getMargin(
                top: 16,
              ),
              padding: getPadding(
                left: 20,
                top: 13,
                right: 20,
                bottom: 13,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      writingItemModelObj.writeanarticlesTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtHeadline,
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
