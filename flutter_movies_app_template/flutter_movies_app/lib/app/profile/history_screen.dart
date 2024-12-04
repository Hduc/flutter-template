// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vtv/util/get/route_key.dart';
import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/data_file.dart';
import '../../util/fetch_pixels.dart';
import '../../util/widget_utils.dart';
import '../model/model_download.dart';

class HistoryScreen extends StatelessWidget {
  final List<String> history = [
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    RxBool isVisible = false.obs;
    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    Constant.setupSize(context);
    List<ModelDownload> downloadList = DataFile.getAllDownloadList();

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
                  getCustomFont("History", 22, Colors.white, 1,
                      fontWeight: FontWeight.w700),
                ],
              ).paddingSymmetric(horizontal: 20.h),
              30.h.verticalSpace,
              Expanded(
                  child: ObxValue(
                      (p0) => (isVisible.value)
                          ? buildHistoryList(downloadList, horSpace)
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                getNoDataWidget(
                                    context,
                                    'no_history_img.png',
                                    'No History Yet!',
                                    'Lorem ipsum dolor sit amet, consecrated',
                                    isVisible),
                              ],
                            ),
                      isVisible))
            ],
          ),
        ),
      ),
    );
  }

  ListView buildHistoryList(List<ModelDownload> downloadList, double horSpace) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        ModelDownload list = downloadList[index];
        return GestureDetector(
          onTap: () {
            Constant.sendToNext(context, videoDetailScreenRoute);
          },
          child: Container(
            height: 134.h,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: horSpace, vertical: 10.h),
            decoration: getButtonDecoration(getCardColor(context),
                withCorners: true, corner: 12.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getCircularImage(context, 118.h, double.infinity, 12, list.img,
                        boxFit: BoxFit.cover)
                    .paddingAll(8.h),
                4.h.horizontalSpace,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getCustomFont(list.title, 16, getFontColor(context), 1,
                        fontWeight: FontWeight.w600),
                    20.h.horizontalSpace,
                    getCustomFont(list.time, 14, getFontHint(context), 1,
                        fontWeight: FontWeight.w400),
                  ],
                ).marginSymmetric(vertical: 15.h)),
                InkWell(
                    onTap: () {},
                    child: getSvgImage(context, 'Menu.svg', 16).marginAll(12.h))
              ],
            ),
          ),
        );
      },
    );
  }
}
