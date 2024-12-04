// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vtv/app/Home/tab/tab_download.dart';
import 'package:vtv/app/Home/tab/tab_home.dart';
import 'package:vtv/app/Home/tab/tab_profile.dart';
import 'package:vtv/app/Home/tab/tab_save.dart';
import 'package:vtv/app/Home/tab/tab_search.dart';
import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/data_file.dart';
import '../../util/get/bottom_selection_controller.dart';
import '../../util/get/home_controller.dart';
import '../../util/widget_utils.dart';
import '../model/model_bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  var controller = Get.find<HomeController>();

  @override
  void initState() {
    super.initState();
  }

  List<Widget> bottomViewList = [
    TabHome(),
    TabSearch(),
    TabSave(),
    TabDownload(),
    TabProfile(),
  ];
  List<ModelBottomNav> allBottomNavList = DataFile.getAllBottomNavList();

  void backClick() {
    Constant.closeApp();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomItemSelectionController());
    Constant.setupSize(context);
    double bottomNavHeight = 66.h;
    return WillPopScope(
        child: Scaffold(
          backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
          resizeToAvoidBottomInset: false,
          bottomNavigationBar:
              buildBottomNavigationBar(bottomNavHeight, context, controller),
          body: SafeArea(
            child: Obx(
                () => bottomViewList[controller.bottomBarSelectedItem.value]),
          ),
        ),
        onWillPop: () async {
          if (controller.bottomBarSelectedItem.value != 0) {
            print('index==>${controller.bottomBarSelectedItem.value}');
            controller.changePos(0);
            controller.update();
          } else {
            print('Close==>${controller.bottomBarSelectedItem.value}');
            backClick();
          }
          return false;
        });
  }

  Container buildBottomNavigationBar(double bottomNavHeight,
      BuildContext context, BottomItemSelectionController controller) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      width: double.infinity,
      height: bottomNavHeight,
      decoration: BoxDecoration(
          color: getCardColor(context),
          borderRadius: BorderRadius.vertical(top: Radius.circular(22.h))),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(allBottomNavList.length, (index) {
            ModelBottomNav modelBottomNav = allBottomNavList[index];
            return GestureDetector(
              onTap: () {
                controller.changePos(index);
              },
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getSvgImageWithSize(
                        context,
                        controller.bottomBarSelectedItem == index
                            ? modelBottomNav.activeIcon
                            : modelBottomNav.icon,
                        24.h,
                        24.h),
                    getVerSpace(4.h),
                    controller.bottomBarSelectedItem == index
                        ? getCustomFont(modelBottomNav.title, 12,
                            getAccentColor(context), 1,
                            fontWeight: FontWeight.w400)
                        : getVerSpace(8.h)
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
