import '../controller/home_screen_container_controller.dart';
import '../models/listgroup4152_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listgroup4152ItemWidget extends StatelessWidget {
  Listgroup4152ItemWidget(
    this.listgroup4152ItemModelObj, {
    this.onTapColumngroup4152,
  });

  Listgroup4152ItemModel listgroup4152ItemModelObj;

  var controller = Get.find<HomeScreenContainerController>();

  VoidCallback? onTapColumngroup4152;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          onTapColumngroup4152?.call();
        },
        child: Padding(
          padding: getPadding(
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 56,
                width: 56,
                shape: IconButtonShape.CircleBorder28,
                padding: IconButtonPadding.PaddingAll12,
                child: CustomImageView(
                  imagePath: listgroup4152ItemModelObj.icon,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Text(
                  listgroup4152ItemModelObj.title!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAeonikRegular15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
