// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vtv/util/device_util.dart';
import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/data_file.dart';
import '../../util/fetch_pixels.dart';
import '../../util/get/route_key.dart';
import '../../util/get/storage.dart';
import '../../util/widget_utils.dart';
import '../model/model_personalization.dart';

class PersonalizationScreen extends StatefulWidget {
  const PersonalizationScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PersonalizationScreen();
  }
}

class _PersonalizationScreen extends State<PersonalizationScreen> {
  List<ModelPersonalization> personalizationList =
      DataFile.getAllPersonalizationList();

  List<ModelPersonalization> selectedList = [];

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);

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
              20.h.verticalSpace,
              buildAppBar(context),
              30.h.verticalSpace,
              buildPersonalizationlist(context),
              40.h.verticalSpace,
              buildContinueButton(context, horSpace),
              30.h.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              Constant.backToPrev(context);
            },
            child: getSvgImage(context, "arrow_back.svg", 24)),
        getHorSpace(20.h),
        getCustomFont("Personalization", 22, Colors.white, 1,
            fontWeight: FontWeight.w700)
      ],
    ).paddingSymmetric(horizontal: 20.h);
  }

  Widget buildContinueButton(BuildContext context, double horSpace) {
    return getButtonFigma(context, getAccentColor(context), true, "Continue",
        getFontColor(context), () {
      setLoggedIn(true);
      Constant.sendToNext(context, homeScreenRoute);
    }, EdgeInsets.symmetric(horizontal: horSpace));
  }

  Expanded buildPersonalizationlist(BuildContext context) {
    var height = 235.h;
    var margin = 20.w;
    var crossAxisCount = DeviceUtil.isTablet ? 4 : 2;
    var screenWidth =
        ((context.width - (margin * crossAxisCount)) / crossAxisCount) - margin;
    return Expanded(
      flex: 1,
      child: GridView.builder(
        primary: true,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: margin),
        itemBuilder: (context, index) {
          ModelPersonalization list = personalizationList[index];
          return SizedBox(
            width: screenWidth,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedList.contains(list)) {
                          selectedList.remove(list);
                        } else {
                          selectedList.add(list);
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: getDecorationAssetImage(context, list.img,
                              fit: BoxFit.cover),
                          border: (selectedList.contains(list))
                              ? Border.all(
                                  color: getAccentColor(context), width: 2.h)
                              : null,
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.r))),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: (selectedList.contains(list))
                              ? getSvgImage(context, 'check.svg', 20)
                                  .paddingAll(12.h)
                              : null),
                    ),
                  ),
                ),
                12.h.verticalSpace,
                getCustomFont(list.title, 17, getFontColor(context), 1,
                    fontWeight: FontWeight.w600),
                6.h.verticalSpace,
                Row(
                  children: [
                    getSvgImage(context, 'profile_2user.svg', 16),
                    8.h.horizontalSpace,
                    getCustomFont(
                        '${list.like} like this', 12, getFontHint(context), 1,
                        fontWeight: FontWeight.w400)
                  ],
                )
              ],
            ),
          );
        },
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: margin,
            childAspectRatio: screenWidth / height,
            crossAxisSpacing: margin),
      ),
    );
  }
}
