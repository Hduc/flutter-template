import 'package:flutter/services.dart';

import '../../widgets/custom_button.dart';
import '../home_screen_container_page/widgets/listgroup4152_item_widget.dart';
import '../home_screen_container_page/widgets/listrectangle29_item_widget.dart';
import '../home_screen_container_page/widgets/sliderrectangle_item_widget.dart';
import 'controller/home_screen_container_controller.dart';
import 'models/coming_soon_game_model.dart';
import 'models/home_screen_container_model.dart';
import 'models/listgroup4152_item_model.dart';
import 'models/listrectangle29_item_model.dart';
import 'models/recomended_game_model.dart';
import 'models/sliderrectangle_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_icon_button.dart';
import 'package:game_store_app/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'models/top_games_model.dart';

// ignore_for_file: must_be_immutable
class HomeScreenContainerPage extends StatelessWidget {
  HomeScreenContainerController controller =
      Get.put(HomeScreenContainerController(HomeScreenContainerModel().obs));
  List<Listgroup4152ItemModel> categoryList =
      HomeScreenContainerModel.getCAtegory();
  List<TopGames> topGame = HomeScreenContainerModel.getTopGames();
  List<ComingSoonGames> comingSoonGame =
      HomeScreenContainerModel.getComingSoonGames();
  List<RecomendedData> recomendedData =
      HomeScreenContainerModel.getRecomendedGames();
  List<SliderrectangleItemModel> slider = HomeScreenContainerModel.getSlider();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              surfaceTintColor: ColorConstant.whiteA700,
              backgroundColor: ColorConstant.whiteA700,
              contentPadding: getPadding(all: 30),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(getHorizontalSize(16)))),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("msg_are_you".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAeonikBold21),
                  SizedBox(
                    height: getVerticalSize(30),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomButton(
                              height: getVerticalSize(48),
                              text: "lbl_no".tr,
                              margin: getMargin(top: 44),
                              padding: ButtonPadding.PaddingAll13,
                              onTap: () {})),
                      SizedBox(
                        width: getHorizontalSize(10),
                      ),
                      Expanded(
                          child: CustomButton(
                              height: getVerticalSize(48),
                              text: "lbl_yes".tr,
                              margin: getMargin(top: 44),
                              padding: ButtonPadding.PaddingAll13,
                              onTap: () {
                                closeApp();
                              })),
                    ],
                  ),
                ],
              ),
            );
          },
        );
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(69),
              title: Padding(
                  padding: getPadding(left: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(right: 65),
                                child: Text("lbl_hello".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBodyGray600))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(top: 5),
                                child: Text("lbl_john_abram".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAeonikBold19)))
                      ])),
              actions: [
                Padding(
                  padding: getPadding(right: 20),
                  child: Container(
                      height: getSize(40),
                      width: getSize(40),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: Image.asset(ImageConstant.imgEllipse25)),
                )
              ]),
          body: SafeArea(
            child: SingleChildScrollView(
                padding: getPadding(top: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(left: 20, right: 20),
                        child: CustomSearchView(
                          action: TextInputType.none,
                          function: () {
                            print("call");
                            Get.toNamed(AppRoutes.reviewScreen);
                          },
                          controller: controller.searchController,
                          hintText: "lbl_search_games".tr,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 8, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(48)),
                          // suffix: Padding(
                          //     padding: EdgeInsets.only(
                          //         right: getHorizontalSize(15)),
                          //     child: IconButton(
                          //         onPressed: () {
                          //           controller.searchController.clear();
                          //         },
                          //         icon: Icon(Icons.clear,
                          //             color: Colors.grey.shade600)))
                        ),
                      ),
                      Padding(
                          padding: getPadding(top: 24, right: 0),
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
                                SliderrectangleItemModel model =
                                    slider[index];
                                return SliderrectangleItemWidget(model);
                              })),
                      Obx(() => Container(
                          height: getVerticalSize(8),
                          margin: getMargin(left: 176, top: 8),
                          child: AnimatedSmoothIndicator(
                              activeIndex: controller.silderIndex.value,
                              count: slider.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor:
                                      ColorConstant.lightBlueA700,
                                  dotColor: ColorConstant.gray400,
                                  dotHeight: getVerticalSize(6),
                                  dotWidth: getHorizontalSize(6))))),
                      GestureDetector(
                          onTap: () {
                            onTapRowcategories();
                          },
                          child: Padding(
                              padding:
                                  getPadding(top: 27, right: 20, left: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_categories".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAeonikBold19),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtViewall();
                                        },
                                        child: Padding(
                                            padding: getPadding(bottom: 4),
                                            child: Text("lbl_view_all".tr,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtAeonikRegular15LightblueA700)))
                                  ]))),
                      Container(
                          height: getVerticalSize(92),
                          child: ListView.separated(
                              padding:
                                  getPadding(top: 9, left: 20, right: 20),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                    height: getVerticalSize(16));
                              },
                              itemCount: categoryList.length < 7
                                  ? categoryList.length
                                  : 7,
                              itemBuilder: (context, index) {
                                Listgroup4152ItemModel model =
                                    categoryList[index];
                                return Listgroup4152ItemWidget(model,
                                    onTapColumngroup4152: () {
                                  onTapColumngroup4152();
                                });
                              })),
                      Padding(
                          padding: getPadding(top: 27, right: 20, left: 20),
                          child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_top_games".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAeonikBold19),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtViewallone();
                                    },
                                    child: Padding(
                                        padding: getPadding(bottom: 5),
                                        child: Text("lbl_view_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAeonikRegular15LightblueA700)))
                              ])),
                      Padding(
                        padding: getPadding(top: 16),
                        child: GridView.builder(
                          padding: getPadding(left: 20, right: 20),
                          primary: false,
                          shrinkWrap: true,
                          itemCount: 2,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(268),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(16),
                                  crossAxisSpacing: getHorizontalSize(16)),
                          itemBuilder: (context, index) {
                            TopGames game = topGame[index];
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.detailsGameScreen);
                              },
                              child: Container(
                                  padding: getPadding(all: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(20)),
                                      color: ColorConstant.whiteA700,
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 6),
                                            blurRadius: 30,
                                            color: ColorConstant.black900
                                                .withOpacity(0.07))
                                      ]),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                              height: getSize(172),
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                            getHorizontalSize(
                                                                20),
                                                          ),
                                                          topLeft:
                                                              Radius.circular(
                                                                  getHorizontalSize(
                                                                      20))),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          game.image!),
                                                      fit: BoxFit.fill)),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topRight,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 24,
                                                        width: 24,
                                                        margin: getMargin(
                                                            top: 12,
                                                            right: 12),
                                                        variant:
                                                            IconButtonVariant
                                                                .FillWhiteA7005e,
                                                        alignment: Alignment
                                                            .topRight,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFavorite))
                                                  ])),
                                        ),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 11),
                                            child: Text(game.name!,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtSubhead)),
                                        Padding(
                                            padding:
                                                getPadding(left: 4, top: 6),
                                            child: Text(game.subTitle!,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtAeonikRegular15Gray600)),
                                        Padding(
                                          padding: getPadding(
                                              left: 4, top: 4, bottom: 3),
                                          child: Text(
                                            game.price == "\$00.00"
                                                ? "FREE"
                                                : game.price!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: game.price == "\$00.00"
                                                ? AppStyle
                                                    .txtHeadlineTeal800
                                                : AppStyle.txtHeadline,
                                          ),
                                        )
                                      ])),
                            );
                          },
                        ),
                      ),
                      Padding(
                          padding: getPadding(top: 27, right: 20, left: 20),
                          child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_coming_soon".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAeonikBold19),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtViewalltwo();
                                    },
                                    child: Padding(
                                        padding: getPadding(bottom: 4),
                                        child: Text("lbl_view_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAeonikRegular15LightblueA700)))
                              ])),
                      Padding(
                        padding: getPadding(top: 16),
                        child: GridView.builder(
                          padding: getPadding(left: 20, right: 20),
                          primary: false,
                          shrinkWrap: true,
                          itemCount: 2,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(268),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(16),
                                  crossAxisSpacing: getHorizontalSize(16)),
                          itemBuilder: (context, index) {
                            ComingSoonGames game = comingSoonGame[index];
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.detailsGameScreen);
                              },
                              child: Container(
                                  padding: getPadding(
                                      left: 4, top: 6, right: 4, bottom: 6),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(20)),
                                      color: ColorConstant.whiteA700,
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 6),
                                            blurRadius: 30,
                                            color: ColorConstant.black900
                                                .withOpacity(0.07))
                                      ]),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: getSize(170),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                              20),
                                                        ),
                                                        topLeft:
                                                            Radius.circular(
                                                                getHorizontalSize(
                                                                    20))),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      game.image!,
                                                    ),
                                                    fit: BoxFit.fill)),
                                            child: Stack(
                                                alignment:
                                                    Alignment.topRight,
                                                children: [
                                                  CustomIconButton(
                                                      height: 24,
                                                      width: 24,
                                                      margin: getMargin(
                                                          top: 12,
                                                          right: 12),
                                                      variant:
                                                          IconButtonVariant
                                                              .FillWhiteA7005e,
                                                      alignment: Alignment
                                                          .topRight,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFavorite))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 11),
                                            child: Text(game.name!,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtSubhead)),
                                        Padding(
                                            padding:
                                                getPadding(left: 4, top: 4),
                                            child: Text(game.subTitle!,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtAeonikRegular15Gray600)),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 5, bottom: 2),
                                            child: Text(
                                                "lbl_coming_soon2".tr,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSubheadTeal800))
                                      ])),
                            );
                          },
                        ),
                      ),
                      Padding(
                          padding: getPadding(top: 24, right: 20, left: 20),
                          child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("msg_recomended_for_you".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAeonikBold19.copyWith(height: 1)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtViewallthree();
                                    },
                                    child: Text("lbl_view_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtAeonikRegular15LightblueA700.copyWith(height: 1)))
                              ])),
                      Container(
                        height: getVerticalSize(130),
                        child: ListView.separated(
                          padding: getPadding(left: 12, right: 12,),
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            RecomendedData model = recomendedData[index];
                            return Listrectangle29ItemWidget(model,
                                onTapRecomendedforyo: () {
                              onTapRecomendedforyo();
                            });
                          },
                          separatorBuilder:
                              (BuildContext context, int index) {
                            return SizedBox(width: getVerticalSize(16),);
                          },
                        ),
                      )
                    ])),
          )),
    );
  }

  onTapRecomendedforyo() {
    Get.toNamed(AppRoutes.detailsGameScreen);
  }

  onTapColumngroup4152() {
    Get.toNamed(AppRoutes.recomendedForYouScreen);
  }

  onTapRowcategories() {
    Get.toNamed(
      AppRoutes.categoriesScreen,
    );
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.categoriesScreen,
    );
  }

  onTapTxtViewallone() {
    Get.toNamed(
      AppRoutes.topGamesScreen,
    );
  }

  onTapTxtViewalltwo() {
    Get.toNamed(
      AppRoutes.comingSoonScreen,
    );
  }

  onTapTxtViewallthree() {
    Get.toNamed(
      AppRoutes.recomendedForYouOneScreen,
    );
  }

  onTapImgEllipsetwentyfi() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemNavigator.pop();
    });
  }
}
