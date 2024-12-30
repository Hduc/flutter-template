import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'controller/about_us_controller.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  AboutUsController controller = Get.put(AboutUsController());

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
            backgroundColor:appTheme.bgColor,
            body: SizedBox(
                width: size.width,
                child: Padding(
                    padding: getPadding(left: 20, right: 20,top: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          SizedBox(
                            height: getVerticalSize(24),
                          ),
                          Container(
                              color: appTheme.bgColor,
                              child: Padding(
                                padding:
                                getPadding(left: 0, right: 0, top: 0, bottom: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppbarImage(
                                        height: getSize(24),
                                        width: getSize(24),
                                        svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,
                                        onTap: () {
                                          onTapArrowleft16();
                                        }),
                                    AppbarTitle(text: "lbl_about_us".tr),
                                    SizedBox()
                                  ],
                                ),
                              )),


                         Expanded(
                           child: ListView(
                             children: [
                               CustomImageView(
                                   imagePath: ImageConstant.imgRectangle712,
                                   height: getVerticalSize(160),
                                   width: getHorizontalSize(388),
                                   radius: BorderRadius.circular(
                                       getHorizontalSize(16))),
                               Padding(
                                   padding: getPadding(top: 20),
                                   child: Text("msg_the_music_is_life".tr,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: TextThemeHelper
                                           .titleLargeOpenSans)),
                               Container(
                                   width: getHorizontalSize(388),
                                   margin: getMargin(top: 15),
                                   child: Text("msg_lorem_ipsum_dolor".tr,
                                       maxLines: 4,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: theme.textTheme.bodyLarge!.copyWith(
                                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                       ))),
                               Container(
                                   width: getHorizontalSize(386),
                                   margin: getMargin(top: 14),
                                   child: Text("msg_amet_minim_mollit".tr,
                                       maxLines: 3,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: theme.textTheme.bodyLarge!.copyWith(
                                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                       ))),
                               Container(
                                   width: getHorizontalSize(366),
                                   margin: getMargin(top: 16, right: 21),
                                   child: Text("msg_in_a_laoreet_purus".tr,
                                       maxLines: 3,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: theme.textTheme.bodyLarge!.copyWith(
                                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                       ))),
                               Container(
                                   width: getHorizontalSize(388),
                                   margin: getMargin(top: 13),
                                   child: Text("msg_vorem_ipsum_dolor".tr,
                                       maxLines: 4,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: theme.textTheme.bodyLarge!.copyWith(
                                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                       ))),
                               Container(
                                   width: getHorizontalSize(388),
                                   margin: getMargin(top: 14),
                                   child: Text("msg_vorem_ipsum_dolor".tr,
                                       maxLines: 4,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: theme.textTheme.bodyLarge!.copyWith(
                                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                       ))),
                               Container(
                                   width: getHorizontalSize(374),
                                   margin: getMargin(top: 14, right: 13),
                                   child: Text("msg_amet_minim_mollit2".tr,
                                       maxLines: 4,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: theme.textTheme.bodyLarge!.copyWith(
                                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                       ))),

                               Padding(
                                   padding: getPadding(top: 17),
                                   child: Text("msg_lorem_ipsum_dolor".tr,
                                       maxLines: 4,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: theme.textTheme.bodyLarge!.copyWith(
                                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                       )))
                             ],
                           ),
                         )
                        ])))));
  }

  onTapArrowleft16() {
    Get.back();
  }
}
