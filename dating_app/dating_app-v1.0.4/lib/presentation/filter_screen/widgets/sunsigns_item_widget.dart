import '../models/sunsigns_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SunsignsItemWidget extends StatelessWidget {
  final String? sunSigns;
  SunsignsItemWidget(
    this.sunsignsItemModelObj, {
    Key? key, this.sunSigns,
  }) : super(
          key: key,
        );

  SunsignsItemModel sunsignsItemModelObj;

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
          sunSigns??sunsignsItemModelObj.categorieTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: sunsignsItemModelObj.isSelected.value
                ? theme.colorScheme.primary
                : appTheme.black900,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: sunsignsItemModelObj.isSelected.value,
        backgroundColor: appTheme.gray50,
        selectedColor: appTheme.gray50,
        shape: sunsignsItemModelObj.isSelected.value
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
          sunsignsItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
