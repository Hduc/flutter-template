import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jewellery_app/core/app_export.dart';
import 'package:jewellery_app/widgets/app_bar/appbar_image_1.dart';
import 'package:jewellery_app/widgets/app_bar/appbar_title.dart';
import 'package:jewellery_app/widgets/custom_search_view.dart';

import '../our_speciality_screen/controller/our_speciality_controller.dart';
import '../our_speciality_screen/models/our_speciality_item_model.dart';
import '../top_picks_for_you_screen/controller/top_picks_for_you_controller.dart';
import '../top_picks_for_you_screen/models/productdetails_item_model.dart';
import '../top_picks_for_you_screen/widgets/productdetails_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/discount_item_slider_model.dart';
import 'models/slidercar_item_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categoriClass = [

  ];

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder<HomeController>(
      builder: (controller) => Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray10002,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                padding: getPadding(top: 18, bottom: 18),
                decoration: AppDecoration.white,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppbarTitle(
                          text: "lbl_hi_ronald".tr,
                          margin: getMargin(left: 20)),
                      AppbarImage1(
                          onTap: () {
                            Get.toNamed(AppRoutes.notificationsScreen);
                          },
                          svgPath: ImageConstant.imgIcnotificationbing,
                          margin: getMargin(left: 20, right: 20, bottom: 2))
                    ],
                  ),
                  CustomSearchView(
                    margin: getMargin(left: 20, top: 25, right: 20),
                    controller: controller.searchController,
                    hintText: "lbl_search".tr,
                    function: () {
                      Get.toNamed(AppRoutes.searchScreen);
                    },
                    textInputType: TextInputType.none,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 16, right: 12, bottom: 16),
                        child:
                            CustomImageView(svgPath: ImageConstant.imgSearch)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(56)),
                    //     suffix: Padding(
                    //         padding: EdgeInsets.only(
                    //             right: getHorizontalSize(15)),
                    //         child: IconButton(
                    //             onPressed: () {
                    //              controller.searchController
                    //                  .clear();
                    //             },
                    //             icon: Icon(Icons.clear,
                    //                 color: Colors.grey.shade600)))
                  )
                ])),
            Expanded(
                child: SingleChildScrollView(
                    padding: getPadding(top: 0),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Padding(
                                  padding: getPadding(top: 24, bottom: 24),
                                  child: CarouselSlider.builder(
                                    itemCount: controller.slider.length,
                                    itemBuilder: (context, index, realIndex) {
                                      SlidercarItemModel data =
                                          controller.slider[index];
                                      return Padding(
                                        padding: getPadding(left: 8, right: 8),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            // width: getVerticalSize(308),
                                            height: getSize(154),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(16)),
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(
                                                        data.image!))),
                                            child: Padding(
                                              padding: getPadding(
                                                  left: 31, right: 31),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: getHorizontalSize(
                                                      135,
                                                    ),
                                                    child: Text(data.title!,
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 11,
                                                      right: 19,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 1,
                                                          ),
                                                          child: Text(
                                                            "lbl_shop_now".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowRightfULL,
                                                          color:
                                                              appTheme.black900,
                                                          height: getSize(
                                                            20,
                                                          ),
                                                          width: getSize(
                                                            20,
                                                          ),
                                                          margin: getMargin(
                                                              left: 5, top: 3),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    options: CarouselOptions(
                                        onPageChanged: (index, reason) {
                                          controller.sliderIndex = index;
                                          controller.update();
                                        },
                                        height: getSize(154),
                                        autoPlay: true,
                                        scrollDirection: Axis.horizontal,
                                        initialPage: 1,
                                        viewportFraction: 0.8),
                                  ),
                                ),
                              ),

                              Container(
                                  padding: getPadding(
                                      left: 16, top: 13, right: 16, bottom: 0),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 6, right: 4),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_categories".tr,
                                                      style: CustomTextStyles
                                                          .titleLarge20),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtViewall();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_view_all".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge)))
                                                ])),

                                      ])),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(
                                      left: 20, top: 16, right: 20, bottom: 0),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      "msg_top_picks_for_you"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .titleLarge20),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtViewallone();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 3),
                                                          child: Text(
                                                              "lbl_view_all".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge)))
                                                ])),
                                        GetBuilder<TopPicksForYouController>(
                                          init: TopPicksForYouController(),
                                          builder: (topPicksForYouController) =>
                                              GridView.builder(
                                            padding: getPadding(
                                              top: 18,
                                              bottom: 16,
                                            ),
                                            itemCount: topPicksForYouController
                                                        .topPicksList.length <
                                                    2
                                                ? topPicksForYouController
                                                    .topPicksList.length
                                                : 2,
                                            primary: false,
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent:
                                                        getVerticalSize(292),
                                                    crossAxisCount:
                                                        topPicksForYouController
                                                                    .topPicksList
                                                                    .length <
                                                                2
                                                            ? topPicksForYouController
                                                                .topPicksList
                                                                .length
                                                            : 2,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(16),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(20)),
                                            itemBuilder: (context, index) {
                                              ProductdetailsItemModel data =
                                                  topPicksForYouController
                                                      .topPicksList[index];
                                              return product_formate(data, () {
                                                Get.toNamed(AppRoutes
                                                    .detailTabContainerScreen);
                                              },
                                                  CustomImageView(
                                                      onTap: () {
                                                        controller
                                                            .setFavProduct(
                                                                data);
                                                      },
                                                      svgPath: data.isFavourite!
                                                          ? ImageConstant
                                                              .imgFavouriteIconSelected
                                                          : ImageConstant
                                                              .imgFavouriteIcon,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      alignment: Alignment
                                                          .centerRight));

                                              // Container(
                                              //   decoration: BoxDecoration(
                                              //       color: ColorConstant.gray50,
                                              //       borderRadius: BorderRadius.circular(
                                              //           getHorizontalSize(16))),
                                              //   child: Column(
                                              //     children: [],
                                              //   ),
                                              // );
                                            },
                                          ),
                                        ),
                                      ])),
                              SizedBox(
                                height: getVerticalSize(16),
                              ),
                              // Padding(
                              //   padding:getPadding(left: 9,right: 9),
                              //   child: Container(
                              //     height: getVerticalSize(130),
                              //     decoration: BoxDecoration(
                              //       image: DecorationImage(image: AssetImage(ImageConstant.imgDiscountBanner,),),
                              //       borderRadius: BorderRadius.circular(getHorizontalSize(16))
                              //     ),
                              //   )
                              // ),
                              CarouselSlider.builder(
                                itemCount: controller.discountItemSlider.length,
                                itemBuilder: (context, index, realIndex) {
                                  DiscountItemModel data =
                                      controller.discountItemSlider[index];
                                  return Padding(
                                    padding: getPadding(left: 8, right: 8),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: getSize(308),
                                        height: getSize(150),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(16)),
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(data.image!),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              getPadding(left: 16, right: 16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(data.subtitle!,
                                                  style: theme
                                                      .textTheme.bodyMedium),
                                              SizedBox(
                                                height: getVerticalSize(8),
                                              ),
                                              Text(data.title!.toUpperCase(),
                                                  style: CustomTextStyles
                                                      .titleLarge20),
                                              SizedBox(
                                                height: getVerticalSize(8),
                                              ),
                                              Container(
                                                width: getSize(126),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              12)),
                                                  color: appTheme.black900,
                                                ),
                                                child: Padding(
                                                  padding: getPadding(
                                                      top: 13.04,
                                                      bottom: 13.04),
                                                  child: Center(
                                                      child: Text(
                                                          "lbl_redeem_now".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumOnPrimary)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                options: CarouselOptions(
                                    onPageChanged: (index, reason) {
                                      // controller.sliderIndex.value = index;
                                    },
                                    height: getSize(154),
                                    autoPlay: true,
                                    scrollDirection: Axis.horizontal,
                                    initialPage: 1,
                                    viewportFraction: 0.79),
                              ),

                              Container(
                                  margin: getMargin(top: 16),
                                  padding:
                                      getPadding(top: 20, left: 20, right: 20),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 4, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_our_speciality".tr,
                                                      style: CustomTextStyles
                                                          .titleLarge20),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtViewalltwo();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 5),
                                                          child: Text(
                                                              "lbl_view_all".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyMedium)))
                                                ])),
                                        GetBuilder<OurSpecialityController>(
                                          init: OurSpecialityController(),
                                          builder: (ourSpecialityController) =>
                                              GridView.builder(
                                            padding: getPadding(
                                              top: 10,
                                              bottom: 16,
                                            ),
                                            itemCount: ourSpecialityController
                                                        .ourSpecialityData
                                                        .length <
                                                    2
                                                ? ourSpecialityController
                                                    .ourSpecialityData.length
                                                : 2,
                                            primary: false,
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent:
                                                        getVerticalSize(292),
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(16),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(20)),
                                            itemBuilder: (context, index) {
                                              OurSpecialityItemModel model =
                                                  ourSpecialityController
                                                      .ourSpecialityData[index];
                                              return product_formate(model, () {
                                                Get.toNamed(AppRoutes
                                                    .detailTabContainerScreen);
                                              },
                                                  CustomImageView(
                                                      onTap: () {
                                                        controller
                                                            .setFavProduct(
                                                                model);
                                                      },
                                                      svgPath: model
                                                              .isFavourite!
                                                          ? ImageConstant
                                                              .imgFavouriteIconSelected
                                                          : ImageConstant
                                                              .imgFavouriteIcon,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      alignment: Alignment
                                                          .centerRight));
                                            },
                                          ),
                                        ),
                                      ])),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(top: 20, bottom: 20),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 4, right: 26),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_blog".tr,
                                                      style: CustomTextStyles
                                                          .titleLarge20),
                                                  GestureDetector(
                                                    onTap: () {
                                                      Get.toNamed(
                                                          AppRoutes.blogScreen);
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            bottom: 6),
                                                        child: Text(
                                                            "lbl_view_all".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium)),
                                                  )
                                                ])),
                                        SizedBox(
                                          height: getVerticalSize(8),
                                        ),

                                      ]))
                            ]))))
          ])),
    );
  }

  onTapCategorie() {
    Get.toNamed(AppRoutes.duffelBagScreen);
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.categories2GridScreen,
    );
  }

  onTapTxtViewallone() {
    Get.toNamed(
      AppRoutes.topPicksForYouScreen,
    );
  }

  onTapProductdetails() {
    Get.toNamed(
      AppRoutes.detailTabContainerScreen,
    );
  }

  onTapTxtViewalltwo() {
    Get.toNamed(
      AppRoutes.ourSpecialityScreen,
    );
  }

  onTapProductdetails1() {
    Get.toNamed(
      AppRoutes.detailTabContainerScreen,
    );
  }
}
