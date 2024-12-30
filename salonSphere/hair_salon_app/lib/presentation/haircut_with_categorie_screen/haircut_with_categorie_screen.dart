import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/haircut_men/haircut_men.dart';
import 'package:hair_salon_app/presentation/haircut_with_categorie_one_screen/haircut_with_categorie_one_screen.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

import '../../core/utils/buttons_tabbar.dart';
import 'controller/haircut_with_categorie_controller.dart';

class HaircutWithCategorieScreen
    extends GetWidget<HaircutWithCategorieController> {
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
                  onTapArrowleft23();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_haircut".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: getPadding(left: 16, top: 8, right: 16),
                      child: ButtonsTabBar(
                        space: 16,
                        height: getVerticalSize(34),
                        labelStyle: TextStyle(
                            fontSize: getFontSize(18),
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w600,
                            color: ColorConstant.whiteA700),
                        backgroundColor: ColorConstant.pink800,
                        unselectedBackgroundColor: ColorConstant.whiteA700,
                        unselectedLabelStyle: TextStyle(
                            color: ColorConstant.pink800,
                            fontSize: getFontSize(18),
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w600),
                        unselectedBorderColor: ColorConstant.pink800,
                        tabs: [
                          Tab(
                            text: "lbl_man".tr,
                          ),
                          Tab(
                            text: "lbl_women".tr,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: TabBarView(children: [
                      HaircutMen(),
                      HaircutWithCategorieOneScreen()
                    ]))
                  ],
                ),
              ),
            ),
          ]),
        ));
  }

  onTapWomen() {
    Get.toNamed(
      AppRoutes.haircutWithCategorieOneScreen,
    );
  }

  onTapArrowleft23() {
    Get.back();
  }
}
