import '../our_services_screen/widgets/ourservices_item_widget.dart';
import 'controller/our_services_controller.dart';
import 'models/ourservices_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

class OurServicesScreen extends GetWidget<OurServicesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onTapArrowleft22();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_our_services".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: GridView.builder(
              padding: getPadding(left: 16, right: 16, top: 10),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: getVerticalSize(188),
                  crossAxisCount: 2,
                  mainAxisSpacing: getVerticalSize(30),
                  crossAxisSpacing: getVerticalSize(20)),
              physics: BouncingScrollPhysics(),
              itemCount: controller
                  .ourServicesModelObj.value.ourservicesItemList.length,
              itemBuilder: (context, index) {
                OurservicesItemModel model = controller
                    .ourServicesModelObj.value.ourservicesItemList[index];
                return OurservicesItemWidget(model, onTapServices: () {
                  onTapServices();
                });
              }),
        ));
  }

  onTapServices() {
    Get.toNamed(AppRoutes.haircutWithCategorieScreen);
  }

  onTapArrowleft22() {
    Get.back();
  }
}
