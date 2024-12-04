import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import '../cakes_screen/cakes_screen.dart';
import '../categories_screen/controller/categories_controller.dart';
import '../categories_screen/models/cupcake_item_model.dart';
import '../cup_cake_screen/cup_cake_screen.dart';
import '../home_page/widgets/categorie_item_widget.dart';
import '../sweets_screen/sweets_screen.dart';
import 'controller/categories_2_grid_controller.dart';


// ignore: must_be_immutable
class Categories2GridScreen extends StatefulWidget {
  bool isNavigateHomeTab;

  Categories2GridScreen({super.key, this.isNavigateHomeTab = false});

  @override
  State<Categories2GridScreen> createState() => _Categories2GridScreenState();
}

class _Categories2GridScreenState extends State<Categories2GridScreen> {
 Categories2GridController categories2GridController = Get.put(Categories2GridController());
 List categoryList = [
   CupCakeScreen(),
  CakesScreen(),
  CakesScreen(),
  CakesScreen(),
  CakesScreen(),
  CakesScreen(),
  CakesScreen(),
  CakesScreen(),
  CakesScreen(),
  CakesScreen(),
  SweetsScreen(),
  SweetsScreen(),
 ];
 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return
    widget.isNavigateHomeTab
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
                           gridDelegate:
                           SliverGridDelegateWithFixedCrossAxisCount(
                               mainAxisExtent:
                               getVerticalSize(137),
                               crossAxisCount: controller.categoryList.length <
                                   3
                                   ? controller
                                   .categoryList.length
                                   : 3,
                               mainAxisSpacing:
                               getHorizontalSize(45),
                               crossAxisSpacing:
                               getHorizontalSize(20)),
                           physics: BouncingScrollPhysics(),
                           itemCount:
                           controller.categoryList.length,
                           itemBuilder: (context, index) {
                             CupcakeItemModel model =
                             controller.categoryList[index];
                             return animation_function(index,  CategorieItemWidget(model,
                                 onTapCategorie: () {
                                   Get.to(categoryList[index]);
                                 }));




                           })))
             ]))),
   );
 }
}




