import '../controller/search_result_controller.dart';
import '../models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultItemWidget extends StatelessWidget {
  SearchresultItemWidget(
    this.searchresultItemModelObj, {
    this.onTapColumnrectangle,
  });

  SearchresultItemModel searchresultItemModelObj;

  var controller = Get.find<SearchResultController>();

  VoidCallback? onTapColumnrectangle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnrectangle?.call();
      },
      child: Container(
        padding: getPadding(left: 6, top: 8, right: 6),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: Constant.imagePath+searchresultItemModelObj.image,
              height: getVerticalSize(
                105,
              ),
              width: double.infinity,
              radius: BorderRadius.circular(
                getHorizontalSize(
                  8,
                ),
              ),
            ),
            Padding(
              padding: getPadding(left: 2, top: 10),
              child: Text(
                "lbl_serenity_salon".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtBody.copyWith(height: 1),
              ),
            ),
            Padding(
              padding: getPadding(
                  left: 2, top: 5,  bottom: 13),
              child: Text(
                "lbl_ln_singapore".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtFootnote.copyWith(height: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
