import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';

import 'controller/privacy_policy_controller.dart';


class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
 PrivacyPolicyController controller = Get.put(PrivacyPolicyController());
 @override
 void initState() {
 setSafeAreaColor();
  super.initState();
 }
 @override
 Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor:appTheme.bgColor,
      appBar: CustomAppBar(
          height: getVerticalSize(81),
          leadingWidth: 44,
          leading: AppbarImage(
              height: getSize(24),
              width: getSize(24),
              svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,
              margin: getMargin(left: 20, top: 29, bottom: 28),
              onTap: () {
               onTapArrowleft19();
              }),
          centerTitle: true,
          title: AppbarTitle(text: "lbl_privacy_policy".tr),
          styleType: Style.bgFill),
      body: Container(
        color: appTheme.bgColor,
          width: double.maxFinite,
          padding: getPadding(left: 20, top: 17, right: 20, bottom: 17),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Text("msg_types_of_data_we".tr,
                   overflow: TextOverflow.ellipsis,
                   textAlign: TextAlign.left,
                   style: theme.textTheme.titleLarge),
               Container(
                   width: getHorizontalSize(386),
                   margin: getMargin(top: 6),
                   child: Text("msg_torem_ipsum_dolor".tr,
                       maxLines: 4,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.bodyLarge!.copyWith(
                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                       ))),
               Padding(
                   padding: getPadding(top: 23),
                   child: Text("msg_use_of_your_personal".tr,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.titleLarge!.copyWith(
                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                       ))),
               Container(
                   width: getHorizontalSize(386),
                   margin: getMargin(top: 6),
                   child: Text("msg_torem_ipsum_dolor".tr,
                       maxLines: 4,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.bodyLarge!.copyWith(
                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                       ))),
               Padding(
                   padding: getPadding(top: 23),
                   child: Text("msg_disclosure_of_your".tr,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.titleLarge!.copyWith(
                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                       ))),
               Container(
                   width: getHorizontalSize(388),
                   margin: getMargin(top: 6, bottom: 5),
                   child: Text("msg_lorem_ipsum_dolor3".tr,
                       maxLines: 10,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: theme.textTheme.bodyLarge!.copyWith(
                         color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white,
                       )))
              ])));
 }

 onTapArrowleft19() {
  Get.back();
 }
}









