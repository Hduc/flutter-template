// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../base/color_data.dart';
import '../../base/constant.dart';
import '../../base/resizer/fetch_pixels.dart';
import '../../base/widget_utils.dart';
import '../../generated/l10n.dart';
import '../data/data_file.dart';
import '../models/model_intro.dart';
import '../routes/app_routes.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _IntroView();
  }
}

class _IntroView extends State<IntroView> {
  void backClick() {
    Constant.closeApp();
  }

  ValueNotifier selectedPage = ValueNotifier(0);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return WillPopScope(
        child: Scaffold(
          backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
          body: Column(
              children: [
            buildExpand(),
            getVerSpace(FetchPixels.getPixelHeight(90)),
            buildIndicator(),
            getVerSpace(FetchPixels.getPixelHeight(90)),
            buildNextButton(context),
            getVerSpace(FetchPixels.getPixelHeight(70))
          ]),
        ),
        onWillPop: () async {
          backClick();
          return false;
        });
  }

  Expanded buildExpand() {
    return Expanded(
            flex: 1,
            child:buildPageView() ,
          );
  }

  ValueListenableBuilder buildNextButton(BuildContext context) {
    EdgeInsets edgeInsets = EdgeInsets.symmetric(
        horizontal: FetchPixels.getDefaultHorSpace(context));
    return ValueListenableBuilder(
      builder: (context, value, child) {
        return (selectedPage.value != DataFile.introList.length - 1)
            ? getPaddingWidget(
                edgeInsets,
                getButton(context, getAccentColor(context), true,
                    S.of(context).next, Colors.white, () {
                  selectedPage.value = selectedPage.value + 1;
                  _controller.jumpToPage(selectedPage.value);
                }, EdgeInsets.zero))
            : getPaddingWidget(
                edgeInsets,
                getButton(context, getAccentColor(context), true,
                    S.of(context).login, Colors.white, () {
                  Constant.sendToNext(context, Routes.loginRoute,
                      arguments: {Constant.fromLogin: false});
                }, EdgeInsets.zero),
              );
      },
      valueListenable: selectedPage,
    );
  }

  Widget buildIndicator() {
    return ValueListenableBuilder(
        valueListenable: selectedPage,
        builder: (context, value, child) {
          return SizedBox(
            height: FetchPixels.getPixelHeight(40),
            child: DotsIndicator(
              controller: _controller,
              selectedColor: getAccentColor(context),
              itemCount: DataFile.introList.length,
              selectedPos: selectedPage.value,
              color: indicatorColor,
              onPageSelected: (int page) {},
            ),
          );
        },
      );
  }

  TextStyle getFontStyleWithColor({bool isSubTitle = false}) {
    return TextStyle(
        fontFamily: Constant.fontsFamily,
        fontSize: 28,
        color: (isSubTitle) ? "#C6C3FF".toColor() : getFontColor(context),
        fontWeight: FontWeight.bold,
        height: 1.46,
        fontStyle: FontStyle.normal);
  }

  getTitle1() {
    return Text.rich(
      TextSpan(
          text: 'Discover, Collect & Sell Awesome',
          style: getFontStyleWithColor(),
          children: <InlineSpan>[
            TextSpan(
              text: ' NFTS',
              style: getFontStyleWithColor(isSubTitle: true),
            )
          ]),
      textScaleFactor: FetchPixels.getTextScale(),
      textAlign: TextAlign.center,
    );
  }

  getTitle2() {
    return Text.rich(
      TextSpan(
          text: 'Make History In a New',
          style: getFontStyleWithColor(),
          children: <InlineSpan>[
            TextSpan(
              text: '\nDigital',
              style: getFontStyleWithColor(isSubTitle: true),
            ),
            TextSpan(
              text: ' World',
              style: getFontStyleWithColor(),
            )
          ]),
      textScaleFactor: FetchPixels.getTextScale(),
      textAlign: TextAlign.center,
    );
  }

  getTitle3() {
    return Text.rich(
      TextSpan(
          text: 'Enjoy Your Live Auction\nWith NFT',
          style: getFontStyleWithColor(),
          children: <InlineSpan>[
            TextSpan(
              text: ' Arts',
              style: getFontStyleWithColor(isSubTitle: true),
            )
          ]),
      textScaleFactor: FetchPixels.getTextScale(),
      textAlign: TextAlign.center,
    );
  }

  PageView buildPageView() {
    return PageView.builder(
      controller: _controller,
      onPageChanged: (value) {
        selectedPage.value = value;
      },
      itemCount: DataFile.introList.length,
      itemBuilder: (context, index) {
        ModelIntro introModel = DataFile.introList[index];
        return Column(
          // alignment: Alignment.topCenter,
          children: [
            Expanded(
              flex: 1,
              child:
              Align(
                alignment: Alignment.bottomCenter,
                child:
                getAssetImage(
                    context,
                    introModel.image ?? "",
                    FetchPixels.getPixelHeight(800),
                    FetchPixels.getPixelHeight(800),
                    boxFit: BoxFit.fill),
              ),
            ),
            getVerSpace(FetchPixels.getPixelHeight(90)),
            getMultilineCustomFont(
                introModel.title ?? "",83, getFontColor(context),
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
                txtHeight: 1.3),
            getVerSpace(FetchPixels.getPixelHeight(40)),
            getPaddingWidget(
                EdgeInsets.symmetric(
                    horizontal: FetchPixels.getDefaultHorSpace(context)),
                getCustomFont(
                    introModel.description ?? "", 42, getFontColor(context), 2,
                    fontWeight: FontWeight.w400, textAlign: TextAlign.center))
          ],
        );
      },
    );
  }
}

class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    super.key,
    this.controller,
    this.itemCount,
    this.selectedPos,
    this.onPageSelected,
    this.selectedColor = Colors.black,
    this.color = Colors.white,
  }) : super(listenable: controller!);

  /// The PageController that this DotsIndicator is representing.
  final PageController? controller;

  /// The number of items managed by the PageController
  final int? itemCount;
  final int? selectedPos;

  /// Called when a dot is tapped
  final ValueChanged<int>? onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;
  final Color selectedColor;

  Widget _buildDot(int index) {
    return SizedBox(
      width: FetchPixels.getPixelHeight(60),
      child: Center(
        child: Material(
          color: (selectedPos == index) ? selectedColor : color,
          type: MaterialType.circle,
          child: SizedBox(
            width: FetchPixels.getPixelHeight(20),
            height: FetchPixels.getPixelHeight(20),
            child: InkWell(
              onTap: () => onPageSelected!(index),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount!, _buildDot),
    );
  }
}
