import 'package:jewellery_app/core/app_export.dart';
import 'package:jewellery_app/widgets/app_bar/appbar_image.dart';
import 'package:jewellery_app/widgets/app_bar/appbar_title.dart';
import 'package:jewellery_app/widgets/app_bar/custom_app_bar.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

import '../categories_screen/controller/categories_controller.dart';
import '../categories_screen/models/cupcake_item_model.dart';
import '../home_page/widgets/categorie_item_widget.dart';
import '../moter_cycle_parts_screen/textures_screen.dart';
import 'controller/categories_2_grid_controller.dart';

class Categories2GridScreen extends StatefulWidget {
  bool isNavigateHomeTab;

  Categories2GridScreen({super.key, this.isNavigateHomeTab = false});

  @override
  State<Categories2GridScreen> createState() => _Categories2GridScreenState();
}

class _Categories2GridScreenState extends State<Categories2GridScreen> {
  Categories2GridController categories2GridController =
      Get.put(Categories2GridController());
  List categoryList = [
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return widget.isNavigateHomeTab
        ? WillPopScope(
            onWillPop: () async {
              Get.back();
              return false;
            },
            child: ColorfulSafeArea(
                color: appTheme.white,
                child: Scaffold(
                    backgroundColor: appTheme.gray10002,
                    appBar: CustomAppBar(
                        height: getVerticalSize(73),
                        leadingWidth: getHorizontalSize(44),
                        leading: AppbarImage(
                            svgPath: ImageConstant.imgArrowleft,
                            margin: getMargin(left: 20, top: 24, bottom: 25),
                            onTap: () {
                              Get.back();
                            }),
                        centerTitle: true,
                        title: AppbarTitle(text: "lbl_categories".tr),
                        styleType: Style.bgFill),
                    body: getBody())))
        : getBody();

    //
    // SafeArea(
    //     child: Scaffold(
    //         backgroundColor: appTheme.gray10002,
    //         body: SizedBox(
    //             width: double.maxFinite,
    //             child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 children: [
    //                  Container(
    //                      padding: getPadding(top: 21, bottom: 21),
    //                      decoration: AppDecoration.white,
    //                      child: CustomAppBar(
    //                          leadingWidth: getHorizontalSize(44),
    //                          leading: AppbarImage(
    //                              svgPath: ImageConstant.imgArrowleft,
    //                              margin: getMargin(left: 20, bottom: 3),
    //                              onTap: () {
    //                               onTapArrowleftone();
    //                              }),
    //                          centerTitle: true,
    //                          title: AppbarTitle(text: "lbl_categories".tr))),
    //                  SizedBox(
    //                      height: getVerticalSize(783),
    //                      width: double.maxFinite,
    //                      child: Stack(
    //                          alignment: Alignment.bottomCenter,
    //                          children: [
    //                           Align(
    //                               alignment: Alignment.center,
    //                               child: Container(
    //                                   height: getVerticalSize(771),
    //                                   width: double.maxFinite,
    //                                   decoration: BoxDecoration(
    //                                       color:
    //                                       theme.colorScheme.onPrimary))),
    //                           Align(
    //                               alignment: Alignment.bottomCenter,
    //                               child: Padding(
    //                                   padding: getPadding(
    //                                       left: 19, top: 36, right: 19),
    //                                   child: Obx(() => GridView.builder(
    //                                       shrinkWrap: true,
    //                                       gridDelegate:
    //                                       SliverGridDelegateWithFixedCrossAxisCount(
    //                                           mainAxisExtent:
    //                                           getVerticalSize(211),
    //                                           crossAxisCount: 2,
    //                                           mainAxisSpacing:
    //                                           getHorizontalSize(46),
    //                                           crossAxisSpacing:
    //                                           getHorizontalSize(46)),
    //                                       physics: BouncingScrollPhysics(),
    //                                       itemCount: controller
    //                                           .categories2GridModelObj
    //                                           .value
    //                                           .categorie1ItemList
    //                                           .value
    //                                           .length,
    //                                       itemBuilder: (context, index) {
    //                                        Categorie1ItemModel model =
    //                                        controller
    //                                            .categories2GridModelObj
    //                                            .value
    //                                            .categorie1ItemList
    //                                            .value[index];
    //                                        return Categorie1ItemWidget(
    //                                            model);
    //                                       }))))
    //                          ]))
    //                 ]))));
  }

  onTapArrowleftone() {
    Get.back();
  }

  Widget getBody() {
    return GetBuilder<CategoriesController>(
      init: CategoriesController(),
      builder: (controller) => SizedBox(
          width: double.maxFinite,
          child: Container(
              width: double.maxFinite,
              padding: getPadding(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: !widget.isNavigateHomeTab ? 16 : 0),
              color: appTheme.gray10001,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                !widget.isNavigateHomeTab
                    ? CustomAppBar(
                        height: getVerticalSize(81),
                        leadingWidth: 42,
                        centerTitle: true,
                        title: AppbarTitle(text: "lbl_categories".tr),
                        styleType: Style.bgFillWhiteA700,
                      )
                    : SizedBox(
                        height: getVerticalSize(0),
                      ),
                SizedBox(
                  height: getVerticalSize(16),
                ),
                Expanded(
                    child: Container(
                  color: appTheme.white,
                  child: GridView.builder(
                      padding: getPadding(left: 16, right: 16, top: 24),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(145),
                          crossAxisCount: controller.categoryList.length < 3
                              ? controller.categoryList.length
                              : 3,
                          mainAxisSpacing: getVerticalSize(20),
                          crossAxisSpacing: getHorizontalSize(38)),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller.categoryList.length,
                      itemBuilder: (context, index) {
                        MoterCyclePartsModel model =
                            controller.categoryList[index];
                        return animation_function(
                            index,
                            CategorieItemWidget(model, onTapCategorie: () {
                              Get.to(categoryList[index]);
                            }));
                      }),
                ))
              ]))),
    );
  }
}
