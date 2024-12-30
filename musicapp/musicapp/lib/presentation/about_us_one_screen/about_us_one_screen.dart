import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';
// import 'package:expansion_tile_group/expansion_tile_group.dart';
import '../../core/expantiontile/src/types/expansion_tile_border_item.dart';
import 'controller/about_us_one_controller.dart';



class AboutUsOneScreen extends StatefulWidget {
  const AboutUsOneScreen({super.key});

  @override
  State<AboutUsOneScreen> createState() => _AboutUsOneScreenState();
}

class _AboutUsOneScreenState extends State<AboutUsOneScreen> {
  AboutUsOneController controller = Get.put(AboutUsOneController());
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
            body: Container(
              color: appTheme.bgColor,
                width: double.maxFinite,
                padding: getPadding(left: 0, top: 16, right: 0, bottom: 16),
                child: Column(
                  children: [
                    CustomAppBar(
                        height: getVerticalSize(81),
                        leadingWidth: 44,
                        leading: AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,
                            margin: getMargin(left: 20, top: 29, bottom: 28),
                            onTap: () {
                              onTapArrowleft17();
                            }),
                        centerTitle: true,
                        title: AppbarTitle(text: "lbl_help".tr),
                        styleType: Style.bgFill),
                    Expanded(
                      child: Container(
                        child: ListView(
                          padding: getPadding(left: 20,right: 20),
                            children: [
                              ExpansionTileBorderItem(
                                // collapsedIconColor: appTheme.black900,
                                iconColor:appTheme.black900,
                                childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),
                                borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                                decoration: AppDecoration.fill2.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                                title: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_what_is_the_top".tr,
                                          style: theme
                                              .textTheme.titleMedium),
                                    ]),
                                    textAlign: TextAlign.left),
                                expendedBorderColor: Colors.blue,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: double.infinity,
                                        child: Text(
                                            "msg_lorem_ipsum_dolor2"
                                                .tr,
                                            maxLines: 3,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme
                                                .textTheme.bodyLarge!.copyWith(
                                              color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                            ))),
                                  )
                                ],
                              ),
                              SizedBox(height: getVerticalSize(16),),
                              ExpansionTileBorderItem(
                                iconColor:PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),
                                borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                                decoration: AppDecoration.fill2.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                                title: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_is_wynk_music_free".tr,
                                          style: theme
                                              .textTheme.titleMedium),
                                    ]),
                                    textAlign: TextAlign.left),
                                expendedBorderColor: Colors.blue,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: double.infinity,
                                        child: Text(
                                            "msg_lorem_ipsum_dolor2"
                                                .tr,
                                            maxLines: 3,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme
                                                .textTheme.bodyLarge!.copyWith(
                                              color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                            ))),
                                  )
                                ],
                              ),
                              SizedBox(height: getVerticalSize(16),),
                              ExpansionTileBorderItem(
                                iconColor:PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),
                                borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                                decoration: AppDecoration.fill2.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                                title: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_how_can_i_listen".tr,
                                          style: theme
                                              .textTheme.titleMedium),
                                    ]),
                                    textAlign: TextAlign.left),
                                expendedBorderColor: Colors.blue,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: double.infinity,
                                        child: Text(
                                            "msg_lorem_ipsum_dolor2"
                                                .tr,
                                            maxLines: 3,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme
                                                .textTheme.bodyLarge!.copyWith(
                                              color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                            ))),
                                  )
                                ],
                              ),
                              SizedBox(height: getVerticalSize(16),),
                              ExpansionTileBorderItem(
                                // isHasTrailing: true,
                                // trailing: CustomImageView(
                                //   svgPath: ImageConstant.imgArrowdown,
                                // ),
                                iconColor:PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),
                                borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                                decoration: AppDecoration.fill2.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                                title: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_who_is_the_most".tr,
                                          style: theme
                                              .textTheme.titleMedium),
                                    ]),
                                    textAlign: TextAlign.left),
                                expendedBorderColor: Colors.blue,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: double.infinity,
                                        child: Text(
                                            "msg_lorem_ipsum_dolor2"
                                                .tr,
                                            maxLines: 3,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme
                                                .textTheme.bodyLarge!.copyWith(
                                              color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                            ))),
                                  )
                                ],
                              ),
                              SizedBox(height: getVerticalSize(16),),
                              ExpansionTileBorderItem(
                                iconColor:PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),
                                borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                                decoration: AppDecoration.fill2.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                                title: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_what_is_the_biggest".tr,
                                          style: theme
                                              .textTheme.titleMedium),
                                    ]),
                                    textAlign: TextAlign.left),
                                expendedBorderColor: Colors.blue,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: double.infinity,
                                        child: Text(
                                            "msg_lorem_ipsum_dolor2"
                                                .tr,
                                            maxLines: 3,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme
                                                .textTheme.bodyLarge!.copyWith(
                                              color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                            ))),
                                  )
                                ],
                              ),
                              SizedBox(height: getVerticalSize(16),),

                            ]),
                      ),
                    ),
                  ],
                ))










        ));
  }

  onTapArrowleft17() {
    Get.back();
  }
}


