import '../controller/search_controller.dart';
import '../models/search_item_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.searchItemModelObj);

  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchScreenController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgSearchGray600,
          height: getSize(
            20,
          ),
          width: getSize(
            20,
          ),
          margin: getMargin(
            bottom: 2,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 1,
          ),
          child: Obx(
            () => Text(
              searchItemModelObj.datatypeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtBodyGray600.copyWith(
                letterSpacing: getHorizontalSize(
                  0.16,
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgClose,
          height: getSize(
            20,
          ),
          width: getSize(
            20,
          ),
          margin: getMargin(
            bottom: 2,
          ),
        ),
      ],
    );
  }
}
