import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/services.dart';

import '../home_page/widgets/slidergroup_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/populer_center_model.dart';
import 'models/recommended_model.dart';
import 'models/slidergroup_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carwash_app/core/app_export.dart';
import 'package:carwash_app/widgets/app_bar/appbar_image.dart';
import 'package:carwash_app/widgets/app_bar/custom_app_bar.dart';
import 'package:carwash_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import 'models/top_rated_model.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor:ColorConstant.whiteA700,
          statusBarIconBrightness: Brightness.dark),
    );
    super.initState();
  }

  HomeController controller = Get.put(HomeController(HomeModel().obs));
  List<SlidergroupItemModel> slider = HomeModel.getSlider();
  CarouselSliderController carouselController = CarouselSliderController();
  List<PopulerCenterData> populerlist = HomeModel.getPopulerData();
  List<RecommendedCenterData> recommendedList = HomeModel.getRecommendedData();
  List<TopRatedData> topRatedList = HomeModel.getTopRatedData();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor:ColorConstant.whiteA700,
          statusBarIconBrightness: Brightness.dark),
    );
    return Scaffold(
        backgroundColor: ColorConstant.gray5001,
        body: SafeArea
          (
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SafeArea(
                child: Container(
                  decoration: AppDecoration.white,
                  child: Padding(
                    padding:getPadding(top: 20),
                    child: CustomAppBar(
                        styleType: Style.bgHeight44,
                        height: getVerticalSize(44),
                        leadingWidth: 40,
                        leading: AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            svgPath: ImageConstant.imgLocation,
                            margin: getMargin(left: 16, bottom: 21)),
                        title: Padding(
                            padding: getPadding(left: 8),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(right: 141),
                                          child: Text("lbl_new_york".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtHeadline))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(top: 5),
                                          child: Text("msg_47_w_13th_st_new".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtFootnote)))
                                ])),
                        actions: [
                          CustomIconButton(
                            onTap: (){Get.toNamed(AppRoutes.notificationsScreen);},
                              height: 40,
                              width: 40,
                              margin:
                              getMargin(left: 16, top: 2, right: 16, bottom: 3),
                              variant: IconButtonVariant.FillIndigo50,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgNotification)),
                        ]),
                  ),
                ),
              ),

              Expanded(
                child: ListView(
                  children: [
                    Container(
                      decoration: AppDecoration.white,
                      child: Padding(
                        padding: getPadding(bottom: 16, top: 10),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CarouselSlider.builder(
                                  options: CarouselOptions(
                                      height: getVerticalSize(167),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 0.92,
                                      enableInfiniteScroll: false,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        controller.silderIndex.value = index;
                                      }),
                                  itemCount: slider.length,
                                  carouselController: carouselController,
                                  itemBuilder: (context, index, realIndex) {
                                    SlidergroupItemModel model = slider[index];
                                    return SlidergroupItemWidget(model);
                                  }),
                              Obx(
                                () => Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                        List.generate(slider.length, (index) {
                                      return AnimatedContainer(
                                        margin: getMargin(
                                            left: 3, top: 20, right: 3),
                                        duration:
                                            const Duration(milliseconds: 300),
                                        height: getVerticalSize(7),
                                        width: getHorizontalSize(index ==
                                                controller.silderIndex.value
                                            ? 16
                                            : 7),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(22)),
                                            color: (index ==
                                                    controller
                                                        .silderIndex.value)
                                                ? ColorConstant.black900
                                                : ColorConstant.black90075),
                                      );
                                    })),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  padding: getPadding(all: 0),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(all: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_popular_centers".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style:
                                                          AppStyle.txtHeadline),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtViewall();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_view_all".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBody)))
                                                ])),
                                        GridView.builder(
                                          padding:
                                          getPadding(left: 16, right: 16,bottom: 16),
                                          primary: false,
                                          shrinkWrap: true,
                                          itemCount: populerlist.length < 2
                                              ? populerlist.length
                                              : 2,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  mainAxisExtent:
                                                      getVerticalSize(177),
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing:
                                                      getHorizontalSize(12),
                                                  crossAxisSpacing:
                                                      getHorizontalSize(12)),
                                          itemBuilder: (context, index) {
                                            PopulerCenterData model =
                                                populerlist[index];
                                            return GestureDetector(
                                              onTap: () {
                                                onTapColumnrectangle2();
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .white
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder16),
                                                  child: Padding(
                                                    padding: getPadding(all: 8),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  model.image,
                                                              height:
                                                                  getVerticalSize(
                                                                      104),
                                                              width:
                                                                  getHorizontalSize(
                                                                      176),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          8))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 8),
                                                              child: Text(
                                                                  model.title!,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtSubheadline)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 7,
                                                                      ),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgLocationIcon,
                                                                            height: getSize(14),
                                                                            width: getSize(14),
                                                                            margin: getMargin(top: 1, bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 4, top: 1),
                                                                            child: Text("${model.distance!} mi away", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOutfitRegular12)),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant
                                                                                .imgIcstar,
                                                                            height: getSize(
                                                                                14),
                                                                            width: getSize(
                                                                                14),
                                                                            margin: getMargin(
                                                                                left: 55,
                                                                                top: 1,
                                                                                bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 4, bottom: 1),
                                                                            child: Text(model.rate!, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOutfitRegular12Black900))
                                                                      ],
                                                                    )
                                                                  ]))
                                                        ]),
                                                  )),
                                            );
                                          },
                                        )
                                      ]))),

                         Padding(
                           padding: getPadding(left: 16,right: 16,top: 20,),
                           child: GestureDetector(
                               onTap: (){Get.toNamed(AppRoutes.serviceDetailScreen);},
                             child: CustomImageView(
                               imagePath: ImageConstant.imgBookingBanner,
                             ),
                           ),
                         ),



                          SizedBox(
                            height: getVerticalSize(20),
                          ),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(all: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("msg_recommended_for".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style:
                                                          AppStyle.txtHeadline),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtViewallone();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_view_all".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBody)))
                                                ])),
                                        GridView.builder(
                                          padding:
                                          getPadding(left: 16, right: 16,bottom: 16),
                                          primary: false,
                                          shrinkWrap: true,
                                          itemCount: recommendedList.length < 2
                                              ? populerlist.length
                                              : 2,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  mainAxisExtent:
                                                      getVerticalSize(177),
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing:
                                                      getHorizontalSize(12),
                                                  crossAxisSpacing:
                                                      getHorizontalSize(12)),
                                          itemBuilder: (context, index) {
                                            RecommendedCenterData model =
                                                recommendedList[index];
                                            return GestureDetector(
                                              onTap: () {
                                                onTapColumnrectangle2();
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .white
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder16),
                                                  child: Padding(
                                                    padding: getPadding(all: 8),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  model.image,
                                                              height:
                                                                  getVerticalSize(
                                                                      104),
                                                              width:
                                                                  getHorizontalSize(
                                                                      176),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          8))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 8),
                                                              child: Text(
                                                                  model.title!,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtSubheadline)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 7,
                                                                      ),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgLocationIcon,
                                                                            height: getSize(14),
                                                                            width: getSize(14),
                                                                            margin: getMargin(top: 1, bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 4, top: 1),
                                                                            child: Text("${model.distance!} mi away", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOutfitRegular12)),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant
                                                                                .imgIcstar,
                                                                            height: getSize(
                                                                                14),
                                                                            width: getSize(
                                                                                14),
                                                                            margin: getMargin(
                                                                                left: 55,
                                                                                top: 1,
                                                                                bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 4, bottom: 1),
                                                                            child: Text(model.rate!, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOutfitRegular12Black900))
                                                                      ],
                                                                    )
                                                                  ]))
                                                        ]),
                                                  )),
                                            );
                                          },
                                        )
                                      ]))),
                          SizedBox(
                            height: getVerticalSize(20),
                          ),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(all: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      "msg_top_rated_centers"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style:
                                                          AppStyle.txtHeadline),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtViewalltwo();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_view_all".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBody)))
                                                ])),
                                        GridView.builder(
                                          padding:
                                              getPadding(left: 16, right: 16),
                                          primary: false,
                                          shrinkWrap: true,
                                          itemCount: populerlist.length < 2
                                              ? populerlist.length
                                              : 2,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  mainAxisExtent:
                                                      getVerticalSize(177),
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing:
                                                      getHorizontalSize(12),
                                                  crossAxisSpacing:
                                                      getHorizontalSize(12)),
                                          itemBuilder: (context, index) {
                                            TopRatedData model =
                                                topRatedList[index];
                                            return GestureDetector(
                                                onTap: () {
                                                  onTapColumnrectangle2();
                                                },
                                                child: Container(
                                                    decoration: AppDecoration
                                                        .white
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder16),
                                                    child: Padding(
                                                      padding:
                                                          getPadding(all: 8),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    model.image,
                                                                height:
                                                                    getVerticalSize(
                                                                        104),
                                                                width:
                                                                    getHorizontalSize(
                                                                        176),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            8)),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            1)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 9),
                                                                child: Text(
                                                                    model
                                                                        .title!,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtSubheadline)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2),
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgIcstar,
                                                                          height: getSize(
                                                                              14),
                                                                          width: getSize(
                                                                              14),
                                                                          margin:
                                                                              getMargin(bottom: 1)),
                                                                      Padding(
                                                                          padding:
                                                                              getPadding(left: 4),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: model.rate, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(12), fontFamily: 'Outfit', fontWeight: FontWeight.w400)),
                                                                                TextSpan(text: " (${model.noOfrate} Reviews)", style: TextStyle(color: ColorConstant.gray600, fontSize: getFontSize(12), fontFamily: 'Outfit', fontWeight: FontWeight.w400))
                                                                              ]),
                                                                              textAlign: TextAlign.left))
                                                                    ]))
                                                          ]),
                                                    )));
                                          },
                                        )
                                      ])))
                        ])
                  ],
                ),
              )
            ],
          ),
        ));
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.popularCentersScreen,
    );
  }

  onTapColumnrectangle() {
    Get.toNamed(
      AppRoutes.serviceDetailScreen,
    );
  }

  onTapTxtViewallone() {
    Get.toNamed(
      AppRoutes.recommendedForYouScreen,
    );
  }

  onTapColumnrectangle1() {
    Get.toNamed(
      AppRoutes.serviceDetailScreen,
    );
  }

  onTapTxtViewalltwo() {
    Get.toNamed(
      AppRoutes.topRatedScreen,
    );
  }

  onTapColumnrectangle2() {
    Get.toNamed(
      AppRoutes.serviceDetailScreen,
    );
  }
}
