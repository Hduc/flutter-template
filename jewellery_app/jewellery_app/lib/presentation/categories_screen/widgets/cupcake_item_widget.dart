import '../controller/categories_controller.dart';
import '../models/cupcake_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jewellery_app/core/app_export.dart';

// ignore: must_be_immutable
class CupcakeItemWidget extends StatelessWidget {
  CupcakeItemWidget(
    this.MoterCyclePartsModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  // ignore: non_constant_identifier_names
  MoterCyclePartsModel MoterCyclePartsModelObj;

  var controller = Get.find<CategoriesController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getSize(102),
          width: getSize(102),
          padding: getPadding(
            left: 12,
            top: 26,
            right: 12,
            bottom: 26,
          ),
          decoration: AppDecoration.fillGray100.copyWith(
            color: Color(0xFFF4F4F4),
            borderRadius: BorderRadiusStyle.circleBorder51,
          ),
          child: CustomImageView(
            imagePath: MoterCyclePartsModelObj.image,
            height: getVerticalSize(48),
            width: getHorizontalSize(76),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 20,
          ),
          child: Text(
            MoterCyclePartsModelObj.title!,
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
