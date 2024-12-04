import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vtv/util/fetch_pixels.dart';

import '../../../util/color_data.dart';
import '../../../util/constant.dart';
import '../../../util/get/bottom_selection_controller.dart';
import '../../../util/get/route_key.dart';
import '../../../util/get/storage.dart';
import '../../../util/widget_utils.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);

    return Column(
      children: [
        getVerSpace(20.h),
        Row(
          children: [
            GetBuilder<BottomItemSelectionController>(builder: (controller) {
              return GestureDetector(
                onTap: () {
                  controller.bottomBarSelectedItem.value=0;
                  controller.update();
                },
                child: getSvgImage(context, "arrow_back.svg", 24),
              );
            },init: BottomItemSelectionController(),),
            getHorSpace(20.h),
            getCustomFont("Profile", 22, Colors.white, 1,
                fontWeight: FontWeight.w700),
          ],
        ).paddingSymmetric(horizontal: 20.h),
        30.h.verticalSpace,
        Expanded(
            child: Column(
          children: [
            buildProfileWidget(context, horSpace),
            26.h.verticalSpace,
            getProfileRowView(context, () {
              Constant.sendToNext(context, myProfileScreenRoute);
            }, 'My Profile', 'name.svg'),
            getProfileRowView(context, () {
              Constant.sendToNext(context, notificationScreenRoute);
            }, 'Notification', 'notification.svg'),
            getProfileRowView(context, () {
              Constant.sendToNext(context, historyScreenRoute);
            }, 'History', 'history.svg'),
            getProfileRowView(context, () {
              Constant.sendToNext(context, appSettingsScreenRoute);
            }, 'App Setting', 'setting.svg'),
          ],
        )),
        buildLogoutButton(context, horSpace)
      ],
    );
  }

  Widget buildLogoutButton(BuildContext context, double horSpace) {
    return getButtonFigma(
      context,
      Colors.transparent,
      true,
      'Log Out',
      getFontColor(context),
      () {
        final controller = Get.find<BottomItemSelectionController>();
        controller.bottomBarSelectedItem.value = 0;
        setLoggedIn(false);
        Constant.sendToNext(context, loginRoute);
      },
      EdgeInsets.symmetric(horizontal: horSpace, vertical: 40.h),
      isBorder: true,
      borderColor: getAccentColor(context),
    );
  }

  Widget buildProfileWidget(BuildContext context, double horSpace) {
    return Row(
      children: [
        getCircleImage(context, 'profile1.png', 90.h),
        20.h.horizontalSpace,
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getCustomFont('Robert Fox', 16, getFontColor(context), 1,
                fontWeight: FontWeight.w400),
            5.h.verticalSpace,
            getCustomFont('robertfox@gmail.com', 14, getFontHint(context), 1,
                fontWeight: FontWeight.w400)
          ],
        ))
      ],
    ).paddingSymmetric(horizontal: horSpace);
  }
}
