import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vtv/app/model/model_popular_show.dart';
import '../../../util/color_data.dart';
import '../../../util/constant.dart';
import '../../../util/data_file.dart';
import '../../../util/device_util.dart';
import '../../../util/fetch_pixels.dart';
import '../../../util/get/bottom_selection_controller.dart';
import '../../../util/get/route_key.dart';
import '../../../util/widget_utils.dart';
import '../../model/model_banner.dart';

class TabHome extends StatelessWidget {
  final List<String> itemList = [
    'All',
    'TV Shows',
    'Movies',
    'Web Series',
    'Sports',
    'Sports'
  ];

  final imageList = ['Image-MAI.png', 'Image_Bahubali_2.png'];

  final continueWatchImgList = ['image1.png', 'Image2.png', 'image3.png'];

  final List<ModelBanner> bannerList = DataFile.getAllBannerList();
  final List<ModelPopularShows> popularList = DataFile.getAllPopularShows();

  TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxInt selectedItem = 0.obs;
    RxInt sliderPos = 0.obs;

    Constant.setupSize(context);
    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    return Column(
      children: [
        20.h.verticalSpace,
        buildAppBar(context, horSpace),
        20.h.verticalSpace,
        Expanded(
          flex: 1,
          child: getDefaultContainerView(
            context,
            ListView(
              children: [
                buildSliderList(sliderPos, context),
                20.h.verticalSpace,
                buildContinueWatchingList(context, horSpace),
                20.h.verticalSpace,
                buildCategoryList(selectedItem, horSpace),
                20.h.verticalSpace,
                buildListWidget(context, horSpace),
                20.h.verticalSpace,
                buildTopPicksList(context, horSpace),
                20.h.verticalSpace,
                buildPopularShowList(context, horSpace),
                30.h.verticalSpace,
              ],
            ),
          ),
        )
      ],
    );
  }

  GridView buildListWidget(BuildContext context, double horspace) {
    var height = 202.h;
    var margin = 20.h;
    var crossAxisCount = DeviceUtil.isTablet ? 4 : 2;
    var screenWidth =
        ((context.width - (margin * crossAxisCount)) / crossAxisCount) - margin;

    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      primary: true,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              Constant.sendToNext(context, videoDetailScreenRoute);
            },
            child: getCircularImage(
                context, 177.h, double.infinity, 12, imageList[index],
                boxFit: BoxFit.fill));
      },
      itemCount: imageList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: margin,
          childAspectRatio: screenWidth / height,
          crossAxisSpacing: margin),
    );
  }

  Widget buildAppBar(BuildContext context, double horSpace) {
    return Row(
      children: [
        getSvgImageWithSize(context, 'title_logo.svg', 40.h, 23.h),
        Expanded(child: 0.horizontalSpace),
        InkWell(
            onTap: () {
              var controller = Get.find<BottomItemSelectionController>();
              controller.bottomBarSelectedItem.value = 1;
            },
            child: getSvgImage(context, 'search.svg', 24)),
        18.h.horizontalSpace,
        GestureDetector(
          onTap: () {
            Constant.sendToNext(context, myProfileScreenRoute);
          },
          child: getCircleImage(context, 'profile1.png', 40),
        )
      ],
    ).marginSymmetric(horizontal: horSpace);
  }

  Widget buildPopularShowList(BuildContext context, double horSpace) {
    return Column(
      children: [
        buildSeeAllView(context, 'Popular Shows For Free', () {
          Constant.sendToNext(context, popularShowsScreenRoute);
        }),
        12.h.verticalSpace,
        SizedBox(
          height: 104.h,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              ModelPopularShows popular = popularList[index];
              return InkWell(
                onTap: () {
                  Constant.sendToNext(context, videoDetailScreenRoute);
                },
                child: SizedBox(
                        height: 104.h,
                        width: 80.h,
                        child: Column(
                          children: [
                            Expanded(
                              child: getCircularImage(context, double.infinity,
                                  double.infinity, 12, popular.img,
                                  boxFit: BoxFit.cover),
                            ),
                            5.h.verticalSpace,
                            getCustomFont(
                                popular.title, 14, getFontColor(context), 1,
                                fontWeight: FontWeight.w400)
                          ],
                        ))
                    .marginOnly(left: (index == 0) ? horSpace : 0, right: 20.h),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildTopPicksList(BuildContext context, double horSpace) {
    return Column(
      children: [
        buildSeeAllView(context, 'Top Picks', () {
          Constant.sendToNext(context, topPicksScreenRoute);
        }),
        15.h.verticalSpace,
        SizedBox(
          height: 160.h,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Constant.sendToNext(context, videoDetailScreenRoute);
                },
                child: getCircularImage(
                        context, 280.h, double.infinity, 12, 'top_picks1.png',
                        boxFit: BoxFit.cover)
                    .marginOnly(left: (index == 0) ? horSpace : 0, right: 12.h),
              );
            },
          ),
        ),
      ],
    );
  }

  SizedBox buildCategoryList(RxInt selectedItem, double horSpace) {
    return SizedBox(
      height: 38.h,
      child: ListView.builder(
        itemCount: itemList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ObxValue(
              (p0) => InkWell(
                    onTap: () {
                      selectedItem.value = index;
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: getButtonDecoration(
                          (selectedItem.value == index)
                              ? getAccentColor(context)
                              : Colors.transparent,
                          borderColor: (selectedItem.value == index)
                              ? getAccentColor(context)
                              : getCardColor(context),
                          corner: 12.h,
                          withCorners: true,
                          withBorder: true),
                      margin: EdgeInsets.only(
                          left: (index == 0) ? horSpace : 0, right: 12.h),
                      child: getCustomFont(
                              itemList[index],
                              12,
                              (selectedItem.value == index)
                                  ? getFontColor(context)
                                  : getFontHint(context),
                              1,
                              fontWeight: FontWeight.w400)
                          .paddingSymmetric(horizontal: 14.h),
                    ),
                  ),
              selectedItem);
        },
      ),
    );
  }

  Widget buildContinueWatchingList(BuildContext context, double horSpace) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getCustomFont('Continue Watching', 17, getFontColor(context), 1,
                fontWeight: FontWeight.w700)
            .paddingSymmetric(horizontal: horSpace),
        12.h.verticalSpace,
        SizedBox(
          height: 101.h,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Constant.sendToNext(context, videoDetailScreenRoute);
                },
                child: Container(
                    height: 101.h,
                    width: 175.h,
                    margin: EdgeInsets.only(
                        left: (index == 0) ? horSpace : horSpace / 2,
                        right: (index == continueWatchImgList.length - 1)
                            ? horSpace
                            : (horSpace / 2)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.h)),
                        image: getDecorationAssetImage(
                            context, continueWatchImgList[index],
                            fit: BoxFit.cover)),
                    child: getGradientContainer(
                      context,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          getSvgImage(context, 'play.svg', 14),
                          6.h.horizontalSpace,
                          getCustomFont('S12 E1', 12, getFontColor(context), 1,
                              fontWeight: FontWeight.w400)
                        ],
                      ).paddingSymmetric(horizontal: 12.h, vertical: 9.h),
                    )),
              );
            },
          ),
        ),
      ],
    );
  }

  Column buildSliderList(RxInt sliderPos, BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 171.h,
          child: CarouselSlider(
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                onPageChanged: (position, reason) {
                  sliderPos.value = position;
                },
                enableInfiniteScroll: false,
              ),
              items: List.generate(bannerList.length, (index) {
                ModelBanner banner = bannerList[index];
                return InkWell(
                  onTap: () {
                    Constant.sendToNext(context, videoDetailScreenRoute);
                  },
                  child: Container(
                      height: 171.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: getDecorationAssetImage(context, banner.img,
                              fit: BoxFit.fill),
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.h))),
                      child: getGradientContainer(
                        context,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            getSvgImage(context, 'video_circle.svg', 24),
                            8.h.horizontalSpace,
                            getCustomFont(
                                banner.title, 12, getFontColor(context), 1,
                                fontWeight: FontWeight.w700)
                          ],
                        ).paddingAll(15.h),
                      )),
                );
              })),
        ),
        12.h.verticalSpace,
        ObxValue(
            (p0) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    indicators(context, bannerList.length, sliderPos.value)),
            sliderPos),
      ],
    );
  }

  Widget buildSeeAllView(
      BuildContext context, String title, Function function) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            getCustomFont(title, 17, getFontColor(context), 1,
                fontWeight: FontWeight.w700),
            6.h.horizontalSpace,
            getSvgImage(context, 'img.svg', 16)
          ],
        ),
        InkWell(
          onTap: () {
            function();
          },
          child: getCustomFont(
            "See All",
            14,
            getFontColor(context),
            1,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ).paddingSymmetric(
        horizontal: FetchPixels.getDefaultHorSpaceFigma(context));
  }
}

List<Widget> indicators(BuildContext context, imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      width: 7.h,
      height: 7.h,
      decoration: BoxDecoration(
          color: currentIndex == index
              ? getAccentColor(context)
              : getCardColor(context),
          shape: BoxShape.circle),
    );
  });
}
