import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../controller/service_detail_two_container_controller.dart';

// ignore: must_be_immutable
class GridrectangleItemWidget extends StatelessWidget {
  GridrectangleItemWidget(this.gridrectangleItemModelObj);

  String gridrectangleItemModelObj;

  var controller = Get.find<ServiceDetailTwoContainerController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: Constant.imagePath + gridrectangleItemModelObj,
      radius: BorderRadius.circular(
        getHorizontalSize(
          12,
        ),
      ),
    );
  }
}
