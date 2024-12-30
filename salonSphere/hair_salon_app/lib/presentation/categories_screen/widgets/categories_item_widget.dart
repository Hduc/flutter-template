import 'package:hair_salon_app/presentation/home_page_screen/models/category_model.dart';

import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(
    this.categoriesItemModelObj, {
    this.onTapColumnellipsesi,
  });

  CategoryModel categoriesItemModelObj;

  // var controller = Get.find<CategoriesController>();

  VoidCallback? onTapColumnellipsesi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnellipsesi?.call();
      },
      child: Column(
        children: [
          CustomImageView(
            imagePath: Constant.imagePath + categoriesItemModelObj.image,
            height: getSize(
              90,
            ),
            width: getSize(
              90,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
            ),
            child: Text(
              categoriesItemModelObj.name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtBody.copyWith(height: 1),
            ),
          ),
        ],
      ),
    );
  }
}
