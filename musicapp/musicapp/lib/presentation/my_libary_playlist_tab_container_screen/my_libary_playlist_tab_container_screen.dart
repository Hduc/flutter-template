import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/presentation/my_libary_artist_page/my_libary_artist_page.dart';
import 'package:musicapp/presentation/my_libary_playlist_page/my_libary_playlist_page.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';

import 'controller/my_libary_playlist_tab_container_controller.dart';

class MyLibaryPlaylistTabContainerScreen extends StatefulWidget {
  const MyLibaryPlaylistTabContainerScreen({super.key});

  @override
  State<MyLibaryPlaylistTabContainerScreen> createState() => _MyLibaryPlaylistTabContainerScreenState();
}

class _MyLibaryPlaylistTabContainerScreenState extends State<MyLibaryPlaylistTabContainerScreen> {
  PageController pageController = PageController();
  List tabs = [MyLibaryArtistPage(),MyLibaryPlaylistPage()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: theme.colorScheme.primary,
          appBar: CustomAppBar(
              height: getVerticalSize(66),
              leadingWidth: 50,
              leading: AppbarImage(
                  height: getVerticalSize(45),
                  width: getHorizontalSize(30),
                  svgPath: ImageConstant.imgMusic,
                  margin: getMargin(left: 20, top: 5, bottom: 5)),
              title: AppbarSubtitle(
                  text: "lbl_your_libary".tr, margin: getMargin(left: 11)),
              actions: [
                AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgSearchBlack900,
                    margin: getMargin(left: 20, top: 16, right: 16)),
                AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgPlus,
                    margin: getMargin(left: 16, top: 16, right: 36),
                    onTap: () {
                      onTapPlus();
                    })
              ]),
          body: GetBuilder<MyLibaryPlaylistTabContainerController>(
            init: MyLibaryPlaylistTabContainerController(),
            builder:(controller) =>  SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

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
                                              color: controller.currentPage==0?appTheme.selectedtabColor:appTheme.deepPurpleA200))),
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
                                              color: controller.currentPage==1?appTheme.selectedtabColor:appTheme.deepPurpleA200))),
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

                      // Container(
                      //     height: getVerticalSize(29),
                      //     width: getHorizontalSize(310),
                      //     margin: getMargin(top: 20, right: 20),
                      //     child: TabBar(
                      //         controller: controller.tabviewController,
                      //         labelColor: appTheme.deepPurpleA200,
                      //         labelStyle: TextStyle(),
                      //         unselectedLabelColor: appTheme.gray700,
                      //         unselectedLabelStyle: TextStyle(),
                      //         indicatorColor: appTheme.deepPurpleA200,
                      //         tabs: [
                      //           Tab(
                      //               child: Text("lbl_artist".tr,
                      //                   overflow: TextOverflow.ellipsis)),
                      //           Tab(
                      //               child: Text("lbl_playlist".tr,
                      //                   overflow: TextOverflow.ellipsis))
                      //         ])),
                      // SizedBox(
                      //     height: getVerticalSize(738),
                      //     child: TabBarView(
                      //         controller: controller.tabviewController,
                      //         children: [
                      //           MyLibaryArtistPage(),
                      //           MyLibaryPlaylistPage()
                      //         ]))
                    ])),
          ),
        ));
  }
  onTapPlus() {
    Get.toNamed(
      AppRoutes.myLibaryScreen,
    );
  }
}





// class MyLibaryPlaylistTabContainerScreen
//     extends GetWidget<MyLibaryPlaylistTabContainerController> {
//   const MyLibaryPlaylistTabContainerScreen({Key? key}) : super(key: key);
//
// }
