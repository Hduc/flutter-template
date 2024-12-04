import '../models/categorie2_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categorie2ItemWidget extends StatelessWidget {
  final String? categoriesText;
  Categorie2ItemWidget(
    this.categorie2ItemModelObj, {
    Key? key, this.categoriesText,
  }) : super(
          key: key,
        );

  Categorie2ItemModel categorie2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          left: 16,
          right: 16,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          categoriesText??'categorie2ItemModelObj.categorieTxt.value,',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: categorie2ItemModelObj.isSelected.value
                ? theme.colorScheme.primary
                : appTheme.black900,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: categorie2ItemModelObj.isSelected.value,
        backgroundColor: appTheme.gray50,
        selectedColor: Color(0xFFF7F0FD),
        shape: categorie2ItemModelObj.isSelected.value
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
          categorie2ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
