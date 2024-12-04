import '../models/list2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class List2ItemWidget extends StatelessWidget {
  List2ItemWidget(this.list2ItemModelObj);

  List2ItemModel list2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: getPadding(
          right: 5,
          bottom: 5,
        ),
        child: ChoiceChip(
          label: Text(
            list2ItemModelObj.visionaryTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorConstant.gray800,
              fontSize: getFontSize(
                14,
              ),
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: list2ItemModelObj.isSelected.value,
          backgroundColor: ColorConstant.whiteA700,
          selectedColor: ColorConstant.whiteA700,
          shape: list2ItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.gray80099,
                    width: getHorizontalSize(
                      1.00,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      16.00,
                    ),
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      16.00,
                    ),
                  ),
                ),
          onSelected: (value) {
            list2ItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
