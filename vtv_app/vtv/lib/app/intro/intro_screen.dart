// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/data_file.dart';
import '../../util/dots_indicator.dart';
import '../../util/fetch_pixels.dart';
import '../../util/get/route_key.dart';
import '../../util/get/storage.dart';
import '../../util/widget_utils.dart';
import '../model/model_intro.dart';

class IntroScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntroScreen();
  }
}

class _IntroScreen extends State<IntroScreen> {
  backClick(BuildContext context) {
    Constant.backToFinish(context);
  }

  final List<ModelIntro> introList = DataFile.getAllIntroList();
  RxInt selectedPos = 0.obs;

  @override
  Widget build(BuildContext context) {
    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    PageController pageController = PageController(initialPage: 0);

    Constant.setupSize(context);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
          body: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: PageView.builder(
                        onPageChanged: (value) {
                          selectedPos.value = value;
                        },
                        controller: pageController,
                        itemBuilder: (context, index) {
                          ModelIntro modelIntro = introList[index];
                          return Stack(
                            children: [
                              SizedBox(
                                height: double.infinity,
                                width: double.infinity,
                                child: getAssetImage(context, modelIntro.image,
                                    double.infinity, 384.h,
                                    boxFit: BoxFit.cover),
                              ),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      getMultilineCustomFont(
                                              modelIntro.description,
                                              26,
                                              Colors.white,
                                              fontWeight: FontWeight.w700)
                                          .paddingSymmetric(
                                              horizontal: horSpace),
                                      200.h.verticalSpace,
                                    ],
                                  ))
                            ],
                          );
                        },
                        itemCount: introList.length,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  50.h.verticalSpace,
                  Expanded(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              Constant.sendToNext(context, loginRoute);
                            },
                            child: getCustomFont(
                                    'Skip', 18, getFontColor(context), 1,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.right)
                                .paddingSymmetric(horizontal: horSpace),
                          ))),
                  ObxValue((p0) {
                    return DotsIndicator(
                      size: 10,
                      controller: pageController,
                      color: indicatorColor,
                      selectedPos: selectedPos.value,
                      selectedColor: getAccentColor(context),
                      onPageSelected: (value) {},
                      itemCount: introList.length,
                    );
                  }, selectedPos),
                  30.h.verticalSpace,
                  ObxValue(
                      (p0) => getButtonFigma(
                            context,
                            getAccentColor(context),
                            true,
                            (selectedPos.value == introList.length - 1)
                                ? "Get started"
                                : "Next",
                            getFontColor(context),
                            () {
                              if (selectedPos.value == introList.length - 1) {
                                changeIntroVal(false);
                                Constant.sendToNext(context, loginRoute);
                              } else {
                                pageController
                                    .jumpToPage(selectedPos.value + 1);
                              }
                            },
                            EdgeInsets.symmetric(horizontal: horSpace),
                          ),
                      selectedPos),
                  40.h.verticalSpace,
                ],
              )
            ],
          ),
        ),
        onWillPop: () async {
          backClick(context);
          return false;
        });
  }
}
