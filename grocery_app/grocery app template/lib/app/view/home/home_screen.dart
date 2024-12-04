// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:grocery/app/view/home/tabs/tab_cart.dart';
import 'package:grocery/app/view/home/tabs/tab_home.dart';
import 'package:grocery/app/view/home/tabs/tab_profile.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';

import '../../../base/Constant.dart';
import '../../../base/color_data.dart';
import '../../../base/custom_animated_bottom_bar.dart';
import '../../../base/widget_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  int currentPos = 0;

  List<Widget> tabList = [
    const TabHome(),
    const TabCart(),
    const TabProfile()
  ];

  @override
  void initState() {
    Future.delayed(
      Duration.zero,
      () {
        final arg = ModalRoute.of(context)!.settings.arguments as Map?;
        if (arg != null) {
          setState(() {
            currentPos = arg[Constant.homePos];
          });
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // FetchPixels(context);
    FetchPixels(context, mockUpWidth1: 414, mockUpHeight1: 1007);

    double iconSize = FetchPixels.getPixelHeight(35);
    return WillPopScope(
        child: Scaffold(
          appBar: getInVisibleAppBar(),
          backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
          body: tabList[currentPos],
          bottomNavigationBar: buildBottomBar(context, iconSize),
        ),
        onWillPop: () async {
          Constant.closeApp();
          return false;
        });
  }

  CustomAnimatedBottomBar buildBottomBar(
      BuildContext context, double iconSize) {
    return CustomAnimatedBottomBar(
      containerHeight: FetchPixels.getPixelHeight(90),
      backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
      selectedIndex: currentPos,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      totalItemCount: 3,
      onItemSelected: (index) {
        setState(() => currentPos = index);
      },
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          title: 'Home',
          activeColor: getAccentColor(context),
          inactiveColor: null,
          textAlign: TextAlign.center,
          iconSize: iconSize,
          imageName: "Home.svg",
        ),
        BottomNavyBarItem(
          title: 'Search',
          activeColor: getAccentColor(context),
          inactiveColor: null,
          textAlign: TextAlign.center,
          iconSize: iconSize,
          imageName: "Bag.svg",
        ),
        BottomNavyBarItem(
          title: 'Messages',
          activeColor: getAccentColor(context),
          inactiveColor: null,
          textAlign: TextAlign.center,
          iconSize: iconSize,
          imageName: "User.svg",
        ),
      ],
    );
  }

  showHomeDialog() {
    FetchPixels(context);
    double radius = FetchPixels.getPixelHeight(40);
    EdgeInsets edgeInsets = EdgeInsets.symmetric(
        horizontal: FetchPixels.getPixelWidth(20),
        vertical: FetchPixels.getPixelHeight(10));

    List<BoxShadow> shadow = [
      BoxShadow(
          color: getCurrentTheme(context).shadowColor,
          offset: const Offset(-5, 6),
          blurRadius: 40)
    ];

    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                topRight: Radius.circular(radius))),
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return SizedBox(
                height: FetchPixels.getPixelHeight(327),
                child: Column(
                  children: [
                    getVerSpace(FetchPixels.getPixelHeight(10)),
                    Center(child: getDialogDividerTop(context)),
                    Expanded(
                      flex: 1,
                      child: ListView(
                        children: [
                          getVerSpace(FetchPixels.getPixelHeight(10)),
                          getButton(
                            context,
                            getCurrentTheme(context).dialogBackgroundColor,
                            true,
                            "Single",
                            getFontColor(context),
                            () {
                              Navigator.of(context).pop();
                              // Constant.sendToNext(context,Routes.collectibleScreenRoute);
                            },
                            edgeInsets,
                            isBorder: false,
                            shadow: shadow,
                            borderColor: getAccentColor(context),
                          ),
                          getButton(
                            context,
                            getCurrentTheme(context).dialogBackgroundColor,
                            true,
                            "Multiple",
                            getFontColor(context),
                            () {
                              Navigator.of(context).pop();
                              // Constant.sendToNext(context,Routes.collectibleScreenRoute);
                            },
                            edgeInsets,
                            isBorder: false,
                            shadow: shadow,
                            borderColor: getAccentColor(context),
                          ),
                          getButton(
                            context,
                            Colors.transparent,
                            true,
                            "Cancel",
                            getFontColor(context),
                            () {
                              Constant.backToPrev(context);
                            },
                            edgeInsets,
                            isBorder: true,
                            shadow: shadow,
                            borderColor: getFontColor(context),
                          ),
                          getVerSpace(FetchPixels.getPixelHeight(20)),
                        ],
                      ),
                    ),
                    Center(
                      child: getDialogDividerBottom(context),
                    ),
                    getVerSpace(FetchPixels.getPixelHeight(15))
                  ],
                ),
              );
            },
          );
        });
  }
}
