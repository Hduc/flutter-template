import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

import '../our_gallery_screen/widgets/ourgallery_item_widget.dart';
import 'controller/our_gallery_controller.dart';

class OurGalleryScreen extends GetWidget<OurGalleryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(26),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 28, bottom: 28),
                    onTap: () {
                      onTapArrowleft30();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_our_gallery".tr),
                styleType: Style.bgFillWhiteA700),
            body: Obx(() => GridView.builder(
                padding: getPadding(left: 16, right: 16, top: 12),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(83),
                    crossAxisCount: 4,
                    mainAxisSpacing: getVerticalSize(24),
                    crossAxisSpacing: getVerticalSize(20)),
                physics: BouncingScrollPhysics(),
                itemCount: controller.imageList.length,
                itemBuilder: (context, index) {
                  String model = controller.imageList[index];
                  return OurgalleryItemWidget(model);
                }))));
  }

  onTapArrowleft30() {
    Get.back();
  }
}
