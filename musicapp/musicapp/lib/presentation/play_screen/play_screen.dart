import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';

import '../songs_detail_screen/controller/songs_detail_controller.dart';
import 'controller/play_controller.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  PlayController controller = Get.put(PlayController());
  SongsDetailController songsDetailController =
      Get.put(SongsDetailController());

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
            body: Padding(
              padding:  EdgeInsets.only(top: 28),
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getVerticalSize(20),
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
                         Padding(
                           padding: getPadding(left: 62,right: 62),
                           child: Container(
                             height: getVerticalSize(291),
                             width: getHorizontalSize(303),
                             decoration: BoxDecoration(
                                 borderRadius:
                                 BorderRadius.circular(getHorizontalSize(16)),
                                ),
                             child: CustomImageView(
                               imagePath: songsDetailController.currentMusicImage!,
                               radius: BorderRadius.circular(getHorizontalSize(20)),
                               fit: BoxFit.fill,
                             ),
                           ),
                         ),
                         Center(
                           child: Padding(
                               padding: getPadding(top: 17),
                               child: Text(songsDetailController.title!,
                                   overflow: TextOverflow.ellipsis,
                                   textAlign: TextAlign.left,
                                   style: theme.textTheme.headlineMedium)),
                         ),
                         Center(
                           child: Padding(
                               padding: getPadding(top: 3),
                               child: Text(songsDetailController.subTitle!,
                                   overflow: TextOverflow.ellipsis,
                                   textAlign: TextAlign.left,
                                   style: TextThemeHelper.bodyLargeGray600_1)),
                         ),
                         Padding(
                             padding: getPadding(left: 20, top: 37, right: 20),
                             child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   CustomImageView(
                                       color:
                                       PrefUtils().getThemeData() == "primary"
                                           ? Colors.black
                                           : Colors.white,
                                       svgPath: ImageConstant.imgRefresh,
                                       height: getSize(24),
                                       width: getSize(24),
                                       margin: getMargin(top: 20, bottom: 20)),
                                   Row(
                                     children: [
                                       CustomImageView(
                                           color:
                                           PrefUtils().getThemeData() == "primary"
                                               ? Colors.black
                                               : Colors.white,
                                           svgPath: ImageConstant.imgRewind,
                                           height: getSize(40),
                                           width: getSize(40),
                                           margin: getMargin(top: 12, bottom: 12,right: 24)),
                                       Container(
                                         height: getSize(64),
                                         width: getSize(64),
                                         decoration: BoxDecoration(
                                             shape: BoxShape.circle,
                                             color: appTheme.purple300),
                                         alignment: Alignment.center,

                                         child: Padding(
                                           padding: getPadding(all: 20),
                                           child: CustomImageView(
                                               height: getSize(24),
                                               width: getSize(24),
                                               svgPath: ImageConstant.imgPlayPrimary),
                                         ),
                                       ),
                                       CustomImageView(
                                           color:
                                           PrefUtils().getThemeData() == "primary"
                                               ? Colors.black
                                               : Colors.white,
                                           svgPath: ImageConstant.imgRewindBlack900,
                                           height: getSize(40),
                                           width: getSize(40),
                                           margin: getMargin(
                                               left: 24, top: 12, bottom: 12)),
                                     ],
                                   ),
                                   CustomImageView(
                                       color:
                                       PrefUtils().getThemeData() == "primary"
                                           ? Colors.black
                                           : Colors.white,
                                       svgPath: ImageConstant.imgIcshuffle,
                                       height: getSize(24),
                                       width: getSize(24),
                                       margin: getMargin(top: 20, bottom: 20))
                                 ])),
                         CustomImageView(
                             imagePath: PrefUtils().getThemeData() == "primary"
                                 ? ImageConstant.imgGroup34343
                                 : ImageConstant.imgMusicPlayLineDark,
                             height: getVerticalSize(44),
                             width: getHorizontalSize(428),
                             margin: getMargin(top: 32)),
                         Container(
                             width: getHorizontalSize(383),
                             margin: getMargin(
                                 left: 22, top: 32, right: 21, bottom: 5),
                             child: RichText(
                                 text: TextSpan(children: [
                                   TextSpan(
                                       text: "msg_tumhe_kitna_pyaar2".tr,
                                       style: TextStyle(
                                           color:
                                           appTheme.black900.withOpacity(0.2),
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: "msg_by_arijit_singh".tr,
                                       style: TextStyle(
                                           color:
                                           appTheme.black900.withOpacity(0.4),
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: " ",
                                       style: TextStyle(
                                           color: appTheme.black900,
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: "msg_dhawan_and_janhvi".tr,
                                       style: TextStyle(
                                           color:
                                           appTheme.black900.withOpacity(0.6),
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: "msg_tumhe_kitna_pyaar3".tr,
                                       style: TextStyle(
                                           color:
                                           appTheme.black900.withOpacity(0.8),
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: "msg_the_relationship".tr,
                                       style: TextStyle(
                                           color: appTheme.black900,
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: "msg_janhvi_in_the".tr,
                                       style: TextStyle(
                                           color:
                                           appTheme.black900.withOpacity(0.8),
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: "msg_marriage_where".tr,
                                       style: TextStyle(
                                           color:
                                           appTheme.black900.withOpacity(0.6),
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: " ",
                                       style: TextStyle(
                                           color: appTheme.black900,
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: "msg_onset_although".tr,
                                       style: TextStyle(
                                           color:
                                           appTheme.black900.withOpacity(0.4),
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: " ",
                                       style: TextStyle(
                                           color: appTheme.black900,
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400)),
                                   TextSpan(
                                       text: "msg_resolve_their_issues".tr,
                                       style: TextStyle(
                                           color:
                                           appTheme.black900.withOpacity(0.2),
                                           fontSize: getFontSize(17),
                                           fontFamily: 'SF Pro Display',
                                           fontWeight: FontWeight.w400))
                                 ]),
                                 textAlign: TextAlign.center))
                       ],
                     ),
                   )
                  ])),
            )));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
