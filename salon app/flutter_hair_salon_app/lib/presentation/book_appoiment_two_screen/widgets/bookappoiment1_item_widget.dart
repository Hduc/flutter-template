import '../controller/book_appoiment_two_controller.dart';
import '../models/bookappoiment1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore: must_be_immutable
class Bookappoiment1ItemWidget extends StatelessWidget {
  Bookappoiment1ItemWidget(this.bookappoiment1ItemModelObj);

  Bookappoiment1ItemModel bookappoiment1ItemModelObj;

  var controller = Get.find<BookAppoimentTwoController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Text(
            bookappoiment1ItemModelObj.dateTxt.value,
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
            bookappoiment1ItemModelObj.dateoneTxt.value,
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
              bookappoiment1ItemModelObj.datetwoTxt.value,
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
              bookappoiment1ItemModelObj.datethreeTxt.value,
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
            bookappoiment1ItemModelObj.datefourTxt.value,
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
              bookappoiment1ItemModelObj.datefiveTxt.value,
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
            bookappoiment1ItemModelObj.datesixTxt.value,
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
