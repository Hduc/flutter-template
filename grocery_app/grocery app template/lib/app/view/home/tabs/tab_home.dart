import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grocery/app/data/data_file.dart';
import 'package:grocery/app/models/model_category.dart';
import 'package:grocery/base/color_data.dart';
import 'package:grocery/base/constant.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';
import 'package:grocery/base/widget_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/model_intro.dart';
import '../../../models/model_sub_item.dart';
import '../../../routes/app_routes.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabHome();
  }
}

class _TabHome extends State<TabHome> {
  TextEditingController edtController = TextEditingController();

  List<ModelIntro> allIntroList = DataFile.getAllOfferList();
  ValueNotifier selectedPage = ValueNotifier(0);
  final _controller = PageController();
  List<ModelCategory> catList = DataFile.getAllCategoryList();
  List<ModelSubItem> subList = DataFile.getAllSubItemsList();


  @override
  Widget build(BuildContext context) {
      FetchPixels(context, mockUpWidth1: 414, mockUpHeight1: 1007);
    EdgeInsets edgeInsets =
        EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(20));
    // EdgeInsets edgeInsets = EdgeInsets.symmetric(horizontal: FetchPixels.getDefaultHorSpace(context));
    int crossAxisCountPopular = 4;
    // if(DeviceUtil.isTablet)
    //   {
    //     crossAxisCountPopular=6;
    //   }
    int totalCountCat = min(crossAxisCountPopular, catList.length);

    double width = MediaQuery.of(context).size.width;
    double gridWidth = (width) / crossAxisCountPopular;

    double gridWidthSet = FetchPixels.getPixelWidth(79);
    double gridHeight = FetchPixels.getPixelWidth(106);

