import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:jewellery_app/core/app_export.dart';
import 'package:jewellery_app/widgets/app_bar/appbar_image.dart';
import 'package:jewellery_app/widgets/app_bar/appbar_title.dart';
import 'package:jewellery_app/widgets/app_bar/custom_app_bar.dart';

import '../top_picks_for_you_screen/widgets/productdetails_item_widget.dart';
import 'controller/textures_screen_controller.dart';
import 'models/productdetails2_item_model.dart';

class MoterCyclePartsScreen extends GetWidget<MoterCyclePartsScreenController> {
  const MoterCyclePartsScreen({Key? key}) : super(key: key);

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
                    title: AppbarTitle(text: "Sale"),
                    actions: [
                      AppbarImage(
                        height: getSize(24),
                        width: getSize(24),
                        svgPath: ImageConstant.imgSettings,
                        margin:
                            getMargin(left: 16, top: 29, right: 16, bottom: 28),
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            getHorizontalSize(24)),
                                        topRight: Radius.circular(
                                            getHorizontalSize(24)))),
                                child: Padding(
                                  padding: getPadding(
                                      top: 24, left: 20, right: 20, bottom: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            // alignment: Alignment.center,
                                            children: [
                                              Text(
                                                'Sort By',
                                                style: theme
                                                    .textTheme.bodyLarge!
                                                    .copyWith(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: getFontSize(20),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: GestureDetector(
                                              onTap: () => Get.back(),
                                              child: Container(
                                                  padding: getPadding(all: 8),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF4F4F4),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Icon(
                                                    Icons.close_rounded,
                                                    color: Colors.black,
                                                    size: getVerticalSize(16),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () => Get.back(),
                                        child: Padding(
                                          padding:
                                              getPadding(top: 24, bottom: 8),
                                          child: Text(
                                            'new added',
                                            style: theme.textTheme.bodyLarge!
                                                .copyWith(
                                                    fontSize: getFontSize(18),
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        color: Color(0xFFF4F4F4),
                                      ),
                                      GestureDetector(
                                        onTap: () => Get.back(),
                                        child: Padding(
                                          padding:
                                              getPadding(top: 8, bottom: 8),
                                          child: Text(
                                            'lowest price',
                                            style: theme.textTheme.bodyLarge!
                                                .copyWith(
                                                    fontSize: getFontSize(18),
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        color: Color(0xFFF4F4F4),
                                      ),
                                      GestureDetector(
                                        onTap: () => Get.back(),
                                        child: Padding(
                                          padding:
                                              getPadding(top: 8, bottom: 8),
                                          child: Text(
                                            'highest price',
                                            style: theme.textTheme.bodyLarge!
                                                .copyWith(
                                                    fontSize: getFontSize(18),
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      )
                    ],
                    styleType: Style.bgFillWhiteA700),
                body: GetBuilder<MoterCyclePartsScreenController>(
                    init: MoterCyclePartsScreenController(),
                    builder: (controller) => Padding(
                          padding: getPadding(top: 10),
                          child: Container(
                            width: double.infinity,
                            decoration: AppDecoration.white,
                            child: GridView.builder(
                                padding: getPadding(
                                    left: 22, right: 22, top: 24, bottom: 24),
                                primary: false,
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(292),
                                  mainAxisSpacing: getHorizontalSize(20),
                                  crossAxisSpacing: getHorizontalSize(20),
                                  crossAxisCount:
                                      controller.texturesData.length < 2
                                          ? controller.texturesData.length
                                          : 2,
                                ),
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.texturesData.length,
                                itemBuilder: (context, index) {
                                  MoterCyclePartsModel model =
                                      controller.texturesData[index];
                                  return product_formate(model, () {
                                    onTapProductdetails();
                                  },
                                      CustomImageView(
                                          onTap: () {
                                            controller.setFavProduct(model);
                                          },
                                          svgPath: model.isFavourite!
                                              ? ImageConstant
                                                  .imgFavouriteIconSelected
                                              : ImageConstant.imgFavorite,
                                          height: getSize(20),
                                          width: getSize(20),
                                          alignment: Alignment.centerRight));
                                }),
                          ),
                        )))));

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
    //                                               .texturesModelObj
    //                                               .value
    //                                               .productdetails2ItemList
    //                                               .value
    //                                               .length,
    //                                           itemBuilder: (context, index) {
    //                                             Productdetails2ItemModel model =
    //                                                 controller
    //                                                     .texturesModelObj
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
