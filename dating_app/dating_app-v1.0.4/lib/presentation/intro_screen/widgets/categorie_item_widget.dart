
import '../models/categorie_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategorieItemWidget extends StatelessWidget {
  final String? categories;
  CategorieItemWidget(
    this.categorieItemModelObj, {
    Key? key, this.categories,
  }) : super(
          key: key,
        );

  CategorieItemModel categorieItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          left: 16,
          right: 16,
          top: 8,
          bottom: 8,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          categories??categorieItemModelObj.categorieTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: categorieItemModelObj.isSelected.value
                ? theme.colorScheme.primary
                : appTheme.black900,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: categorieItemModelObj.isSelected.value,
        backgroundColor: appTheme.gray50,
        selectedColor: appTheme.gray50,
        shape: categorieItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
              ),
        onSelected: (value) {
          categorieItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