    double gridWidthPopularSet =  (width) / subList.length;
    double gridWidthPopular = FetchPixels.getPixelWidth(177);
    double gridHeightPopular = FetchPixels.getPixelWidth(219);

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: buildList(context, edgeInsets, gridHeight, totalCountCat, gridWidth, gridWidthSet, gridHeightPopular, gridWidthPopularSet, gridWidthPopular),
    );
  }

  ListView buildList(BuildContext context, EdgeInsets edgeInsets, double gridHeight, int totalCountCat, double gridWidth, double gridWidthSet, double gridHeightPopular, double gridWidthPopularSet, double gridWidthPopular) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      primary: true,
      children: [
        getToolbarFigmaWidget(context, "Grocery", () {},
            withBack: false, settingVisible: true),
        getPaddingWidget(
            edgeInsets,
            InkWell(
              onTap: () {
                Constant.sendToNext(context, Routes.searchScreenPath);
              },
              child: IgnorePointer(
                ignoring: true,
                child: getSearchFigmaWidget(
                  context,
                  edtController,
                  () {},
                  (value) {},
                ),
              ),
            )),
        getVerSpace(FetchPixels.getPixelHeight(20)),
        SizedBox(
          width: FetchPixels.getPixelWidth(314),
          // width: double.infinity,
          // margin: EdgeInsets.symmetric(vertical: FetchPixels.getPixelHeight(45)),
          height: FetchPixels.getPixelWidth(160),
          // height: FetchPixels.getPixelHeight(435),
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            onPageChanged: (value) {
              selectedPage.value = value;
            },
            itemBuilder: (context, index) {
              return Container(
                margin: edgeInsets,
                width: FetchPixels.getPixelWidth(314),
                height: FetchPixels.getPixelWidth(160),
                decoration: getButtonDecoration("#FEDADA".toColor(),
                    withCorners: true, corner: FetchPixels.getPixelWidth(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    getHorSpace(FetchPixels.getPixelWidth(20)),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: getVerSpace(0),
                          ),
                          getTitles("Grocery Store"),
                          Expanded(
                            flex: 1,
                            child: getVerSpace(0),
                          ),
                          getCustomFont(
                              "Get Up To", 16, getFontBlackColor(context), 1,
                              fontWeight: FontWeight.w700, horFactor: true),
                          getVerSpace(FetchPixels.getPixelWidth(5)),
                          getCustomFont(
                              "10% Off", 28, getAccentColor(context), 1,
                              fontWeight: FontWeight.bold, horFactor: true),
                          Expanded(
                            flex: 1,
                            child: getVerSpace(0),
                          )
                        ],
                      ),
                    ),
                    // getAssetImage(context, "offer1.png", FetchPixels.getPixelWidth(187), FetchPixels.getPixelWidth(151))
                    getCircularImage(
                        context,
                        FetchPixels.getPixelWidth(187),
                        FetchPixels.getPixelWidth(151),
                        FetchPixels.getPixelWidth(12),
                        "offer1.png",
                        boxFit: BoxFit.cover)
                    // // Align(
                    // //   alignment: Alignment.bottomRight,
                    // //     child: getCircularImage(
                    // //         context,
                    // //         FetchPixels.getPixelWidth(187),
                    // //         FetchPixels.getPixelWidth(151),
                    // //         FetchPixels.getPixelWidth(12),
                    // //         "offer1.png",
                    // //         boxFit:BoxFit.cover)),
                    //         // boxFit: (FetchPixels.getPixelWidth(500)>FetchPixels.getPixelHeight(435))?BoxFit.fitHeight:BoxFit.fitWidth)),)
                  ],
                ),
              );
            },
            itemCount: allIntroList.length,
          ),
        ),
        getVerSpace(FetchPixels.getPixelHeight(16)),
        Center(
          child: ValueListenableBuilder(
            valueListenable: selectedPage,
            builder: (context, value, child) {
              return SmoothPageIndicator(
                  controller: _controller, // PageController
                  count: allIntroList.length,
                  effect: ExpandingDotsEffect(
                      dotHeight: FetchPixels.getPixelHeight(6),
                      dotWidth: FetchPixels.getPixelHeight(6),
                      activeDotColor: getFontBlackColor(context),
                      dotColor: getCurrentTheme(context)
                          .focusColor), // your preferred effect
                  onDotClicked: (index) {});

              // return SizedBox(
              //   height: FetchPixels.getPixelHeight(8),
              //   child: DotsIndicator(
              //     controller: _controller,
              //     selectedColor: getAccentColor(context),
              //     itemCount: DataFile.introList.length,
              //     selectedPos: selectedPage.value,
              //     color: indicatorColor,
              //     onPageSelected: (int page) {},
              //   ),
              // );
            },
          ),
        ),
        getVerSpace(FetchPixels.getPixelHeight(24)),
        getViewAll("Categories", () {
          Constant.sendToNext(context, Routes.categoryListPath);
        }),
        getVerSpace(FetchPixels.getPixelWidth(20)),
        Container(
          // margin: edgeInsets,
          margin:
              EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(10)),
          width: double.infinity,
          height: gridHeight,
          // color: Colors.green,
          child: GridView.count(
            crossAxisCount: totalCountCat,
            childAspectRatio: gridWidth / gridHeight,
            shrinkWrap: true,
            // mainAxisSpacing: FetchPixels.getPixelWidth(20),
            // crossAxisSpacing: FetchPixels.getPixelWidth(20),
            primary: false,
            children: List.generate(totalCountCat, (index1) {
              ModelCategory catModel = catList[index1];
              return Center(
                child: InkWell(
                  onTap: () {
                    // Constant.sendToNext(context, Routes.detailScreenPath);
                    Constant.sendToDetail(context,catModel.title,catModel.image,catModel.color);


                  },
                  child: SizedBox(
                    height: gridHeight,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: FetchPixels.getPixelWidth(19)),
                            width: gridWidthSet,
                            height: double.infinity,
                            decoration: getButtonDecoration(
                                catModel.color.toColor(),
                                withCorners: true,
                                corner: FetchPixels.getPixelHeight(15)),
                            child: Center(
                              child: Hero(
                                tag: catModel.image,
                                child: getAssetImage(context, catModel.image,
                                    double.infinity, double.infinity,
                                    boxFit: BoxFit.fitWidth),
                              ),
                            ),
                          ),
                        ),
                        getVerSpace(FetchPixels.getPixelHeight(10)),
                        getCustomFont(
                            catModel.title, 13, getFontBlackColor(context), 1,
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                            horFactor: true)
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        getVerSpace(FetchPixels.getPixelHeight(30)),
        getViewAll("Popular Items", () {
          Constant.sendToNext(
              context, Routes.subListCategoryPath);
        }),
        getVerSpace(FetchPixels.getPixelWidth(20)),
        Container(
          // margin: edgeInsets,
          margin: EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(10)),
          width: double.infinity,
          height: gridHeightPopular,
          // color: Colors.green,
          child: GridView.count(
            crossAxisCount: subList.length,
            childAspectRatio: gridWidthPopularSet / gridHeightPopular,
            shrinkWrap: true,
            // mainAxisSpacing: popularMargin,
            // crossAxisSpacing: popularMargin,
            primary: false,
            children: List.generate(subList.length, (index1) {
              ModelSubItem catModel = subList[index1];
              return InkWell(
                onTap: () {
                  // Constant.sendToNext(context, Routes.detailScreenPath);
                  Constant.sendToDetail(context,catModel.title!,catModel.image!,null);

                },
                child: Center(

                  child: Container(
                    // margin: EdgeInsets.only(left: (index1%2==0)?popularMargin:(popularMargin/2),right:  (index1%2!=0)?popularMargin:(popularMargin/2)),
                    decoration: getButtonDecoration(Colors.white,
                        withCorners: true,
                        corner: FetchPixels.getPixelWidth(12),
                        shadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              offset: const Offset(-5, 6),
                              blurRadius: 28)
                        ]),
                    width: gridWidthPopular,
                    height: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(19)),
                    child: Column(
                      children: [
                        getVerSpace(FetchPixels.getPixelHeight(17)),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child:

                            Hero(
                              tag: catModel.image??"1",

                              child: getAssetImage(
                                  context,
                                  catModel.image ?? "",
                                  double.infinity,
                                  double.infinity,
                                  boxFit: BoxFit.fitHeight),
                            ),
                          ),
                        ),
                        getVerSpace(FetchPixels.getPixelWidth(12)),
                        getCustomFont(
                            catModel.title ?? "", 16, getFontColor(context), 1,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.center,
                            horFactor: true),
                        getVerSpace(FetchPixels.getPixelWidth(13)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            getCustomFont("\$", 14, getAccentColor(context), 1,
                                horFactor: true, fontWeight: FontWeight.w700),
                            getCustomFont(catModel.price ?? "", 16,
                                getFontColor(context), 1,
                                horFactor: true, fontWeight: FontWeight.w700),
                            getHorSpace(FetchPixels.getPixelWidth(8)),
                            Container(
                              width: FetchPixels.getPixelWidth(71),
                              height: FetchPixels.getPixelWidth(28),
                              decoration: getButtonDecoration(
                                "#FFF3F3".toColor(),
                                corner: FetchPixels.getPixelWidth(12),
                                withCorners: true,
                              ),
                              child: Center(
                                child: getCustomFont(
                                    "Per KG", 14, getAccentColor(context), 1,
                                    fontWeight: FontWeight.w500,
                                    horFactor: true,
                                    textAlign: TextAlign.center),
                              ),
                            )
                          ],
                        ),
                        getVerSpace(FetchPixels.getPixelWidth(19))
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget getViewAll(String title, Function function) {
    return getPaddingWidget(
        EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(20)),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: getTitles(title),
            ),
            InkWell(
              onTap: () {
                function();
              },
              child: getCustomFont("View All", 14, getFontSkip(context), 1,
                  fontWeight: FontWeight.w600, horFactor: true),
            )
          ],
        ));
  }

  Widget getTitles(String string) {
    return getCustomFont(string, 20, getFontBlackColor(context), 1,
        fontWeight: FontWeight.w700, horFactor: true);
  }
}
