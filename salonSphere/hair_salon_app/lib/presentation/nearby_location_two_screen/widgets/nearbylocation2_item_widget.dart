import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../../nearby_location_screen/models/nearby_location_model.dart';
import '../controller/nearby_location_two_controller.dart';

// ignore: must_be_immutable
class Nearbylocation2ItemWidget extends StatelessWidget {
  Nearbylocation2ItemWidget(
    this.nearbylocation2ItemModelObj, {
    this.onTapColumnrectangle,
  });

  NearbyLocationModel nearbylocation2ItemModelObj;

  var controller = Get.find<NearbyLocationTwoController>();

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
              imagePath: Constant.imagePath + nearbylocation2ItemModelObj.image,
              height: getVerticalSize(
                106,
              ),
              width: double.infinity,
            ),
            Padding(
              padding: getPadding(
                top: 7,
              ),
              child: Text(
                nearbylocation2ItemModelObj.name,
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
