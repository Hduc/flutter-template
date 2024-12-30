import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/data_file.dart';
import '../../util/device_util.dart';
import '../../util/get/route_key.dart';
import '../../util/widget_utils.dart';
import '../model/model_popular_show.dart';

class PopularShowsScreen extends StatelessWidget {
  final List<ModelPopularShows> popularShowList = DataFile.getAllPopularShows();

  PopularShowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    // ignore: deprecated_member_use
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
              buildPopularShowList(context)
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildPopularShowList(BuildContext context) {
    var height = 145.h;
    var margin = 14.w;
    var crossAxisCount = DeviceUtil.isTablet ? 6 : 3;
    var screenWidth =
        ((context.width - (margin * crossAxisCount)) / crossAxisCount) - margin;


    return Expanded(
        child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            itemCount: popularShowList.length,
            itemBuilder: (context, index) {
              ModelPopularShows popularShows = popularShowList[index];
              return GestureDetector(
                onTap: () {
                  Constant.sendToNext(context, videoDetailScreenRoute);
                },
                child: Column(
                  children: [
                    Expanded(
                      child: getCircularImage(context, double.infinity,
                          double.infinity, 12, popularShows.img,
                          boxFit: BoxFit.fill),
                    ),
                    7.h.verticalSpace,
                    getCustomFont(
                        popularShows.title, 16, getFontColor(context), 1,
                        fontWeight: FontWeight.w400)
                  ],
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: margin,
                mainAxisSpacing: margin,
                childAspectRatio: screenWidth / height)));
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
        getCustomFont("Popular Shows For Free", 22, Colors.white, 1,
            fontWeight: FontWeight.w700),
        getHorSpace(6.h),
        getSvgImage(context, "img.svg", 18)
      ],
    ).paddingSymmetric(horizontal: 20.h);
  }
}
