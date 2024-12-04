import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../models/ourservices_item_model.dart';

// ignore: must_be_immutable
class OurservicesItemWidget extends StatelessWidget {
  OurservicesItemWidget(
    this.ourservicesItemModelObj, {
    this.onTapServices,
  });

  OurservicesItemModel ourservicesItemModelObj;

  VoidCallback? onTapServices;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapServices?.call();
      },
      child: Container(
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: Constant.imagePath + ourservicesItemModelObj.image,
              height: getVerticalSize(
                119,
              ),
              width: double.infinity,
              radius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
                topRight: Radius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 8,
                right: 8,
                top: 8,
              ),
              child: Text(
                ourservicesItemModelObj.haircutTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextBold20,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 8,
                left: 8,
                right: 8,
              ),
              child: Text(
                ourservicesItemModelObj.typescounterTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtFootnoteBlack900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
