import '../controller/book_appoiment_controller.dart';
import '../models/bookappoiment_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore: must_be_immutable
class BookappoimentItemWidget extends StatelessWidget {
  BookappoimentItemWidget(this.bookappoimentItemModelObj);

  BookappoimentItemModel bookappoimentItemModelObj;

  var controller = Get.find<BookAppoimentController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Text(
            bookappoimentItemModelObj.dateTxt.value,
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
            bookappoimentItemModelObj.dateoneTxt.value,
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
              bookappoimentItemModelObj.datetwoTxt.value,
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
              bookappoimentItemModelObj.datethreeTxt.value,
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
            bookappoimentItemModelObj.datefourTxt.value,
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
              bookappoimentItemModelObj.datefiveTxt.value,
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
            bookappoimentItemModelObj.datesixTxt.value,
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
