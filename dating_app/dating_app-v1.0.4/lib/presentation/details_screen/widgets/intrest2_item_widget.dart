import '../models/intrest2_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Intrest2ItemWidget extends StatelessWidget {
  final String? text;
  Intrest2ItemWidget(
    this.intrest2ItemModelObj, {
    Key? key, this.text,
  }) : super(
          key: key,
        );

  Intrest2ItemModel intrest2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          left: 16,
          right: 16,
          top: 8,
          bottom: 8
        ),

        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          text??intrest2ItemModelObj.categorieTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: intrest2ItemModelObj.isSelected.value,
        backgroundColor: appTheme.gray50,
        selectedColor: Color(0xFFF7F0FD),
        shape: intrest2ItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xFFAA6BE9),
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
          intrest2ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
