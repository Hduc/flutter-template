// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:grocery/app/view/home/tabs/tab_order_history.dart';
import 'package:grocery/app/view/home/tabs/tab_home.dart';
import 'package:grocery/app/view/home/tabs/tab_profile.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';


import '../../../base/Constant.dart';
import '../../../base/color_data.dart';
import '../../../base/custom_animated_bottom_bar.dart';
import '../../../base/widget_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  int currentPos = 0;

  List<Widget> tabList = [
    const TabHome(),
    const TabOrderHistory(),
    const TabProfile(),

  ];

  @override
  void initState() {
    Future.delayed(
      Duration.zero,
          () {
        final arg = ModalRoute.of(context)!.settings.arguments as Map?;
        if (arg != null) {

          setState(() {
            currentPos=arg[Constant.homePos];
          });
        }
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    double iconSize=FetchPixels.getPixelHeight(55);
    return WillPopScope(
        child: Scaffold(
          appBar: getInVisibleAppBar(),
          backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
          body: tabList[currentPos],
          bottomNavigationBar: CustomAnimatedBottomBar(
              containerHeight: FetchPixels.getPixelHeight(180),
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
                iconSize:iconSize ,
                imageName: "Home.svg",
              ),
              BottomNavyBarItem(
                title: 'Search',
                activeColor: getAccentColor(context),
                inactiveColor: null,
                textAlign: TextAlign.center,
                iconSize: iconSize,
                imageName: "Document.svg",
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
          ),
        ),
        onWillPop: () async {
          Constant.closeApp();
          return false;
        });
  }

}
