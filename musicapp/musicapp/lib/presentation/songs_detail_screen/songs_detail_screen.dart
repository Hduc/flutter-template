import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/home_screen_page/models/list18271_item_model.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:share_plus/share_plus.dart';

import '../home_screen_page/controller/home_screen_controller.dart';
import '../more_otion_popup_screen/more_otion_popup_screen.dart';
import '../my_libary_artist_page/models/my_libary_item_model.dart';
import '../my_libary_playlist_page/controller/my_libary_playlist_controller.dart';
import '../my_libary_playlist_page/widgets/my_libary1_item_widget.dart';
import '../recommended_for_you_screen/controller/recommended_for_you_controller.dart';
import 'controller/songs_detail_controller.dart';

class SongsDetailScreen extends StatefulWidget {
  const SongsDetailScreen({super.key});

  @override
  State<SongsDetailScreen> createState() => _SongsDetailScreenState();
}

class _SongsDetailScreenState extends State<SongsDetailScreen> {
  RecommendedForYouController recommendedForYouController =
      Get.put(RecommendedForYouController());
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  SongsDetailController songsDetailController =
      Get.put(SongsDetailController());
  MyLibaryPlaylistController myLibaryPlaylistController =
      Get.put(MyLibaryPlaylistController());

  @override
  void initState() {
    setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.back();
          return true;
        },
        child: Scaffold(
            backgroundColor: appTheme.bgColor,
            body: GetBuilder<SongsDetailController>(
              init: SongsDetailController(),
              builder: (controller) => Padding(
                padding: EdgeInsets.only(top: 28),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        SizedBox(
                          height: getVerticalSize(20),
                        ),
                        Container(
                            color: appTheme.bgColor,
                            child: Padding(
                              padding: getPadding(
                                  left: 20, right: 20, top: 24, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppbarImage(
                                      height: getSize(24),
                                      width: getSize(24),
                                      svgPath: PrefUtils().getThemeData() ==
                                              "primary"
                                          ? ImageConstant.imgArrowleft
                                          : ImageConstant.imgArrowleftWhite,
                                      onTap: () {
                                        onTapArrowleft6();
                                      }),
                                  SizedBox(),
                                  AppbarImage(
                                    height: getSize(24),
                                    width: getSize(24),
                                    svgPath:
                                        PrefUtils().getThemeData() == "primary"
                                            ? ImageConstant.imgFavorite
                                            : ImageConstant.imgFavoriteWhite,
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                          child: ListView(
                            children: [
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GetBuilder<SongsDetailController>(
                                      init: SongsDetailController(),
                                      builder: (controller) => Container(
                                        height: getSize(247),
                                        child: CarouselSlider.builder(
                                          carouselController:
                                              controller.carouselController,
                                          itemCount: homeScreenController
                                              .recommendedData.length,
                                          itemBuilder:
                                              (context, index, realIndex) {
                                            return _buildItemList(
                                                context,
                                                index,
                                                homeScreenController
                                                    .recommendedData[index]);
                                          },
                                          options: CarouselOptions(
                                              height: getVerticalSize(247),
                                              initialPage:
                                                  controller.focusedIndex,
                                              // pauseAutoPlayOnManualNavigate: true,
                                              aspectRatio: 2.0,
                                              enlargeCenterPage: true,
                                              viewportFraction: 0.45,
                                              enableInfiniteScroll: true,
                                              scrollDirection: Axis.horizontal,
                                              autoPlay: true,
                                              onPageChanged: (index, reason) {
                                                _onItemFocus(index);
                                                controller
                                                    .setFocusedIndex(index);
                                                // controller.silderIndex.value = index;
                                              }),
                                        ),
                                      ),
                                    ),

                                    //   viewportFraction: 0.7,
                                    //   aspectRatio: 2.0,
                                    //   autoPlay: true,
                                    //   enlargeCenterPage: true,
                                    //   items: payloadList.map((payload) {
                                    //     return Builder(builder: (BuildContext context) {
                                    //       return Column(
                                    //         children: <Widget>[
                                    //           Text(payload.title),
                                    //           Flexible(
                                    //             child: Container(
                                    //               width: MediaQuery.of(context).size.width,
                                    //               margin: EdgeInsets.symmetric(horizontal: 10.0),
                                    //               decoration: BoxDecoration(
                                    //                 color: Colors.transparent,
                                    //               ),
                                    //               child: Image.network(
                                    //                 payload.imageUrl,
                                    //                 height: 250,
                                    //                 width: 250,
                                    //                 //fit: BoxFit.fill,
                                    //               ),
                                    //             ),
                                    //           ),
                                    //
                                    //         ],
                                    //       );
                                    //     });
                                    //   }).toList(), options: CarouselOptions(),
                                    // );

                                    // SizedBox(
                                    //   height: getVerticalSize(247),
                                    //   child: ScrollSnapList(
                                    //     background: Colors.red,
                                    //     initialIndex:
                                    //         controller.focusedIndex.toDouble(),
                                    //     itemSize: getHorizontalSize(206),
                                    //     focusOnItemTap: true,
                                    //     shrinkWrap: true,
                                    //     dynamicItemSize: true,
                                    //     itemBuilder: (context, index) {
                                    //       return _buildItemList(
                                    //           context,
                                    //           index,
                                    //           homeScreenController
                                    //               .recommendedData[index]);
                                    //     },
                                    //     // itemSize: 200.h,
                                    //     onReachEnd: () {
                                    //       print('Done!');
                                    //     },
                                    //
                                    //     itemCount: homeScreenController
                                    //         .recommendedData.length,
                                    //     onItemFocus: (int) {
                                    //       return _onItemFocus(int);
                                    //     },
                                    //   ),
                                    // ),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Text(
                                            homeScreenController
                                                .recommendedData[
                                                    controller.focusedIndex]
                                                .title!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme
                                                .textTheme.headlineMedium)),
                                    Container(
                                        width: getHorizontalSize(369),
                                        margin: getMargin(
                                            left: 29, top: 7, right: 29),
                                        child: Text(
                                            "msg_it_is_a_long_established".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextThemeHelper
                                                .bodyMediumBlack900)),
                                    Padding(
                                        padding: getPadding(
                                            left: 20, top: 23, right: 19),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(119),
                                                  padding: getPadding(
                                                      left: 27,
                                                      top: 12,
                                                      right: 27,
                                                      bottom: 12),
                                                  decoration: AppDecoration
                                                      .fill2
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            color: PrefUtils()
                                                                        .getThemeData() ==
                                                                    "primary"
                                                                ? Colors.black
                                                                : Colors.white,
                                                            svgPath: ImageConstant
                                                                .imgClockBlack900,
                                                            height: getSize(24),
                                                            width: getSize(24)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4,
                                                                top: 2),
                                                            child: Text(
                                                                "lbl_4min".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge!
                                                                    .copyWith(
                                                                  color: appTheme
                                                                      .black900,
                                                                )))
                                                      ])),
                                              GestureDetector(
                                                onTap: () {
                                                  share();
                                                },
                                                child: Container(
                                                    width:
                                                        getHorizontalSize(119),
                                                    margin: getMargin(left: 16),
                                                    padding: getPadding(
                                                        left: 25,
                                                        top: 12,
                                                        right: 25,
                                                        bottom: 12),
                                                    decoration: AppDecoration
                                                        .fill2
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CustomImageView(
                                                              color: PrefUtils()
                                                                          .getThemeData() ==
                                                                      "primary"
                                                                  ? Colors.black
                                                                  : Colors
                                                                      .white,
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgShare,
                                                              height:
                                                                  getSize(24),
                                                              width:
                                                                  getSize(24)),
                                                          Expanded(
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 4,
                                                                        top: 2),
                                                                child: Text(
                                                                    "lbl_share"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyLarge!
                                                                        .copyWith(
                                                                      color: appTheme
                                                                          .black900,
                                                                    ))),
                                                          )
                                                        ])),
                                              ),
                                              Container(
                                                  width: getHorizontalSize(119),
                                                  margin: getMargin(left: 16),
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 12,
                                                      right: 9,
                                                      bottom: 12),
                                                  decoration: AppDecoration
                                                      .fill2
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            color: PrefUtils()
                                                                        .getThemeData() ==
                                                                    "primary"
                                                                ? Colors.black
                                                                : Colors.white,
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgDownload,
                                                            height: getSize(24),
                                                            width: getSize(24)),
                                                        Expanded(
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 4,
                                                                      top: 2),
                                                              child: Text(
                                                                  "lbl_download"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge!
                                                                      .copyWith(
                                                                    color: appTheme
                                                                        .black900,
                                                                  ))),
                                                        )
                                                      ]))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 20, top: 25),
                                            child: Text(
                                                "msg_you_are_my_also".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.titleLarge))),

                                    ListView.separated(
                                        padding: getPadding(
                                            left: 20,
                                            right: 20,
                                            top: 16,
                                            bottom: 16),
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        primary: false,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(16));
                                        },
                                        itemCount: myLibaryPlaylistController
                                            .myPlayList.length,
                                        itemBuilder: (context, index) {
                                          MyLibaryItemModel model =
                                              myLibaryPlaylistController
                                                  .myPlayList[index];
                                          return MyLibary1ItemWidget(model,
                                              onTapImgOverflowmenu: () {
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return MoreOtionPopupScreen();
                                              },
                                            );
                                          });
                                        })

                                    // Padding(
                                    //     padding: getPadding(left: 20, top: 13, right: 20),
                                    //     child: Obx(() => ListView.separated(
                                    //         physics: NeverScrollableScrollPhysics(),
                                    //         shrinkWrap: true,
                                    //         separatorBuilder: (context, index) {
                                    //          return SizedBox(height: getVerticalSize(16));
                                    //         },
                                    //         itemCount: controller.songsDetailModelObj.value
                                    //             .songsDetailItemList.value.length,
                                    //         itemBuilder: (context, index) {
                                    //          SongsDetailItemModel model = controller
                                    //              .songsDetailModelObj
                                    //              .value
                                    //              .songsDetailItemList
                                    //              .value[index];
                                    //          return SongsDetailItemWidget(model,
                                    //              onTapImgOverflowmenu: () {
                                    //               onTapImgOverflowmenu();
                                    //              });
                                    //         })))
                                  ]),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            )));
  }

  onTapImgOverflowmenu() {
    Get.toNamed(AppRoutes.moreOtionPopupScreen);
  }

  onTapArrowleft6() {
    Get.back();
  }

  onTapStackplay() {
    Get.toNamed(
      AppRoutes.playScreen,
    );
  }

  Widget _buildItemList(
      BuildContext context, int index, RecommendedData recommendedData) {
    return GetBuilder<SongsDetailController>(
      init: SongsDetailController(),
      builder: (controller) => GestureDetector(
        onTap: controller.focusedIndex == index
            ? () {
                controller.setCurrentMusicData(recommendedData, false);
                Get.toNamed(AppRoutes.playScreen);
              }
            : () {
                controller.setCurrentMusicData(recommendedData, false);
                controller.setFocusedIndex(index);
              },
        child: Container(
          width: getSize(206),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                  image: DecorationImage(
                      image: AssetImage(recommendedData.image!),
                      fit: BoxFit.fill)),
              // color: Colors.yellow,
              width: getSize(206),
              height: getSize(247),
              child: controller.focusedIndex == index
                  ? Padding(
                      padding: getPadding(all: 70),
                      child: CustomImageView(
                        height: getSize(44),
                        width: getSize(44),
                        svgPath: PrefUtils().getThemeData() == "primary"
                            ? ImageConstant.imgVidioPauseIcon
                            : ImageConstant.imgVidioPauseIconDark,
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(16)),
                          color: appTheme.white700.withOpacity(0.60)),
                    )),
        ),
      ),
    );
  }

  void _onItemFocus(int index) {
    songsDetailController.setFocusedIndex(index);
  }

  Future<void> share() async {
    await Share.share(
      subject: "Check out this website!",
      'https://example.com',
    );
  }
}
