import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../controller/our_gallery_controller.dart';

// ignore: must_be_immutable
class OurgalleryItemWidget extends StatelessWidget {
  OurgalleryItemWidget(this.ourgalleryItemModelObj);

  String ourgalleryItemModelObj;

  var controller = Get.find<OurGalleryController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: Constant.imagePath + ourgalleryItemModelObj,
      height: getVerticalSize(
        83,
      ),
      width: getHorizontalSize(
        84,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          12,
        ),
      ),
    );
  }
}
