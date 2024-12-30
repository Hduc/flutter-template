import '../controller/details_controller.dart';
import '../models/details_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsItemWidget extends StatelessWidget {
  DetailsItemWidget(
    this.detailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DetailsItemModel detailsItemModelObj;

  var controller = Get.find<DetailsController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle4401,
      height: getVerticalSize(
        140,
      ),
      width: getHorizontalSize(
        122,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          12,
        ),
      ),
    );
  }
}
