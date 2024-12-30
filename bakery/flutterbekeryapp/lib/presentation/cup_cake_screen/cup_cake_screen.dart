import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import '../top_picks_for_you_screen/widgets/productdetails_item_widget.dart';
import 'controller/cup_cake_controller.dart';
import 'models/productdetails2_item_model.dart';

class CupCakeScreen extends GetWidget<CupCakeController> {
  const CupCakeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
        onWillPop: () async {
         Get.back();
         return false;
        },
        child: ColorfulSafeArea(
            color: appTheme.white,
            child: Scaffold(
                backgroundColor: appTheme.gray10002,
                appBar: CustomAppBar(
                    height: getVerticalSize(81),
                    leadingWidth: 42,
                    leading: AppbarImage(
                        height: getVerticalSize(24),
                        width: getHorizontalSize(26),
                        svgPath: ImageConstant.imgArrowleft,
                        margin: getMargin(left: 16, top: 29, bottom: 28),
                        onTap: () {
                        Get.back();
                        }),
                    centerTitle: true,
                    title: AppbarTitle(text: "lbl_cup_cake".tr),
                    actions: [
                     AppbarImage(
                         height: getSize(24),
                         width: getSize(24),
                         svgPath: ImageConstant.imgSettings,
                         margin:
                         getMargin(left: 16, top: 29, right: 16, bottom: 28),
                         onTap: () {
                           Get.toNamed(AppRoutes.filterScreen);
                         })
                    ],
                    styleType: Style.bgFillWhiteA700),
                body: GetBuilder<CupCakeController>(
                    init: CupCakeController(),
                    builder: (controller) => Padding(
                     padding: getPadding(top: 10),
                     child: Container(
                      width: double.infinity,
                      decoration: AppDecoration.white,
                      child: GridView.builder(
                          padding: getPadding(left: 22,right: 22,top: 24,bottom: 24),
                          primary: false,
                          shrinkWrap: true,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: getVerticalSize(292),
                              mainAxisSpacing: getHorizontalSize(20),
                              crossAxisSpacing: getHorizontalSize(20),
                              crossAxisCount: controller.cupCakeData.length<2?controller.cupCakeData.length:2,
                             ),
                          physics: BouncingScrollPhysics(),
                          itemCount:controller.cupCakeData.length,
                          itemBuilder: (context, index) {
                            CupCakeItemModel model = controller.cupCakeData[index];
                           return product_formate(
                               model,
                                   () { onTapProductdetails();},
                               CustomImageView(
                                   onTap: () {
                                    controller.setFavProduct(model);
                                   },
                                   svgPath: model.isFavourite!
                                       ? ImageConstant.imgFavouriteIconSelected
                                       : ImageConstant.imgFavorite,
                                   height: getSize(20),
                                   width: getSize(20),
                                   alignment: Alignment.centerRight));
                          }),
                     ),
                    )
                ))));










    //  WillPopScope(
    //  onWillPop: () async {
    //   Get.back();
    //   return false;
    //  },
    //  child: ColorfulSafeArea(
    //      color: appTheme.white,
    //      child: Scaffold(
    //           backgroundColor: appTheme.gray10002,
    //           body: SizedBox(
    //               width: double.maxFinite,
    //               child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.start,
    //                   children: [
    //                     Container(
    //                         padding: getPadding(top: 21, bottom: 21),
    //                         decoration: AppDecoration.outlineBlueGray,
    //                         child: CustomAppBar(
    //                             leadingWidth: getHorizontalSize(44),
    //                             leading: AppbarImage(
    //                                 svgPath: ImageConstant.imgArrowleft,
    //                                 margin: getMargin(left: 20, bottom: 3),
    //                                 onTap: () {
    //                                   onTapArrowleftone();
    //                                 }),
    //                             centerTitle: true,
    //                             title: AppbarTitle(text: "lbl_cup_cake".tr),
    //                             actions: [
    //                               AppbarImage1(
    //                                   svgPath: ImageConstant.imgSettings,
    //                                   margin: getMargin(
    //                                       left: 20, top: 2, right: 20, bottom: 5))
    //                             ])),
    //                     SizedBox(
    //                         height: getVerticalSize(783),
    //                         width: double.maxFinite,
    //                         child: Stack(
    //                             alignment: Alignment.bottomCenter,
    //                             children: [
    //                               Align(
    //                                   alignment: Alignment.center,
    //                                   child: Container(
    //                                       height: getVerticalSize(771),
    //                                       width: double.maxFinite,
    //                                       decoration: BoxDecoration(
    //                                           color:
    //                                               theme.colorScheme.onPrimary))),
    //                               Align(
    //                                   alignment: Alignment.bottomCenter,
    //                                   child: Padding(
    //                                       padding: getPadding(
    //                                           left: 20, top: 32, right: 20),
    //                                       child: Obx(() => GridView.builder(
    //                                           shrinkWrap: true,
    //                                           gridDelegate:
    //                                               SliverGridDelegateWithFixedCrossAxisCount(
    //                                                   mainAxisExtent:
    //                                                       getVerticalSize(293),
    //                                                   crossAxisCount: 2,
    //                                                   mainAxisSpacing:
    //                                                       getHorizontalSize(20),
    //                                                   crossAxisSpacing:
    //                                                       getHorizontalSize(20)),
    //                                           physics: BouncingScrollPhysics(),
    //                                           itemCount: controller
    //                                               .cupCakeModelObj
    //                                               .value
    //                                               .productdetails2ItemList
    //                                               .value
    //                                               .length,
    //                                           itemBuilder: (context, index) {
    //                                             Productdetails2ItemModel model =
    //                                                 controller
    //                                                     .cupCakeModelObj
    //                                                     .value
    //                                                     .productdetails2ItemList
    //                                                     .value[index];
    //                                             return Productdetails2ItemWidget(
    //                                                 model,
    //                                                 onTapProductdetails: () {
    //                                               onTapProductdetails();
    //                                             });
    //                                           }))))
    //                             ]))
    //                   ])))),
    // );
  }

  /// Navigates to the detailTabContainerScreen when the action is triggered.
  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the detailTabContainerScreen.
  onTapProductdetails() {
    Get.toNamed(AppRoutes.detailTabContainerScreen);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
