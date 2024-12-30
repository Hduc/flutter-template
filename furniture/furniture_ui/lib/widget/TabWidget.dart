import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_ui/tabWidget/AllDataWidget.dart';
import 'package:furniture_ui/tabWidget/HomeWidget.dart';
import 'package:furniture_ui/tabWidget/ProfileWidget.dart';
import 'package:furniture_ui/tabWidget/SearchWidget.dart';

import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
import 'package:furniture_ui/widget/AddToCartPage.dart';

import '../customWidget/MotionTabBarView.dart';
import '../customWidget/MotionTabController.dart';
import '../customWidget/motiontabbar.dart';

class TabWidget extends StatefulWidget {
  @override
  _TabWidget createState() {
    return _TabWidget();
  }
}

class _TabWidget extends State<TabWidget> with TickerProviderStateMixin {
  MotionTabBar? motionTabBar;
  MotionTabController? _tabController;
  int _selectedIndex = 0;
  int sliderPosition = 0;
  List<String> s = ["Home", "Data", "Cart", "Search", "Profile"];

  bool isAppbarVisible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = new MotionTabController(
        initialIndex: _selectedIndex, length: s.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    motionTabBar = new MotionTabBar(
      labels: s,
      initialSelectedTab: s[_selectedIndex],
      tabIconColor: ConstantData.primaryColor,
      tabSelectedColor: ConstantData.primaryColor,
      selectedIndex: _selectedIndex,
      onTabItemSelected: (int value) {
        print(value);
        setState(() {
          _tabController!.index = value;
          _selectedIndex = value;
        });
      },
      icons: [
        Icons.home_outlined,
        CupertinoIcons.cube_box,
        Icons.shopping_cart,
        Icons.search,
        Icons.account_circle
      ],
      textStyle: TextStyle(
        color: Colors.transparent,
        fontSize: 0,
      ),
    );

    return WillPopScope(
        child: Scaffold(
          // backgroundColor: Colors.red,
          backgroundColor: ConstantData.bgColor,
          bottomNavigationBar: motionTabBar,
          body: SafeArea(
            child: MotionTabBarView(
              controller: _tabController!,
              children: <Widget>[
                Container(
                  // color: Colors.red,
                  child: HomeWidget(),
                ),
                Container(
                  // color: Colors.black,
                  child: AllDataWidget(),
                ),
                Container(
                  // color: Colors.blue,
                  child: AddToCartPage(),
                ),
                Container(
                  // color: Colors.brown,
                  child: SearchWidget(),
                ),
                Container(
                  color: Colors.brown,

                  //
                  child: ProfileWidget(),
                  // child: ProfileWidget(widget.onChanged),
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  //
  Future<bool> _requestPop() {
    if (_selectedIndex != 0) {
      _tabController!.index = 0;
      _selectedIndex = 0;
      setState(() {});
    } else {
      Future.delayed(const Duration(milliseconds: 200), () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      });
    }

    return new Future.value(false);
  }
}
