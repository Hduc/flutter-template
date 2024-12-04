import '../controller/register_date_of_birth_controller.dart';
import '../models/listsixteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class ListsixteenItemWidget extends StatelessWidget {
  ListsixteenItemWidget(this.listsixteenItemModelObj);

  ListsixteenItemModel listsixteenItemModelObj;

  var controller = Get.find<RegisterDateOfBirthController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_16".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterMedium20WhiteA700a2.copyWith(
            letterSpacing: getHorizontalSize(
              0.25,
            ),
            height: getVerticalSize(
              1.12,
            ),
          ),
        ),
        Spacer(
          flex: 53,
        ),
        Text(
          "lbl_08".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterMedium20WhiteA700a2.copyWith(
            letterSpacing: getHorizontalSize(
              0.25,
            ),
            height: getVerticalSize(
              1.12,
            ),
          ),
        ),
        Spacer(
          flex: 46,
        ),
        Text(
          "lbl_1991".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterMedium20WhiteA700a2.copyWith(
            letterSpacing: getHorizontalSize(
              0.25,
            ),
            height: getVerticalSize(
              1.12,
            ),
          ),
        ),
      ],
    );
  }
}
