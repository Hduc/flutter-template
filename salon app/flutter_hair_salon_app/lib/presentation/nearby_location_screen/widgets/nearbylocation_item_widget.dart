import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../controller/nearby_location_controller.dart';
import '../models/nearby_location_model.dart';

// ignore: must_be_immutable
class NearbylocationItemWidget extends StatelessWidget {
  NearbylocationItemWidget(
    this.nearbylocationItemModelObj, {
    this.onTapColumnrectangle,
  });

  NearbyLocationModel nearbylocationItemModelObj;

  var controller = Get.find<NearbyLocationController>();

  VoidCallback? onTapColumnrectangle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnrectangle?.call();
      },
      child: Container(
        padding: getPadding(
          left: 8,
          top: 8,
          right: 8,
          bottom: 10,
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
              imagePath: Constant.imagePath + nearbylocationItemModelObj.image,
              height: getVerticalSize(
                106,
              ),
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: getPadding(
                top: 7,
              ),
              child: Text(
                nearbylocationItemModelObj.name,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtBody.copyWith(height: 1),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Text(
                "lbl_ln_singapore".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtFootnote.copyWith(height: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
