import '../controller/my_address_controller.dart';
import '../models/my_address_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyAddressItemWidget extends StatelessWidget {
  MyAddressItemWidget(
    this.myAddressItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyAddressItemModel myAddressItemModelObj;

  var controller = Get.find<MyAddressController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        left: 18,
        top: 19,
        right: 18,
        bottom: 19,
      ),
      decoration: AppDecoration.outline3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgArrowleft,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              top: 9,
              bottom: 6,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 97,
              top: 6,
            ),
            child: Obx(
              () => Text(
                myAddressItemModelObj.categoriesTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.headlineMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
