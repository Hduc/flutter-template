// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/fetch_pixels.dart';
import '../../util/get/filters_controller.dart';
import '../../util/widget_utils.dart';

class AppSettingsScreen extends StatefulWidget {
  const AppSettingsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AppSettingsScreen();
  }
}

class _AppSettingsScreen extends State<AppSettingsScreen> {
  var controller = Get.put(FiltersController());

  RxInt selectedQuality = 0.obs;
  List videoQualityList = [
    'Low(144p)',
    'Medium(320p)',
    'High(720p)',
    'Always Ask'
  ];

  @override
  Widget build(BuildContext context) {
    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    Constant.setupSize(context);
    return WillPopScope(
      onWillPop: () async {
        Constant.backToPrev(context);
        return false;
      },
      child: Scaffold(
        backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getVerSpace(20.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Constant.backToPrev(context);
                    },
                    child: getSvgImage(context, "arrow_back.svg", 24),
                  ),
                  getHorSpace(20.h),
                  getCustomFont("App Settings", 22, Colors.white, 1,
                      fontWeight: FontWeight.w700),
                ],
              ),
              30.h.verticalSpace,
              getCustomFont('Downloads', 17, getFontColor(context), 1,
                  fontWeight: FontWeight.w600),
              12.h.verticalSpace,
              Row(
                children: [
                  Expanded(
                      child: getCustomFont(
                          'Download on Wi-Fi only', 16, indicatorColor, 1,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 31.h,
                    child: ObxValue(
                        (p0) => CupertinoSwitch(
                              value: controller.isDownloadOn.value,
                              onChanged: (value) {
                                controller.isDownloadOn.value = value;
                              },
                              activeColor: getAccentColor(context),
                            ),
                        controller.isDownloadOn),
                  )
                ],
              ),
              20.h.verticalSpace,
              getDivider(
                  setColor: getFontHint(context), indent: 0.h, endIndent: 0.h),
              20.h.verticalSpace,
              Row(
                children: [
                  getCustomFont('Kids Safe Mode', 17, getFontColor(context), 1,
                      fontWeight: FontWeight.w600),
                  8.w.horizontalSpace,
                  getSvgImage(context, 'info.svg', 20),
                ],
              ),
              15.h.verticalSpace,
              Row(
                children: [
                  Expanded(
                      child: getCustomFont(
                          'Restrict videos in appropriate for your kids',
                          16,
                          indicatorColor,
                          1,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                      height: 10.h,
                      child: ObxValue(
                          (p0) => CupertinoSwitch(
                                value: controller.isKidsSafeNModeOn.value,
                                onChanged: (value) {
                                  controller.isKidsSafeNModeOn.value = value;
                                },
                                activeColor: getAccentColor(context),
                              ),
                          controller.isKidsSafeNModeOn)),
                ],
              ),
              31.h.verticalSpace,
              getDivider(
                  setColor: getFontHint(context), indent: 0.h, endIndent: 0.h),
              18.h.verticalSpace,
              getRowContainer(context, 'Download Video Quality', onTap: () {
                getDefaultDialog(
                    context,
                    () {
                      Constant.backToPrev(context);
                    },
                    videoQualityList,
                    selectedQuality,
                    functionCancel: () {
                      Constant.backToPrev(context);
                    },
                    dialogHeight: 450,
                    title: 'Download Video Quality',
                    isTitle: true);
              }, isQualityTab: true),
              getRowContainer(context, 'FAQs',onTap: (){
                debugPrint('YouClick on FAQs');
              }),
              getRowContainer(context, 'Privacy Policy',onTap: (){
                debugPrint('YouClick on Privacy Policy');
              }),
              getRowContainer(context, 'Terms of use',onTap: (){
                debugPrint('YouClick on Terms of Use');
              }),
              getRowContainer(context, 'Help',onTap: (){
                debugPrint('YouClick on Help');
              }),
            ],
          ).paddingSymmetric(horizontal: horSpace),
        ),
      ),
    );
  }
}

Widget getRowContainer(BuildContext context, String title,
    {bool videoQuality = false, Function? onTap, bool isQualityTab = false}) {
  return GestureDetector(
    onTap: () {
      onTap!();
    },
    child: Container(
      width: double.infinity,
      height: (isQualityTab) ? 80.h : 56.h,
      decoration: BoxDecoration(
          color: getCardColor(context),
          borderRadius: BorderRadius.all(Radius.circular(12.h))),
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: (isQualityTab)
          ? Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getCustomFont(title, 16, getFontColor(context), 1,
                        fontWeight: FontWeight.w400),
                    6.h.verticalSpace,
                    getCustomFont('High[720p]', 12, getFontHint(context), 1,
                        fontWeight: FontWeight.w400)
                  ],
                )),
                getSvgImage(context, 'arrow_right.svg', 16)
              ],
            )
          : Row(
              children: [
                Expanded(
                    child: getCustomFont(title, 16, getFontColor(context), 1,
                        fontWeight: FontWeight.w400)),
                getSvgImage(context, 'arrow_right.svg', 16)
              ],
            ),
    ),
  );
}
