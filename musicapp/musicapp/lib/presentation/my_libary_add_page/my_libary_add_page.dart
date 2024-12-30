import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/home_screen_page/controller/home_screen_controller.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';

import '../my_libary_artist_page/my_libary_artist_page.dart';
import '../my_libary_playlist_page/my_libary_playlist_page.dart';
import '../my_libary_playlist_tab_container_screen/controller/my_libary_playlist_tab_container_controller.dart';
import '../my_libary_screen/my_libary_screen.dart';
import 'controller/my_libary_add_controller.dart';

// ignore_for_file: must_be_immutable
class MyLibaryAddPage extends StatelessWidget {
  MyLibaryAddPage({Key? key}) : super(key: key);
  PageController pageController = PageController();
  List tabs = [MyLibaryArtistPage(),MyLibaryPlaylistPage()];
  MyLibaryAddController myLibaryAddController = Get.put(MyLibaryAddController());
HomeScreenController homeScreenController = Get.put(HomeScreenController());
  MyLibaryPlaylistTabContainerController myLibaryPlaylistTabContainerController = Get.put(MyLibaryPlaylistTabContainerController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder:(controller) =>  controller.artistData.isEmpty?
      Stack(
        children: [
         Padding(
           padding:getPadding(top: 16),
           child: Container(
            child:
            Row(
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
                       text: "lbl_your_libary".tr, margin: getMargin(left: 11)),
                  ]),
              AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgSearchBlack900 : ImageConstant.imgSearchWhite,
                  margin:
                  getMargin(left: 20, top: 16, right: 20, bottom: 16))
             ],
            ),
           ),
         ),
         Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Text("msg_add_music_and_wishlist".tr,
                 overflow: TextOverflow.ellipsis,
                 textAlign: TextAlign.left,
                 style: theme.textTheme.headlineMedium),
             Container(
                 width: getHorizontalSize(304),
                 margin: getMargin(left: 61, top: 15, right: 61),
                 child: Text("msg_collect_your_favorites".tr,
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                     textAlign: TextAlign.center,
                     style: theme.textTheme.bodyLarge)),
             CustomElevatedButton(
                 text: "lbl_add".tr,
                 margin: getMargin(top: 20, bottom: 5),
                 buttonStyle: ButtonThemeHelper.fillDeeppurpleA200
                     .copyWith(
                     fixedSize: MaterialStateProperty.all<Size>(
                         Size(getHorizontalSize(162),
                             getVerticalSize(54)))),
                 buttonTextStyle: TextThemeHelper.titleMediumPrimary_1,
                 onTap: () {
                   showModalBottomSheet(
                     context: context,
                     builder: (context) {
                       return MyLibaryScreen();
                     },
                   );

                 })
            ],
           ),
         )
            ],
      ):Column(
        children: [
          Padding(
            padding:getPadding(top: 16),
            child: Container(
              child:
              Padding(
                padding: getPadding(left: 16,right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        children: [
                          AppbarImage(
                              height: getVerticalSize(45),
                              width: getHorizontalSize(30),
                              svgPath: ImageConstant.imgMusic,
                              margin: getMargin(left: 0, top: 5, bottom: 5)),
                          AppbarSubtitle(
                              text: "lbl_your_libary".tr, margin: getMargin(left: 11)),
                        ]),
                    Row(
                      children: [
                        AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgSearchBlack900 : ImageConstant.imgSearchWhite,
                            margin:
                            getMargin(left: 20, top: 16, right: 20, bottom: 16)),
                        CustomImageView(
                          onTap: (){
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return MyLibaryScreen();
                              },
                            );
                          },
                            svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant
                                .imgPlus:ImageConstant.imgPlusWhite),
                      ],
                    )
                  ],
                ),
              ),

            ),
          ),
          Padding(
            padding: getPadding(
              left: 0,
              top: 19,
              right: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                      controller.currentPage==1?pageController.previousPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn):SizedBox();
                      controller.setCurrentPage(0);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: controller.currentPage==0?appTheme.selectedtabColor:appTheme.bgColor))),
                      child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Center(
                          child: Text(
                            "lbl_artist".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: controller.currentPage==0?TextStyle(
                                fontSize: getFontSize(17),
                                fontFamily: "SF Pro Display",
                                fontWeight: FontWeight.w700,
                                color: appTheme.deepPurpleA200
                            ):TextStyle(
                                fontSize: getFontSize(17),
                                fontFamily: "SF Pro Display",
                                fontWeight: FontWeight.w400,
                                color: appTheme.unselectedtabColor
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                      controller.currentPage==0?pageController.nextPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn):SizedBox();
                      controller.setCurrentPage(1);

                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: controller.currentPage==1?appTheme.selectedtabColor:appTheme.bgColor))),
                      child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Center(
                          child: Text(
                            "lbl_playlist".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: controller.currentPage==1?
                            TextStyle(
                                fontSize: getFontSize(17),
                                fontFamily: "SF Pro Display",
                                fontWeight: FontWeight.w700,
                                color: appTheme.deepPurpleA200
                            ):TextStyle(
                                fontSize: getFontSize(17),
                                fontFamily: "SF Pro Display",
                                fontWeight: FontWeight.w400,
                                color: appTheme.unselectedtabColor
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),






          Expanded(
            child: Container(
              child: PageView.builder(
                itemCount: 2,
                onPageChanged: (value) {
                  controller.setCurrentPage(value);
                },
                controller: pageController,
                itemBuilder: (context, index) {
                  return tabs[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  onTapAdd() {



    Get.toNamed(
      AppRoutes.myLibaryScreen,
    );
  }
}
