import '../controller/search_result_controller.dart';
import '../models/search_result_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchResultItemWidget extends StatelessWidget {
  SearchResultItemWidget(
    this.searchResultItemModelObj, {
    Key? key,
    this.onTapClient,
  }) : super(
          key: key,
        );

  SearchResultItemModel searchResultItemModelObj;

  var controller = Get.find<SearchResultController>();

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
            CustomImageView(
              imagePath: ImageConstant.imgRectangle2170x174,
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
            ),
            Padding(
              padding: getPadding(
                top: 11,
              ),
              child: Obx(
                () => Text(
                  searchResultItemModelObj.jennywilsontwenTxt.value,
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
