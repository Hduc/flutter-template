import '../controller/categories_controller.dart';
import '../models/cupcake_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hairwig_app/core/app_export.dart';

// ignore: must_be_immutable
class CupcakeItemWidget extends StatelessWidget {
  CupcakeItemWidget(
    this.TexturesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  // ignore: non_constant_identifier_names
  TexturesItemModel TexturesItemModelObj;

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
            borderRadius: BorderRadiusStyle.circleBorder51,
          ),
          child: CustomImageView(
            imagePath: TexturesItemModelObj.image,
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
            TexturesItemModelObj.title!,
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
