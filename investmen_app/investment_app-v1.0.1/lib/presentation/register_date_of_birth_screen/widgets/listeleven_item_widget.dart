import '../controller/register_date_of_birth_controller.dart';
import '../models/listeleven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore: must_be_immutable
class ListelevenItemWidget extends StatelessWidget {
  ListelevenItemWidget(this.listelevenItemModelObj);

  ListelevenItemModel listelevenItemModelObj;

  var controller = Get.find<RegisterDateOfBirthController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_11".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterMedium20WhiteA70063.copyWith(
            letterSpacing: getHorizontalSize(
              0.25,
            ),
            height: getVerticalSize(
              1.12,
            ),
          ),
        ),
        Spacer(
          flex: 55,
        ),
        Text(
          "lbl_04".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterMedium20WhiteA70063.copyWith(
            letterSpacing: getHorizontalSize(
              0.25,
            ),
            height: getVerticalSize(
              1.12,
            ),
          ),
        ),
        Spacer(
          flex: 44,
        ),
        Text(
          "lbl_1986".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterMedium20WhiteA70063.copyWith(
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
