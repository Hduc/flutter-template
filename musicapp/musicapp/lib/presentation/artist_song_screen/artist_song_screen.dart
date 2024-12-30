import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/home_screen_page/models/list18271_item_model.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';

import '../more_otion_popup_screen/more_otion_popup_screen.dart';
import '../my_libary_artist_page/controller/my_libary_artist_controller.dart';
import '../my_libary_artist_page/widgets/my_libary_item_widget.dart';
import '../songs_detail_screen/controller/songs_detail_controller.dart';
import 'controller/artist_song_controller.dart';

class ArtistSongScreen extends StatefulWidget {
  const ArtistSongScreen({super.key});

  @override
  State<ArtistSongScreen> createState() => _ArtistSongScreenState();
}

class _ArtistSongScreenState extends State<ArtistSongScreen> {
  ArtistSongController artistSongController = Get.put(ArtistSongController());
  MyLibaryArtistController controller = Get.put(MyLibaryArtistController());

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
              builder: (songsDetailController) => SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      SizedBox(
                        height: getVerticalSize(35),
                      ),
                      Container(
                          color: appTheme.bgColor,
                          child: Padding(
                            padding: getPadding(
                                left: 20, right: 20, top: 24, bottom: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppbarImage(
                                    height: getSize(24),
                                    width: getSize(24),
                                    svgPath:
                                        PrefUtils().getThemeData() == "primary"
                                            ? ImageConstant.imgArrowleft
                                            : ImageConstant.imgArrowleftWhite,
                                    onTap: () {
                                      Get.back();
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
                                children: [
                                  GetBuilder<SongsDetailController>(
                                    init: SongsDetailController(),
                                    builder: (songsDetailController) =>
                                        Container(
                                      height: getSize(247),
                                      child: CarouselSlider.builder(
                                        carouselController:
                                            controller.carouselController,
                                        itemCount: controller.artistData.length,
                                        itemBuilder:
                                            (context, index, realIndex) {
                                          return _buildItemList(context, index,
                                              controller.artistData[index]);
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
                                              controller.setFocusedIndex(index);
                                              songsDetailController
                                                  .setCurrentArtistData(
                                                  controller
                                                      .artistData[
                                                  index],
                                                  false);
                                              // controller.silderIndex.value = index;
                                            }),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                      padding: getPadding(top: 14),
                                      child: Text("lbl_domatic_fike".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              theme.textTheme.headlineMedium)),
                                  Padding(
                                      padding: getPadding(top: 4),
                                      child: Text("lbl_1_2m_followes2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextThemeHelper
                                              .bodyLargeGray600_1)),
                                  Padding(
                                      padding: getPadding(
                                          left: 20, top: 23, right: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                16)),
                                                    color: appTheme
                                                        .containerColor),
                                                child: Padding(
                                                  padding: getPadding(
                                                      top: 12, bottom: 12),
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
                                                              .imgUserBlack900),
                                                      SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                8),
                                                      ),
                                                      Text("lbl_following".tr,
                                                          style: theme.textTheme
                                                              .bodyLarge!.copyWith(
                                                            color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),

                                            // CustomElevatedButton(
                                            //     text: "lbl_following".tr,
                                            //     leftIcon: Container(
                                            //         margin: getMargin(right: 8),
                                            //         child: CustomImageView(
                                            //           color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                            //             svgPath: ImageConstant
                                            //                 .imgUserBlack900)),
                                            //     buttonStyle: ButtonThemeHelper
                                            //         .fillGray100
                                            //         .copyWith(
                                            //             fixedSize: MaterialStateProperty
                                            //                 .all<Size>(Size(
                                            //                     getHorizontalSize(
                                            //                         186),
                                            //                     getVerticalSize(
                                            //                         48)))),
                                            //     buttonTextStyle:
                                            //         theme.textTheme.bodyLarge!),
                                            Expanded(
                                              child: CustomElevatedButton(
                                                  text: "lbl_play_now".tr,
                                                  margin: getMargin(left: 16),
                                                  leftIcon: Container(
                                                      margin:
                                                          getMargin(right: 8),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlayPrimary)),
                                                  buttonStyle: ButtonThemeHelper
                                                      .fillDeeppurpleA200
                                                      .copyWith(
                                                          fixedSize: MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  getHorizontalSize(
                                                                      186),
                                                                  getVerticalSize(
                                                                      48)))),
                                                  buttonTextStyle:
                                                      TextThemeHelper
                                                          .bodyLargePrimary,
                                                  onTap: () {
                                                    songsDetailController
                                                        .setCurrentArtistData(
                                                            controller
                                                                    .artistData[
                                                                controller
                                                                    .focusedIndex],
                                                            false);
                                                    Get.toNamed(
                                                        AppRoutes.playScreen);
                                                  }),
                                            )
                                          ])),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding:
                                              getPadding(left: 20, top: 25),
                                          child: Text("msg_you_are_my_also".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  ListView.separated(
                                      padding: getPadding(
                                          left: 20,
                                          right: 20,
                                          top: 16,
                                          bottom: 16),
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: controller.artistData.length,
                                      itemBuilder: (context, index) {
                                        Artist model =
                                            controller.artistData[index];
                                        return MyLibaryItemWidget(model,
                                            onTapImgOverflowmenu: () {
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (context) {
                                              return MoreOtionPopupScreen();
                                            },
                                          );
                                        });
                                      }),
                                ]),
                          ],
                        ),
                      ),
                    ],
                  )),
            )));
  }

  onTapArrowleft8() {
    Get.back();
  }

  onTapPlaynow() {
    Get.toNamed(
      AppRoutes.playScreen,
    );
  }

  Widget _buildItemList(
    BuildContext context,
    int index,
    Artist artistData,
  ) {
    return GetBuilder<MyLibaryArtistController>(
        init: MyLibaryArtistController(),
        builder: (controller) => GestureDetector(
          onTap: (){
            controller.setFocusedIndex(index);

          },
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                  image: DecorationImage(
                      image: AssetImage(artistData.ractangleImage!),
                      fit: BoxFit.fill)),
              // color: Colors.yellow,
              width: getSize(206),
              height: getSize(247),
              child: controller.focusedIndex == index
                  ? SizedBox()
                  : Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(16)),
                          color: appTheme.white700.withOpacity(0.60)),
                    )),
        ));
  }

  void _onItemFocus(int index) {
    controller.setFocusedIndex(index);
  }
}
