import '../controller/book_appoiment_one_controller.dart';
import '../models/bookappoiment2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore: must_be_immutable
class Bookappoiment2ItemWidget extends StatelessWidget {
  Bookappoiment2ItemWidget(this.bookappoiment2ItemModelObj);

  Bookappoiment2ItemModel bookappoiment2ItemModelObj;

  var controller = Get.find<BookAppoimentOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Text(
            bookappoiment2ItemModelObj.dateTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtSFProDisplayRegular20.copyWith(
              letterSpacing: getHorizontalSize(
                0.38,
              ),
            ),
          ),
        ),
        Obx(
          () => Text(
            bookappoiment2ItemModelObj.dateoneTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtSFProDisplayRegular20.copyWith(
              letterSpacing: getHorizontalSize(
                0.38,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Obx(
            () => Text(
              bookappoiment2ItemModelObj.datetwoTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProDisplayRegular20.copyWith(
                letterSpacing: getHorizontalSize(
                  0.38,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Obx(
            () => Text(
              bookappoiment2ItemModelObj.datethreeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProDisplayRegular20.copyWith(
                letterSpacing: getHorizontalSize(
                  0.38,
                ),
              ),
            ),
          ),
        ),
        Obx(
          () => Text(
            bookappoiment2ItemModelObj.datefourTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtSFProDisplayRegular20.copyWith(
              letterSpacing: getHorizontalSize(
                0.38,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              bookappoiment2ItemModelObj.datefiveTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProDisplayRegular20.copyWith(
                letterSpacing: getHorizontalSize(
                  0.38,
                ),
              ),
            ),
          ),
        ),
        Obx(
          () => Text(
            bookappoiment2ItemModelObj.datesixTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtSFProDisplayRegular20.copyWith(
              letterSpacing: getHorizontalSize(
                0.38,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
