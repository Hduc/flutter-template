import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../models/gridrectangleth1_item_model.dart';

// ignore: must_be_immutable
class Gridrectangleth1ItemWidget extends StatelessWidget {
  Gridrectangleth1ItemWidget(
    this.gridrectangleth1ItemModelObj, {
    this.onTapColumnrectangle,
  });

  Gridrectangleth1ItemModel gridrectangleth1ItemModelObj;

  // var controller = Get.find<HaircutWithCategorieController>();

  VoidCallback? onTapColumnrectangle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnrectangle?.call();
      },
      child: Container(
        padding: getPadding(
          left: 6,
          top: 8,
          right: 6,
          bottom: 15,
        ),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath:
                  Constant.imagePath + gridrectangleth1ItemModelObj.image,
              height: getVerticalSize(
                109,
              ),
              width: double.infinity,
              radius: BorderRadius.circular(
                getHorizontalSize(
                  8,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 2,
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    gridrectangleth1ItemModelObj.typeTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtBody,
                  ),
                  Text(
                    "lbl_65".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtFootnoteBlack900,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 2,
                top: 7,
              ),
              child: Text(
                "lbl_700_booked".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextRegular11Black900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
