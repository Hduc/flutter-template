import '../models/intrest_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IntrestItemWidget extends StatelessWidget {
  final String? interest;
  IntrestItemWidget(
    this.intrestItemModelObj, {
    Key? key, this.interest,
  }) : super(
          key: key,
        );

  IntrestItemModel intrestItemModelObj;

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
          interest??intrestItemModelObj.categorietwoTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: intrestItemModelObj.isSelected.value
                ? theme.colorScheme.primary
                : appTheme.black900,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: intrestItemModelObj.isSelected.value,
        backgroundColor:Colors.grey.shade200,
        selectedColor: Colors.grey.shade200,
        shape: intrestItemModelObj.isSelected.value
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
          intrestItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
