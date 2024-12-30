import '../../home_screen_container_page/models/listgroup4152_item_model.dart';
import '../controller/categories_controller.dart';
import '../models/categories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(
    this.categoriesItemModelObj, {
    this.onTapColumnrocketone,
  });

  Listgroup4152ItemModel categoriesItemModelObj;

  var controller = Get.find<CategoriesController>();

  VoidCallback? onTapColumnrocketone;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnrocketone?.call();
      },
      child: Container(
        padding: getPadding(
          left: 0,
          top: 7,
          right: 0,
          bottom: 7,
        ),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: categoriesItemModelObj.icon,
              height: getSize(
                73,
              ),
              width: getSize(
                73,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Text(
                categoriesItemModelObj.title!,
                overflow: TextOverflow.ellipsis,

                style: AppStyle.txtHeadline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
