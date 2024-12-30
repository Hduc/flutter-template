import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../util/color_data.dart';
import '../../../util/constant.dart';
import '../../../util/device_util.dart';
import '../../../util/fetch_pixels.dart';
import '../../../util/get/filters_controller.dart';
import '../../../util/get/route_key.dart';
import '../../../util/widget_utils.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TabSearch();
  }
}

class _TabSearch extends State<TabSearch> {
  final List<dynamic> searchItemList = [
    'img1.png',
    'img2.png',
    'img3.png',
    'img4.png',
    'img5.png',
    'img6.png',
    'img7.png',
    'img8.png',
    'img9.png'
  ];

  final List searchList = [
    'Code M',
    'Bhuj',
    'The Fame Game',
    'Bajirao Mastani',
    'MAI',
    'Boss Level'
  ];
  final imageList = ['Image-MAI.png', 'Image_Bahubali_2.png'];

  RxInt searchPos = (-1).obs;
  RxInt selectedIndex = 0.obs;

  RxBool isVisible = true.obs;

  @override
  Widget build(BuildContext context) {
    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    TextEditingController searchController = TextEditingController();

    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        30.h.verticalSpace,
        buildSearchBar(context, searchController),
        20.h.verticalSpace,
        if (isVisible.value)
          ListView(
            shrinkWrap: true,
            children: [
              getCustomFont('Recent Search', 16, getFontColor(context), 1,
                      fontWeight: FontWeight.w600)
                  .paddingSymmetric(horizontal: horSpace),
              12.h.verticalSpace,
              buildRecentSearchList(context, horSpace),
              20.h.verticalSpace,
              getCustomFont(
                      'Recommendations For You', 16, getFontColor(context), 1,
                      fontWeight: FontWeight.w600)
                  .paddingSymmetric(horizontal: horSpace),
              12.h.verticalSpace,
              buildRecommendationList(context, horSpace),
            ],
          )
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getCustomFont('Result For Action', 16, getFontColor(context), 1,
                      fontWeight: FontWeight.w400)
                  .paddingSymmetric(horizontal: horSpace),
              12.h.verticalSpace,
              buildActionList(context),
              50.h.verticalSpace,
            ],
          )
      ],
    );
  }

  GridView buildActionList(BuildContext context) {
    var height = 177.h;
    var margin = 20.h;
    var crossAxisCount = DeviceUtil.isTablet ? 6 : 3;
    var screenWidth =
        ((context.width - (margin * crossAxisCount)) / crossAxisCount) - margin;

    return GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        itemCount: searchItemList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return getCircularImage(
              context, double.infinity, 177.h, 12, searchItemList[index],
              boxFit: BoxFit.cover);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: margin,
            childAspectRatio: screenWidth / height,
            crossAxisSpacing: margin));
  }

  Widget buildRecommendationList(BuildContext context, double horSpace) {
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

  Widget buildRecentSearchList(BuildContext context, double horSpace) {
    return Wrap(
      spacing: 12.h,
      children: List<Widget>.generate(searchList.length, (int index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              isVisible.value = false;
            });
          },
          child: Chip(
            backgroundColor: containerColor,
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 9.h),
            avatar: getSvgImage(context, "rotate_left.svg", 16.h),
            labelPadding: EdgeInsets.only(left: 4.h),
            label: getCustomFont(
                searchList[index], 14, getFontColor(context), 1,
                fontWeight: FontWeight.w400),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.h)),
          ),
        );
      }),
    ).marginSymmetric(horizontal: 20.h);
  }

  Widget buildSearchBar(
      BuildContext context, TextEditingController searchController) {
    return getDefaultTextFiled(
        context, 'Search', searchController, getFontColor(context), (value) {},
        isFilled: true,
        withFilter: true,
        withPrefix: true,
        imgName: 'search.svg', filterClick: () {
      getFilterBottomSheet(context);
    });
  }
}

Widget buildNoSearchFoundWidget(BuildContext context) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        getAssetImage(context, "no_search_found_img.png", 140.w, 140.h,
            boxFit: BoxFit.scaleDown),
        getCustomFont('Opss!', 26, getFontColor(context), 1,
                fontWeight: FontWeight.w700)
            .marginOnly(top: 30.h, bottom: 5.h),
        getCustomFont('What you are looking for is not found', 16,
            getFontColor(context), 1,
            fontWeight: FontWeight.w400)
      ],
    ),
  );
}

getFilterBottomSheet(BuildContext context) {
  double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);
  var controllerGet = Get.put(FiltersController());

  final List<String> categoriesList = [
    'Movie',
    'Tv Shows',
    'Drama',
    'Animation',
  ];

  final List<String> generalList = [
    'Action',
    'Comedy',
    'Romance',
    'Thriller',
  ];

  final List<String> timeList = [
    'All Periods',
    '2022',
    '2021',
    '2020',
    '2019',
  ];

  final List<String> sortList = [
    'Popularity',
    'Latest Release',
  ];

  return Get.bottomSheet(
    isScrollControlled: true,
    Wrap(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              36.h.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: getCustomFont(
                        'Sort & Filter', 20, getFontColor(context), 1,
                        fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                      onTap: () {
                        Constant.backToPrev(context);
                      },
                      child: getSvgImage(context, 'close.svg', 24))
                ],
              ).paddingSymmetric(horizontal: horSpace),
              12.h.verticalSpace,
              getDivider(),
              20.h.verticalSpace,
              buildTitles(context, 'Categories'),
              12.h.verticalSpace,
              buildFilterTab(
                  context, categoriesList, controllerGet.categoriesPos),
              20.h.verticalSpace,
              buildTitles(context, 'General'),
              12.h.verticalSpace,
              buildFilterTab(context, generalList, controllerGet.generalPos),
              20.h.verticalSpace,
              buildTitles(context, 'Time/Period'),
              12.h.verticalSpace,
              buildFilterTab(context, timeList, controllerGet.timePos),
              20.h.verticalSpace,
              buildTitles(context, 'Sort'),
              12.h.verticalSpace,
              buildFilterTab(context, sortList, controllerGet.sortPos),
              40.h.verticalSpace,
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: getButtonFigma(
                        context,
                        Colors.transparent,
                        true,
                        "Reset",
                        Colors.white,
                        () {},
                        isBorder: true,
                        borderColor: getAccentColor(context),
                        EdgeInsets.zero,
                        withFilter: true),
                  ),
                  20.w.horizontalSpace,
                  Expanded(
                    flex: 1,
                    child: getButtonFigma(context, getAccentColor(context),
                        true, "Filter", getFontColor(context), () {
                      Constant.backToPrev(context);
                    }, EdgeInsets.zero, withFilter: true),
                  ),
                ],
              ).marginSymmetric(horizontal: horSpace),
              20.h.verticalSpace,
            ],
          ),
        )
      ],
    ),
    backgroundColor: getCardColor(context),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.h))),
  );
}
