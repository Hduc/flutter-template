import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../../nearby_location_screen/models/nearby_location_model.dart';
import '../controller/nearby_location1_controller.dart';

// ignore: must_be_immutable
class Nearbylocation1ItemWidget extends StatelessWidget {
  Nearbylocation1ItemWidget(
    this.nearbylocation1ItemModelObj, {
    this.onTapColumnrectangle,
  });

  NearbyLocationModel nearbylocation1ItemModelObj;

  var controller = Get.find<NearbyLocation1Controller>();

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
              imagePath: Constant.imagePath + nearbylocation1ItemModelObj.image,
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
                nearbylocation1ItemModelObj.name,
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
