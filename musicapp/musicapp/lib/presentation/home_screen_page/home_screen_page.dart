import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/recommended_for_you_screen/widgets/recommended_for_item_widget.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_subtitle.dart';

import '../artist_for_you_screen/models/artist_for_you_item_model.dart';
import '../home_screen_page/widgets/list18271_item_widget.dart';
import '../home_screen_page/widgets/listellipse2143_item_widget.dart';
import 'controller/home_screen_controller.dart';
import 'models/list18271_item_model.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({Key? key}) : super(key: key);

  HomeScreenController controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size.width,
        child: Padding(
            padding: getPadding(left: 0, bottom: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(16),
                  ),
                  Container(
                    color: appTheme.bgColor,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AppbarImage(
                                height: getVerticalSize(45),
                                width: getHorizontalSize(30),
                                svgPath: ImageConstant.imgMusic,
                                margin: getMargin(left: 20, top: 5, bottom: 5)),
                            AppbarSubtitle(
                                text: "lbl_music_book".tr,
                                margin: getMargin(left: 11)),
                          ],
                        ),
                        AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgIcnotification:ImageConstant.imgIcnotificationWhite,
                            margin: getMargin(
                                left: 20, top: 16, right: 20, bottom: 15),
                            onTap: () {
                              onTapIcnotification();
                            })
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: getPadding(top: 16, right: 0),
                          child: CarouselSlider.builder(
                              options: CarouselOptions(
                                  height: getVerticalSize(170),
                                  initialPage: 0,
                                  autoPlay: true,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: false,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason) {
                                    controller.silderIndex.value = index;
                                  }),
                              itemCount: 3,
                              itemBuilder: (context, index, realIndex) {
                                SliderData model = controller.sliderData[index];
                                return Padding(
                                  padding: getPadding(left: 20, right: 20),
                                  child: Container(
                                    height: getSize(160),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(model.image!),
                                            fit: BoxFit.fill)),
                                    child: Padding(
                                      padding: getPadding(left: 24, right: 24),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: getSize(139),
                                            child: Text(model.title!,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextThemeHelper
                                                    .titleLargePrimary),
                                          ),
                                          SizedBox(
                                            height: getVerticalSize(8),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                                decoration: AppDecoration.black
                                                    .copyWith(
                                                    color: Colors.black,
                                                    borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder16),

                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 13,
                                                        top: 6,
                                                        right: 13,
                                                        bottom: 6),
                                                    child:

                                                    Text(
                                                        "lbl_play_now".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style:
                                                    TextThemeHelper.titleMediumwhitrA20017))),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        Padding(
                            padding: getPadding(top: 25, right: 20, left: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_recently_played".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleLarge),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtViewall();
                                      },
                                      child: Padding(
                                          padding:
                                              getPadding(top: 1, bottom: 4),
                                          child: Text("lbl_view_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextThemeHelper
                                                  .bodyLargeGray600_1)))
                                ])),
                        SizedBox(
                          height: getVerticalSize(16),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                height: getVerticalSize(235),
                                child: ListView.builder(
                                  padding: getPadding(left: 12, right: 12),
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      controller.recentPlayData.length < 3
                                          ? controller.recentPlayData.length
                                          : 3,
                                  itemBuilder: (context, index) {
                                    List18271ItemModel model =
                                        controller.recentPlayData[index];
                                    return List18271ItemWidget(model);
                                  },
                                ))),
                        Padding(
                            padding: getPadding(top: 25, right: 20, left: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_recommended_for".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleLarge),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtViewallone();
                                      },
                                      child: Padding(
                                          padding:
                                              getPadding(top: 1, bottom: 4),
                                          child: Text("lbl_view_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextThemeHelper
                                                  .bodyLargeGray600_1)))
                                ])),
                        GridView.builder(
                          padding: getPadding(top: 16, left: 20, right: 20),
                          primary: false,
                          shrinkWrap: true,
                          itemCount: controller.recommendedData.length < 2
                              ? controller.recommendedData.length
                              : 2,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(284),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(16),
                                  crossAxisSpacing: getHorizontalSize(16)),
                          itemBuilder: (context, index) {
                            RecommendedData data =
                                controller.recommendedData[index];
                            return RecommendedForItemWidget(data);
                          },
                        ),
                        Padding(
                            padding: getPadding(top: 25, right: 20, left: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_artist_for_you".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleLarge),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtViewalltwo();
                                      },
                                      child: Padding(
                                          padding:
                                              getPadding(top: 1, bottom: 4),
                                          child: Text("lbl_view_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextThemeHelper
                                                  .bodyLargeGray600_1)))
                                ])),
                        SizedBox(
                          height: getVerticalSize(16),
                        ),
                        SizedBox(
                          height: getSize(166),
                          child: ListView.builder(
                            padding: getPadding(left: 12, right: 12),
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.artistData.length < 4
                                ? controller.artistData.length
                                : 4,
                            itemBuilder: (context, index) {
                              Artist data = controller.artistData[index];
                              return Listellipse2143ItemWidget(data);
                            },
                          ),
                        ),
                          Padding(
                            padding: getPadding(top: 25, left: 20, right: 20),
                            child: Text("msg_top_pics_for_you".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleLarge)),
                        SizedBox(
                          height: getVerticalSize(16),
                        ),
                        SizedBox(
                          height: getSize(218),
                          child: ListView.builder(
                            padding: getPadding(left: 12, right: 12),
                            itemCount: controller.topPicsData.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              ArtistForYouItemModel data =
                                  controller.topPicsData[index];
                              return Padding(
                                padding: getPadding(left: 8, right: 8),
                                child: GestureDetector(
                                  onTap: (){
                                    Get.toNamed(AppRoutes.aboutUsScreen);
                                  },
                                  child: Container(
                                      padding: getPadding(all: 4),
                                      decoration: AppDecoration.fill2.copyWith(
                                          color: appTheme.containerColor,
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder16),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: data.image,
                                                height: getVerticalSize(139),
                                                width: getHorizontalSize(297),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(16))),
                                            Padding(
                                                padding:
                                                    getPadding(left: 4, top: 10),
                                                child: Text(data.title!,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: TextThemeHelper
                                                        .titleMediumSemiBold)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 4, top: 4, bottom: 5),
                                                child: Text(data.subtitle!,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodyMedium))
                                          ])),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: getVerticalSize(24),
                        ),
                      ],
                    ),
                  )
                ])));
  }

  onTapArtistforyou() {
    Get.toNamed(AppRoutes.artistSongScreen);
  }

  onTapIcnotification() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.recentlyPlayedScreen,
    );
  }

  onTapTxtViewallone() {
    Get.toNamed(
      AppRoutes.recommendedForYouScreen,
    );
  }

  onTapJustforyou() {
    Get.toNamed(
      AppRoutes.songsDetailScreen,
    );
  }

  onTapTxtViewalltwo() {
    Get.toNamed(
      AppRoutes.artistForYouScreen,
    );
  }
}
