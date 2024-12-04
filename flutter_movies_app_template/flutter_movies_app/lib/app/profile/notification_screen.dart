// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/fetch_pixels.dart';
import '../../util/widget_utils.dart';

class NotificationScreen extends StatelessWidget {
  final List<String> notifications = [
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    RxBool isVisible = false.obs;
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
                  getCustomFont("Notifications", 22, Colors.white, 1,
                      fontWeight: FontWeight.w700),
                ],
              ).paddingSymmetric(horizontal: 20.h),
              30.h.verticalSpace,
              Expanded(
                  child: ObxValue(
                      (p0) => (isVisible.value)
                          ? buildNotificationList(horSpace)
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                getNoDataWidget(
                                    context,
                                    'no_notification_img.png',
                                    'No Notification Yet!',
                                    'We’ll notify you when something arrives.',
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

  ListView buildNotificationList(double horSpace) {
    return ListView.builder(
      itemCount: notifications.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          // height: 106.h,
          margin: EdgeInsets.symmetric(
              horizontal: FetchPixels.getDefaultHorSpaceFigma(context),
              vertical: 10.h),
          decoration: getButtonDecoration(
            getCardColor(context),
            withCorners: true,
            corner: 12.h,
          ),
          padding: EdgeInsets.all(horSpace),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getAssetImage(context, 'icon.png', 30.h, 30.h),
              getHorSpace(20.h),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getMultilineCustomFont(
                        'Long holiday? let’s watch and relax with fun \nmovies on VTV',
                        14,
                        getFontColor(context),
                        fontWeight: FontWeight.w400,
                        txtHeight: 1.5.h),
                    6.h.verticalSpace,
                    getCustomFont('10 minutes ago', 12, getFontHint(context), 1,
                        fontWeight: FontWeight.w400)
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
