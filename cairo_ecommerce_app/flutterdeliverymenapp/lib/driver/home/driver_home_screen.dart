// ignore: file_names
import 'package:flutter/material.dart';
import 'package:shopping/driver/home/tab/tab_driver_home.dart';
import 'package:shopping/driver/home/tab/tab_driver_order_history.dart';
import 'package:shopping/driver/home/tab/tab_driver_profile.dart';

import '../../constants/constant.dart';
import '../../constants/custom_animated_bottom_bar.dart';
import '../../constants/size_config.dart';
import '../../constants/color_data.dart';


// ignore: must_be_immutable
class DriverHomeScreen extends StatefulWidget {
  int selectedTab;

  DriverHomeScreen({Key? key, this.selectedTab = 0}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DriverHomeScreen();
  }
}

class _DriverHomeScreen extends State<DriverHomeScreen> {
  int currentPos = 0;
  Color activeColor = primaryColor;
  Color inactiveColor = Colors.transparent;

  List<Widget> listImages = [const TabDriverHome(), const TabDriverOrderHistory(), const TabDriverProfile()];

  @override
  void initState() {
    currentPos = widget.selectedTab;
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double screenHeight = SizeConfig.safeBlockVertical! * 100;
    double bottomHeight = Constant.getPercentSize(screenHeight, 8.5);
    double iconHeight = Constant.getPercentSize(bottomHeight, 28);

    return WillPopScope(
        child: Scaffold(
          body: listImages[currentPos],
          bottomNavigationBar: CustomAnimatedBottomBar(
            containerHeight: bottomHeight,
            backgroundColor: backgroundColor,
            selectedIndex: currentPos,
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            onItemSelected: (index) => setState(() => currentPos = index),
            totalItemCount: 3,
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                title: 'Home',
                activeColor: activeColor,
                inactiveColor: inactiveColor,
                textAlign: TextAlign.center,
                iconSize: iconHeight,
                imageName: "Home.svg",
              ),
              BottomNavyBarItem(
                title: 'Order',
                activeColor: activeColor,
                inactiveColor: inactiveColor,
                textAlign: TextAlign.center,
                iconSize: iconHeight,
                imageName: "Document.svg",
              ),
              BottomNavyBarItem(
                title: 'User',
                activeColor: activeColor,
                inactiveColor: inactiveColor,
                textAlign: TextAlign.center,
                iconSize: iconHeight,
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
