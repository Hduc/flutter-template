import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/nearby_location_one_screen/nearby_location_one_screen.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

import '../nearby_location_screen/widgets/nearbylocation_item_widget.dart';
import 'controller/nearby_location_controller.dart';
import 'models/nearby_location_model.dart';

class NearbyLocationScreen extends GetWidget<NearbyLocationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                  onTapArrowleft1();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_nearby_location".tr),
            styleType: Style.bgFillWhiteA700,
            actions: [
              CustomImageView(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: ColorConstant.whiteA700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(getHorizontalSize(32)),
                          topRight: Radius.circular(getHorizontalSize(32))),
                    ),
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return NearbyLocationOneScreen();
                    },
                  );
                },
                svgPath: Constant.imagePath + "filter.svg",
                height: getVerticalSize(24),
                width: getVerticalSize(24),
                margin: getMargin(right: 16, top: 29, bottom: 28),
              )
            ]),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomTextFormField(
                controller: controller.searchController,
                hintText: "lbl_search_here".tr,
                margin: getMargin(top: 8, right: 16, left: 16),
                padding: TextFormFieldPadding.PaddingT13,
                textInputAction: TextInputAction.done,
                prefix: Container(
                    margin:
                        getMargin(left: 20, top: 11, right: 13, bottom: 11),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgContrast,
                      width: getVerticalSize(24),
                      height: getVerticalSize(24),
                    )),
                prefixConstraints:
                    BoxConstraints(maxHeight: getVerticalSize(46))),
            SizedBox(
              height: getVerticalSize(16),
            ),
            Expanded(
                child: GridView.builder(
                    padding: getPadding(left: 16, right: 16),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(170),
                        crossAxisCount: 2,
                        mainAxisSpacing: getVerticalSize(24),
                        crossAxisSpacing: getVerticalSize(20)),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller.images.length,
                    itemBuilder: (context, index) {
                      NearbyLocationModel model = controller.images[index];
                      return NearbylocationItemWidget(model,
                          onTapColumnrectangle: () {
                        onTapColumnrectangle();
                      });
                    }))
          ]),
        ));
  }

  onTapColumnrectangle() {
    Get.toNamed(AppRoutes.serviceDetailThreeScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
