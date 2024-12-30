import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_subtitle.dart';

import '../log_out_popup_screen/log_out_popup_screen.dart';
import 'controller/my_profile_one_controller.dart';
import 'models/my_profile_one_model.dart';

// ignore_for_file: must_be_immutable
class MyProfileOnePage extends StatelessWidget {
  MyProfileOnePage({Key? key}) : super(key: key);

  MyProfileOneController controller =
      Get.put(MyProfileOneController(MyProfileOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: getVerticalSize(16),
          ),
          Container(
            child: Row(
              children: [
                AppbarImage(
                    height: getVerticalSize(45),
                    width: getHorizontalSize(30),
                    svgPath: ImageConstant.imgMusic,
                    margin: getMargin(left: 20, top: 5, bottom: 5)),
                AppbarSubtitle(
                    text: "lbl_your_profile".tr, margin: getMargin(left: 11))
              ],
            ),
          ),
          SizedBox(
            height: getVerticalSize(32),
          ),
         Padding(
           padding: getPadding(left: 20,right: 20),
           child: Column(
             children: [
               Padding(
                   padding: getPadding(right: 0),
                   child: Row(children: [
                     CustomImageView(
                         svgPath: PrefUtils().getThemeData() == "primary"? ImageConstant.imgAvtar1DeepPurpleA200:ImageConstant.imgProfileDarkTheme,
                         height: getSize(80),
                         width: getSize(80)),
                     Padding(
                         padding: getPadding(left: 15, top: 14, bottom: 14),
                         child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("lbl_john_abram".tr,
                                   overflow: TextOverflow.ellipsis,
                                   textAlign: TextAlign.left,
                                   style: theme.textTheme.titleLarge),
                               Padding(
                                   padding: getPadding(top: 1),
                                   child: Text("msg_johnabram_gmail_com".tr,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: TextThemeHelper
                                           .bodyLargeOpenSansGray600
                                           .copyWith(
                                           letterSpacing:
                                           getHorizontalSize(0.16))))
                             ]))
                   ])),
               GestureDetector(
                   onTap: () {
                     onTapRowuser();
                   },
                   child: Container(
                       margin: getMargin(top: 40),
                       padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
                       decoration: AppDecoration.fill2.copyWith(
                           borderRadius: BorderRadiusStyle.roundedBorder16),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 CustomImageView(
                                     svgPath: ImageConstant.imgUserBlack90024x24,
                                     color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                     height: getSize(24),
                                     width: getSize(24),
                                     alignment: Alignment.centerLeft),
                                 Padding(
                                     padding: getPadding(left: 8, top: 4),
                                     child: Text("lbl_my_profile".tr,
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.left,
                                         style: theme.textTheme.bodyLarge!.copyWith(
                                           color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                         )))
                               ],
                             ),
                             CustomImageView(
                                 color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                 svgPath: ImageConstant.imgArrowright,
                                 height: getSize(24),
                                 width: getSize(24))
                           ]))),
               GestureDetector(
                   onTap: () {
                     onTapRowfavorite();
                   },
                   child: Container(
                       margin: getMargin(top: 16),
                       padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
                       decoration: AppDecoration.fill2.copyWith(
                           borderRadius: BorderRadiusStyle.roundedBorder16),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 CustomImageView(
                                     color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                     svgPath: ImageConstant.imgFavorite,
                                     height: getSize(24),
                                     width: getSize(24)),
                                 Padding(
                                     padding: getPadding(left: 8, top: 4),
                                     child: Text("lbl_my_wishlist".tr,
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.left,
                                         style: theme.textTheme.bodyLarge!.copyWith(
                                           color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                         ))),
                               ],
                             ),
                             CustomImageView(
                                 color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                 svgPath: ImageConstant.imgArrowright,
                                 height: getSize(24),
                                 width: getSize(24))
                           ]))),
               GestureDetector(
                   onTap: () {
                     onTapRowsettings();
                   },
                   child: Container(
                       margin: getMargin(top: 16),
                       padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
                       decoration: AppDecoration.fill2.copyWith(
                           borderRadius: BorderRadiusStyle.roundedBorder16),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(

                               children: [
                                 CustomImageView(
                                     color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                     svgPath: ImageConstant.imgSettings,
                                     height: getSize(24),
                                     width: getSize(24)),
                                 Padding(
                                     padding: getPadding(left: 8, top: 4),
                                     child: Text("lbl_settings".tr,
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.left,
                                         style: theme.textTheme.bodyLarge!.copyWith(
                                           color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                         ))),
                               ],
                             ),
                             CustomImageView(
                                 color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                 svgPath: ImageConstant.imgArrowright,
                                 height: getSize(24),
                                 width: getSize(24))
                           ]))),
               GestureDetector(
                   onTap: () {
                     onTapRowprivacypolic();
                   },
                   child: Container(
                       margin: getMargin(top: 16),
                       padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
                       decoration: AppDecoration.fill2.copyWith(
                           borderRadius: BorderRadiusStyle.roundedBorder16),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 CustomImageView(
                                     color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                     svgPath: ImageConstant.imgPrivacyPolicyIcon,
                                     height: getSize(24),
                                     width: getSize(24)),
                                 Padding(
                                     padding: getPadding(left: 8, top: 4),
                                     child: Text("lbl_privacy_policy".tr,
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.left,
                                         style: theme.textTheme.bodyLarge!.copyWith(
                                           color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                         ))),
                               ],
                             ),
                             CustomImageView(
                                 color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                 svgPath: ImageConstant.imgArrowright,
                                 height: getSize(24),
                                 width: getSize(24))
                           ]))),
               GestureDetector(
                   onTap: () {
                     ThemeHelper().changeTheme();
                     setSafeAreaColor();
                   },
                   child: Container(
                       margin: getMargin(top: 16),
                       padding: getPadding(left: 16, top: 3 , right: 16, bottom: 3),
                       decoration: AppDecoration.fill2.copyWith(
                           borderRadius: BorderRadiusStyle.roundedBorder16),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 CustomImageView(
                                     color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                     svgPath: ImageConstant.imgThemeModeIcon,
                                     height: getSize(24),
                                     width: getSize(24)),
                                 Padding(
                                     padding: getPadding(left: 8, top: 4),
                                     child: Text("Theme mode",
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.left,
                                         style: theme.textTheme.bodyLarge!.copyWith(
                                           color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                         ))),
                               ],
                             ),
                             CustomImageView(
                                 svgPath:  PrefUtils().getThemeData() == "primary"?ImageConstant.imgSwitchinActiveIcon:
                                 ImageConstant.imgSwitchActiveIcon,
                             )
                           ]))),
               GestureDetector(
                   onTap: () {
                     showDialog(
                       barrierDismissible: false,
                       context: context,
                       builder: (context) {
                         return AlertDialog(
                           insetPadding: EdgeInsets.all(16),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                           contentPadding:
                           EdgeInsets.zero,
                           content: LogOutPopupScreen(),
                         );
                       },
                     );

                   },
                   child: Container(
                       margin: getMargin(top: 16, bottom: 5),
                       padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
                       decoration: AppDecoration.fill2.copyWith(
                           borderRadius: BorderRadiusStyle.roundedBorder16),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 CustomImageView(
                                     color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                     svgPath: ImageConstant.imgArrowrightBlack900,
                                     height: getSize(24),
                                     width: getSize(24)),
                                 Padding(
                                     padding: getPadding(left: 8, top: 4),
                                     child: Text("lbl_log_out".tr,
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.left,
                                         style: theme.textTheme.bodyLarge!.copyWith(
                                           color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                         ))),
                               ],
                             ),
                             CustomImageView(
                                 svgPath: ImageConstant.imgArrowright,
                                 color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                                 height: getSize(24),
                                 width: getSize(24))
                           ])))
             ],
           ),
         )
        ]);
  }

  onTapRowuser() {
    Get.toNamed(
      AppRoutes.myProfileScreen,
    );
  }

  onTapRowfavorite() {
    Get.toNamed(
      AppRoutes.myWishlistScreen,
    );
  }

  onTapRowsettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  onTapRowprivacypolic() {
    Get.toNamed(
      AppRoutes.privacyPolicyScreen,
    );
  }

  onTapRowarrowright() {




    Get.toNamed(
      AppRoutes.logOutPopupScreen,
    );
  }
}
