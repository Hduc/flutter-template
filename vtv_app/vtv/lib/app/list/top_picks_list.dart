// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vtv/util/get/route_key.dart';

import '../../util/constant.dart';
import '../../util/device_util.dart';
import '../../util/widget_utils.dart';

class TopPicksScreen extends StatelessWidget {
  const TopPicksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    List<String> picList = [
      'pic1.png',
      'pic2.png',
      'pic3.png',
      'pic4.png',
      'pic5.png',
      'pic6.png',
      'pic7.png',
      'pic8.png',
      'pic9.png',
      'pic10.png'
    ];

    return WillPopScope(
      onWillPop: () async {
        Constant.backToPrev(context);
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              getVerSpace(20.h),
              buildAppBar(context),
              getVerSpace(30.h),
              buildTopPicksList(context, picList),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildTopPicksList(BuildContext context, List<String> picList) {
    var height = 124.h;
    var margin = 20.w;
    var crossAxisCount = DeviceUtil.isTablet ? 4 : 2;
    var screenWidth =
        ((context.width - (margin * crossAxisCount)) / crossAxisCount) - margin;

    return Expanded(
      child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          itemCount: picList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Constant.sendToNext(context, videoDetailScreenRoute);
              },
              child: getCircularImage(context, double.infinity, double.infinity,
                  12.h, picList[index],
                  boxFit: BoxFit.fill),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: margin,
              mainAxisSpacing: margin,
              childAspectRatio: screenWidth / height)),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Constant.backToPrev(context);
          },
          child: getSvgImage(context, "arrow_back.svg", 24),
        ),
        getHorSpace(20.h),
        getCustomFont("Top Picks", 22, Colors.white, 1,
            fontWeight: FontWeight.w700),
        getHorSpace(6.h),
        getSvgImage(context, "img.svg", 18)
      ],
    ).paddingSymmetric(horizontal: 20.h);
  }
}
