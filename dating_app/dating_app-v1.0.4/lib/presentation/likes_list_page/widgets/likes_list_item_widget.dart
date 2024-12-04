import '../controller/likes_list_controller.dart';
import '../models/likes_list_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LikesListItemWidget extends StatelessWidget {
  LikesListItemWidget(
    this.likesListItemModelObj, {
    Key? key,
    this.onTapClient,
  }) : super(
          key: key,
        );

  LikesListItemModel likesListItemModelObj;

  var controller = Get.find<LikesListController>();

  VoidCallback? onTapClient;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapClient?.call();
      },
      child: Container(
        padding: getPadding(
          all: 8,
        ),
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getVerticalSize(
                170,
              ),
              width: getHorizontalSize(
                174,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle26,
                    height: getVerticalSize(
                      170,
                    ),
                    width: getHorizontalSize(
                      174,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        12,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomIconButton(
                    height: 28,
                    width: 28,
                    margin: getMargin(
                      top: 12,
                      right: 12,
                    ),
                    padding: getPadding(
                      all: 6,
                    ),
                    decoration: IconButtonStyleHelper.fillGray50TL14,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgEye,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 11,
              ),
              child: Obx(
                () => Text(
                  likesListItemModelObj.jennywilsontwenTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
                bottom: 8,
              ),
              child: Text(
                "lbl_new_york_usa".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
