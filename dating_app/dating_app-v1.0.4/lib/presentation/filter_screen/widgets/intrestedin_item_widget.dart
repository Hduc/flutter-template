import '../models/intrestedin_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IntrestedinItemWidget extends StatelessWidget {
  final String? interest;
      IntrestedinItemWidget(
    this.intrestedinItemModelObj, {
    Key? key, this.interest,
  }) : super(
          key: key,
        );

  IntrestedinItemModel intrestedinItemModelObj;

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
          interest??'genderIn.last',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: intrestedinItemModelObj.isSelected.value
                ? appTheme.black900
                : theme.colorScheme.primary,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: intrestedinItemModelObj.isSelected.value,
        backgroundColor: Colors.grey.shade200,
        selectedColor: Colors.grey.shade200,
        shape: intrestedinItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
              )
            : RoundedRectangleBorder(
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
              ),

        onSelected: (value) {
          intrestedinItemModelObj.isSelected.value = value;
        },
      ),
    );
  }

}
