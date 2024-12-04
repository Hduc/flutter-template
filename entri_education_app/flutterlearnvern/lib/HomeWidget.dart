import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:flutterlearnvern/AboutWidget.dart';
import 'package:flutterlearnvern/AllCourseWidget.dart';

import 'package:flutterlearnvern/NotificationPage.dart';
import 'package:flutterlearnvern/main_project.dart';
import 'package:flutterlearnvern/utils/BottomNavyBar.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';
import 'package:flutterlearnvern/utils/PrefData.dart';
import 'package:flutterlearnvern/utils/UpgradeDialogBox.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


import 'MyCertificateWidget.dart';
import 'MyDownloadScreen.dart';
import 'SignUpPage.dart';
import 'generated/l10n.dart';
import 'model/CourseModel.dart';
import 'model/IncludeCourseModel.dart';
import 'model/SearchModel.dart';
import 'model/SliderModel.dart';

class HomeWidget extends StatefulWidget {
  final int tabPosition;

  HomeWidget(this.tabPosition);

  @override
  _HomeWidget createState() {
    return _HomeWidget();
  }
}

class _HomeWidget extends State<HomeWidget> {
  int _currentIndex = 0;
  TextEditingController? textEditingController;
  List<SearchModel> searchList = [];
  List<SliderModel> sliderList = [];
  List<CourseModel> list = [];
  List<CourseModel> recommendedList = [];
  List<CourseModel> liveProjectList = [];
  List<CourseModel> mechanicalList = [];
  List<CourseModel> softwareList = [];
  List<CourseModel> animationList = [];
  List<CourseModel> businessList = [];
  List<CourseModel> hardwareList = [];
  List<IncludeCourseModel> settingList = DataFile.getSettingList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getThemeMode();
    ConstantData.setThemePosition();
    _currentIndex = widget.tabPosition;

    searchList = DataFile.getSearchList();
    sliderList = DataFile.getSliderDetail();
    list = DataFile.getFeaturedList();
    recommendedList = DataFile.getRecommendedList();
    softwareList = DataFile.getFeaturedList();
    businessList = DataFile.getRecommendedList();
    animationList = DataFile.getFeaturedList();
    mechanicalList = DataFile.getRecommendedList();
    liveProjectList = DataFile.getFeaturedList();
    hardwareList = DataFile.getRecommendedList();
    textEditingController = new TextEditingController();

    setState(() {});
  }

  getThemeMode() async {
    int i = await PrefData.getThemeMode();

    if (i == 1) {
      isSwitchOn = true;
    } else {
      isSwitchOn = false;
    }
    setState(() {});
    ConstantData.setThemePosition();
  }

  @override
  Widget build(BuildContext context) {
    ConstantData.setThemePosition();
    double bottomBarRadius = ConstantWidget.getScreenPercentSize(context, 5);
    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          body: Container(
            child: Stack(
              children: [
                getTabWidget(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.only(
                        bottom:
                            ConstantWidget.getScreenPercentSize(context, 3)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.all(
                              Radius.circular(bottomBarRadius))),
                      margin: EdgeInsets.symmetric(
                          horizontal:
                              ConstantWidget.getWidthPercentSize(context, 8)),
                      child: BottomNavyBar(
                        selectedIndex: _currentIndex,
                        showElevation: false,
                        itemCornerRadius: bottomBarRadius,
                        curve: Curves.easeIn,
                        backgroundColor: Colors.transparent,
                        onItemSelected: (index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        items: <BottomNavyBarItem>[
                          getBottomTextWidget(
                              S.of(context).home, CupertinoIcons.home),
                          getBottomTextWidget(
                              S.of(context).search, CupertinoIcons.search),
                          getBottomTextWidget(S.of(context).myCourse,
                              CupertinoIcons.play_circle),
                          getBottomTextWidget(
                              S.of(context).referrals, Icons.share_outlined),
                          getBottomTextWidget(
                              S.of(context).profile, CupertinoIcons.person),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  getTabWidget() {
    if (_currentIndex == 0) {
      return mainWidget();
    } else if (_currentIndex == 1) {
      return searchWidget();
    } else if (_currentIndex == 2) {
      return myCourseWidget();
    } else if (_currentIndex == 3) {
      return referralsWidget();
    } else {
      return myProfileWidget();
    }
  }

  Widget searchWidget() {
    changeStatusColor(primaryColor);
    double height = ConstantWidget.getScreenPercentSize(context, 15);
    double radius = ConstantWidget.getPercentSize(height, 18);
    double searchHeight = ConstantWidget.getPercentSize(height, 48);
    double sliderHeight = ConstantWidget.getScreenPercentSize(context, 20);
    double radius1 = ConstantWidget.getPercentSize(sliderHeight, 12);
    double margin = ConstantWidget.getScreenPercentSize(context, 1.7);

    var _crossAxisSpacing = 1;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 2;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;

    var cellHeight = ConstantWidget.getScreenPercentSize(context, 16);

    var _aspectRatio = _width / cellHeight;

    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(radius),
                      bottomRight: Radius.circular(radius))),
              child: Column(
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(),
                  )),
                  Container(
                    margin: EdgeInsets.all(
                        ConstantWidget.getScreenPercentSize(context, 2)),
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            ConstantWidget.getScreenPercentSize(context, 1)),
                    height: searchHeight,
                    decoration: BoxDecoration(
                        color: cellColor,
                        borderRadius: BorderRadius.all(Radius.circular(
                            ConstantWidget.getPercentSize(searchHeight, 18)))),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainProject(),
                                  ));
                            },
                            child: Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextField(
                                  enabled: false,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: ConstantWidget.getPercentSize(
                                          searchHeight, 30)),
                                  controller: textEditingController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize:
                                              ConstantWidget.getPercentSize(
                                                  searchHeight, 30)),
                                      hintText:
                                          S.of(context).searchCoursesWebinars),
                                ),
                              ),
                            ),
                          ),
                          flex: 1,
                        ),
                        Container(
                          height: (searchHeight / 1.3),
                          width: (searchHeight / 1.3),
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  ConstantWidget.getPercentSize(
                                      searchHeight, 18)))),
                          child: Center(
                              child: Icon(Icons.search,
                                  color: Colors.white,
                                  size: ConstantWidget.getPercentSize(
                                      (searchHeight / 1.3), 50))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: (margin)),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(bottom: (margin * 6)),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margin),
                    child: GridView.count(
                      crossAxisCount: _crossAxisCount,
                      shrinkWrap: true,
                      childAspectRatio: _aspectRatio,
                      mainAxisSpacing: margin,
                      crossAxisSpacing: margin,
                      primary: false,
                      children: List.generate(searchList.length, (index) {
                        SearchModel model = searchList[index];

                        return InkWell(
                          child: Container(
                            height: cellHeight,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    ConstantWidget.getPercentSize(
                                        cellHeight, 10))),
                                image: DecorationImage(
                                    image: new ExactAssetImage(
                                        ConstantData.assetImagesPath +
                                            model.image!),
                                    fit: BoxFit.cover)),
                            child: Container(
                              padding: EdgeInsets.all(margin),
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: primaryColor.withOpacity(0.8),
                                borderRadius: BorderRadius.all(Radius.circular(
                                    ConstantWidget.getPercentSize(
                                        cellHeight, 10))),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ConstantWidget.getCustomText(
                                      model.name!,
                                      Colors.white,
                                      3,
                                      TextAlign.center,
                                      FontWeight.w600,
                                      ConstantWidget.getPercentSize(
                                          cellHeight, 11)),
                                  ConstantWidget.getCustomText(
                                      model.detail!,
                                      Colors.orange,
                                      1,
                                      TextAlign.center,
                                      FontWeight.w500,
                                      ConstantWidget.getPercentSize(
                                          cellHeight, 11))
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            passAllCourseData();
                          },
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: (margin)),
                  Container(
                      height: sliderHeight,
                      margin: EdgeInsets.symmetric(horizontal: margin),
                      padding: EdgeInsets.symmetric(horizontal: (margin)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(radius1)),
                          image: DecorationImage(
                            image: new ExactAssetImage(
                              ConstantData.assetImagesPath + "banner.jpg",
                            ),
                            fit: BoxFit.cover,
                          ))),
                  SizedBox(height: (margin)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isSwitchOn = false;

  Widget myProfileWidget() {
    changeStatusColor(bgColor);
    double height = ConstantWidget.getScreenPercentSize(context, 10);
    var firstHeight = ConstantWidget.getScreenPercentSize(context, 6.5);

    double margin = ConstantWidget.getScreenPercentSize(context, 1.7);
    double imgHeight = ConstantWidget.getPercentSize(height, 60);

    var _crossAxisSpacing = 1;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 2;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;

    var cellHeight = ConstantWidget.getScreenPercentSize(context, 7.3);

    var _aspectRatio = _width / cellHeight;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: cellColor,
        centerTitle: false,
        title: ConstantWidget.getTextWidget(
            S.of(context).profile,
            textColor,
            TextAlign.left,
            FontWeight.bold,
            ConstantWidget.getScreenPercentSize(context, 2.5)),
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.left_chevron,
            color: textColor,
          ),
          onPressed: _requestPop,
        ),
        actions: [
          GestureDetector(
            child: Icon(Icons.notifications_none_outlined, color: textColor),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ));
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: margin),
            child: InkWell(
                onTap: () {
                  PrefData.setIsSignIn(false);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ));
                },
                child: Icon(Icons.logout, color: textColor)),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: ListView(
            children: [
              Container(
                height: height,
                width: double.infinity,
                margin: EdgeInsets.all(margin),
                decoration: BoxDecoration(
                    color: cellColor,
                    border: Border.all(color: Colors.grey, width: 0.3)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all((margin / 1.5)),
                      child: Container(
                        height: imgHeight,
                        width: imgHeight,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: ConstantWidget.getTextWidget(
                                "SM",
                                Colors.black,
                                TextAlign.center,
                                FontWeight.bold,
                                ConstantWidget.getPercentSize(imgHeight, 38))),
                      ),
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ConstantWidget.getTextWidget(
                            "Sonia Yadav",
                            textColor,
                            TextAlign.center,
                            FontWeight.bold,
                            ConstantWidget.getPercentSize(height, 20)),
                        ConstantWidget.getTextWidget(
                            "yadav@gmail.com",
                            subTextColor,
                            TextAlign.center,
                            FontWeight.w600,
                            ConstantWidget.getPercentSize(height, 16))
                      ],
                    )),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainProject(),
                            ));
                      },
                      child: Container(
                        height: ConstantWidget.getPercentSize(height, 35),
                        margin: EdgeInsets.symmetric(
                            horizontal: ConstantWidget.getScreenPercentSize(
                                context, 2)),
                        padding: EdgeInsets.symmetric(
                            horizontal: ConstantWidget.getScreenPercentSize(
                                context, 2)),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(
                                ConstantWidget.getScreenPercentSize(
                                    context, 0.8)))),
                        child: Center(
                          child: ConstantWidget.getTextWidget(
                              "Edit",
                              subTextColor,
                              TextAlign.left,
                              FontWeight.bold,
                              ConstantWidget.getPercentSize(
                                  ConstantWidget.getPercentSize(height, 40),
                                  35)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: (margin)),
              Container(
                height: firstHeight,
                margin: EdgeInsets.symmetric(horizontal: (margin)),
                padding: EdgeInsets.symmetric(horizontal: (margin / 1.3)),
                decoration: BoxDecoration(
                  color: cellColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                        ConstantWidget.getPercentSize(firstHeight, 12)),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8.0,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ConstantWidget.getTextWidget(
                          S.of(context).nightMode,
                          textColor,
                          TextAlign.left,
                          FontWeight.w500,
                          ConstantWidget.getPercentSize(firstHeight, 35)),
                    ),
                    Switch(
                      value: isSwitchOn,
                      activeColor: primaryColor,
                      onChanged: (value) {
                        setState(() {
                          isSwitchOn = value;

                          if (value) {
                            PrefData.setThemeMode(1);
                          } else {
                            PrefData.setThemeMode(0);
                          }

                          getThemeMode();
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: (margin * 2)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: (margin)),
                child: GridView.count(
                  crossAxisCount: _crossAxisCount,
                  shrinkWrap: true,
                  childAspectRatio: _aspectRatio,
                  mainAxisSpacing: margin * 2,
                  crossAxisSpacing: (margin),
                  primary: false,
                  children: List.generate(settingList.length, (index) {
                    IncludeCourseModel model = settingList[index];

                    return InkWell(
                      onTap: () {
                        if (index == 0) {
                          setState(() {
                            _currentIndex = 2;
                          });
                        } else if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyCertificateWidget(),
                              ));
                        } else if (index == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyDownloadScreen(),
                              ));
                        } else if (index == 3) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainProject(),
                              ));
                        } else if (index == 4) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AboutWidget(),
                              ));
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(margin / 2),
                        height: cellHeight,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.3),
                          color: cellColor,
                          borderRadius: BorderRadius.all(Radius.circular(
                              ConstantWidget.getPercentSize(cellHeight, 10))),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(model.icon!,
                                size: ConstantWidget.getPercentSize(
                                    cellHeight, 40),
                                color: primaryColor),
                            SizedBox(width: (margin / 2)),
                            Expanded(
                              child: ConstantWidget.getCustomText(
                                  model.name!,
                                  textColor,
                                  1,
                                  TextAlign.start,
                                  FontWeight.w600,
                                  ConstantWidget.getPercentSize(
                                      cellHeight, 22)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: (margin * 10))
            ],
          ),
        ),
      ),
    );
  }

  Widget referralsWidget() {
    changeStatusColor(bgColor);

    double sliderHeight = ConstantWidget.getScreenPercentSize(context, 20);
    double margin = ConstantWidget.getScreenPercentSize(context, 1.7);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: cellColor,
        centerTitle: false,
        title: ConstantWidget.getTextWidget(
            S.of(context).referrals,
            textColor,
            TextAlign.left,
            FontWeight.bold,
            ConstantWidget.getScreenPercentSize(context, 2.5)),
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.left_chevron,
            color: textColor,
          ),
          onPressed: _requestPop,
        ),
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.all(
                  ConstantWidget.getScreenPercentSize(context, 1)),
              padding: EdgeInsets.symmetric(
                  vertical: ConstantWidget.getScreenPercentSize(context, 1),
                  horizontal:
                      ConstantWidget.getScreenPercentSize(context, 1.5)),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(
                      ConstantWidget.getScreenPercentSize(context, 1)))),
              child: Row(
                children: [
                  ConstantWidget.getTextWidget(
                      S.of(context).share,
                      Colors.black,
                      TextAlign.left,
                      FontWeight.bold,
                      ConstantWidget.getScreenPercentSize(context, 2)),
                  SizedBox(width: 5),
                  Image.asset(
                    ConstantData.assetImagesPath + "share.png",
                    color: Colors.black,
                    height: ConstantWidget.getScreenPercentSize(context, 2),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Container(
                  height: sliderHeight,
                  margin: EdgeInsets.symmetric(horizontal: margin),
                  padding: EdgeInsets.symmetric(horizontal: (margin)),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: new ExactAssetImage(
                      ConstantData.assetImagesPath + "banner.jpg",
                    ),
                    fit: BoxFit.cover,
                  ))),
              SizedBox(height: (margin * 2)),
              Container(
                padding: EdgeInsets.all(margin),
                decoration: BoxDecoration(
                    color: defBgColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        ConstantWidget.getScreenPercentSize(context, 1)))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstantWidget.getTextWidget(
                        S.of(context).yourReferralCode,
                        textColor,
                        TextAlign.left,
                        FontWeight.bold,
                        ConstantWidget.getScreenPercentSize(context, 2.2)),
                    SizedBox(height: 3),
                    ConstantWidget.getTextWidget(
                        S.of(context).copyYourCodeAndShareToWinRewards,
                        subTextColor,
                        TextAlign.left,
                        FontWeight.w500,
                        ConstantWidget.getScreenPercentSize(context, 1.9)),
                    SizedBox(height: margin),
                    Row(
                      children: [
                        Expanded(
                            child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(
                              ConstantWidget.getScreenPercentSize(
                                  context, 0.8)),
                          color: Colors.grey.shade400,
                          padding: EdgeInsets.zero,
                          child: Container(
                            height:
                                ConstantWidget.getScreenPercentSize(context, 5),
                            decoration: BoxDecoration(
                                color: cellColor,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    ConstantWidget.getScreenPercentSize(
                                        context, 0.8)))),
                          ),
                        )),
                        Container(
                          margin: EdgeInsets.all(
                              ConstantWidget.getScreenPercentSize(context, 1)),
                          padding: EdgeInsets.symmetric(
                              vertical: ConstantWidget.getScreenPercentSize(
                                  context, 1),
                              horizontal: ConstantWidget.getScreenPercentSize(
                                  context, 0.5)),
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  ConstantWidget.getScreenPercentSize(
                                      context, 1)))),
                          child: Row(
                            children: [
                              Image.asset(
                                ConstantData.assetImagesPath + "copy.png",
                                color: Colors.white,
                                height: ConstantWidget.getScreenPercentSize(
                                    context, 2),
                              ),
                              SizedBox(width: 5),
                              ConstantWidget.getTextWidget(
                                  S.of(context).copy,
                                  Colors.white,
                                  TextAlign.left,
                                  FontWeight.w500,
                                  ConstantWidget.getScreenPercentSize(
                                      context, 2)),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: (margin * 2)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        getSocialButton(Colors.blueAccent, "facebook.png"),
                        getSocialButton(Colors.green, "whatsapp.png"),
                        getSocialButton(Colors.lightBlue, "twitter.png"),
                        getSocialButton(primaryColor, "share.png"),
                      ],
                    ),
                    SizedBox(height: (margin * 2)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getSocialButton(var color, String icon) {
    double height = ConstantWidget.getScreenPercentSize(context, 4.8);
    double subHeight = ConstantWidget.getPercentSize(height, 55);
    return Container(
      height: height,
      width: height,
      margin: EdgeInsets.symmetric(
          horizontal: ConstantWidget.getWidthPercentSize(context, 2)),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: color, width: 1)),
      child: Center(
          child: Image.asset(
        ConstantData.assetImagesPath + icon,
        height: subHeight,
        width: subHeight,
      )),
    );
  }

  Widget myCourseWidget() {
    changeStatusColor(bgColor);
    setState(() {});
    double height = ConstantWidget.getScreenPercentSize(context, 16);
    double sliderHeight = ConstantWidget.getScreenPercentSize(context, 20);
    double radius1 = ConstantWidget.getPercentSize(sliderHeight, 8);
    double margin = ConstantWidget.getScreenPercentSize(context, 1.7);
    double imgHeight = ConstantWidget.getPercentSize(height, 85);
    double circleHeight = ConstantWidget.getPercentSize(height, 17);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: cellColor,
        title: ConstantWidget.getTextWidget(
            "My Courses",
            textColor,
            TextAlign.left,
            FontWeight.bold,
            ConstantWidget.getScreenPercentSize(context, 2.5)),
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.left_chevron,
            color: textColor,
          ),
          onPressed: _requestPop,
        ),
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.all(
                  ConstantWidget.getScreenPercentSize(context, 1)),
              padding: EdgeInsets.symmetric(
                  vertical: ConstantWidget.getScreenPercentSize(context, 1),
                  horizontal:
                      ConstantWidget.getScreenPercentSize(context, 1.5)),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(
                      ConstantWidget.getScreenPercentSize(context, 1)))),
              child: Row(
                children: [
                  ConstantWidget.getTextWidget(
                      S.of(context).share,
                      Colors.black,
                      TextAlign.left,
                      FontWeight.bold,
                      ConstantWidget.getScreenPercentSize(context, 2)),
                  SizedBox(width: 5),
                  Image.asset(
                    ConstantData.assetImagesPath + "share.png",
                    color: Colors.black,
                    height: ConstantWidget.getScreenPercentSize(context, 2),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: ListView(
            children: [
              InkWell(
                  onTap: () {
                    changeStatusColor(bgColor);
                  },
                  child: Container(
                    height: height,
                    width: double.infinity,
                    margin: EdgeInsets.all(margin),
                    decoration: BoxDecoration(
                        color: cellColor,
                        borderRadius:
                            BorderRadius.all(Radius.circular(radius1)),
                        border: Border.all(color: Colors.grey, width: 0.3)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all((margin / 1.5)),
                          child: Container(
                              height: imgHeight,
                              width: imgHeight,
                              decoration: BoxDecoration(
                                  color: cellColor,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular((radius1))),
                                  image: DecorationImage(
                                    image: new ExactAssetImage(
                                      ConstantData.assetImagesPath +
                                          "course_1.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.symmetric(vertical: margin / 1.2),
                          margin: EdgeInsets.only(right: margin / 1.5),
                          child: Column(children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ConstantWidget.getTextWidget(
                                        S.of(context).digitalMarketingCourse,
                                        textColor,
                                        TextAlign.left,
                                        FontWeight.bold,
                                        ConstantWidget.getScreenPercentSize(
                                            context, 1.7)),
                                  ),
                                  Container(
                                    height: circleHeight,
                                    width: circleHeight,
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: Icon(
                                        Icons.download_rounded,
                                        color: Colors.white,
                                        size: ConstantWidget.getPercentSize(
                                            circleHeight, 75),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                getCourseCell1(
                                    Icons.g_translate, "हिंदी", Colors.black),
                                SizedBox(
                                  width: (margin * 1.2),
                                ),
                                getCourseCell1(
                                    Icons.star, "4.3(2656)", Colors.orange),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: LinearPercentIndicator(
                                    lineHeight:
                                        ConstantWidget.getScreenPercentSize(
                                            context, 2),
                                    center: Text(
                                      "1%",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: ConstantWidget
                                              .getScreenPercentSize(
                                                  context, 1.5),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    percent: 0.05,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: (margin / 2)),
                                    progressColor: primaryColor,
                                    backgroundColor: Colors.grey.shade100,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return UpgradeDialogBox(
                                            title: "Account Created!",
                                            descriptions:
                                                "Your account has\nbeen successfully created!",
                                            text: "Continue",
                                            func: () {},
                                          );
                                        });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left:
                                            ConstantWidget.getScreenPercentSize(
                                                context, 1)),
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            ConstantWidget.getScreenPercentSize(
                                                context, 0.9),
                                        horizontal:
                                            ConstantWidget.getScreenPercentSize(
                                                context, 1.5)),
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(ConstantWidget
                                                .getScreenPercentSize(
                                                    context, 0.5)))),
                                    child: Center(
                                      child: ConstantWidget.getTextWidget(
                                          S.of(context).upgrade,
                                          Colors.white,
                                          TextAlign.left,
                                          FontWeight.w500,
                                          ConstantWidget.getScreenPercentSize(
                                              context, 1.4)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ]),
                        ))
                      ],
                    ),
                  )),
              Container(
                  height: sliderHeight,
                  margin: EdgeInsets.symmetric(horizontal: margin),
                  padding: EdgeInsets.symmetric(horizontal: (margin)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(radius1)),
                      image: DecorationImage(
                        image: new ExactAssetImage(
                          ConstantData.assetImagesPath + "banner.jpg",
                        ),
                        fit: BoxFit.cover,
                      ))),
              SizedBox(height: (margin)),
              getHeaderTitle(S.of(context).recommendedCourses),
              getRecommendedListWidget(false),
              Padding(
                padding: EdgeInsets.only(right: margin),
                child: InkWell(
                  onTap: () {
                    passAllCourseData();
                  },
                  child: ConstantWidget.getTextWidget(
                      S.of(context).viewAll,
                      primaryColor,
                      TextAlign.end,
                      FontWeight.bold,
                      ConstantWidget.getScreenPercentSize(context, 2.2)),
                ),
              ),
              SizedBox(height: (margin * 10))
            ],
          ),
        ),
      ),
    );
  }

  Widget mainWidget() {
    changeStatusColor(primaryColor);

    double height = ConstantWidget.getScreenPercentSize(context, 23);
    double radius = ConstantWidget.getPercentSize(height, 18);
    double searchHeight = ConstantWidget.getPercentSize(height, 29);
    double sliderHeight = ConstantWidget.getScreenPercentSize(context, 20);
    double radius1 = ConstantWidget.getPercentSize(sliderHeight, 12);
    double margin = ConstantWidget.getScreenPercentSize(context, 1.7);

    return SafeArea(
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: ConstantWidget.getScreenPercentSize(context, 2)),
              height: height,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(radius),
                      bottomRight: Radius.circular(radius))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstantWidget.getTextWidget(
                          "Hey, Sophia",
                          Colors.white,
                          TextAlign.start,
                          FontWeight.w600,
                          ConstantWidget.getPercentSize(
                              height - searchHeight, 20)),
                      SizedBox(
                        height: ConstantWidget.getPercentSize(
                            height - searchHeight, 3),
                      ),
                      ConstantWidget.getTextWidget(
                          "Let's start learning",
                          Colors.white70,
                          TextAlign.start,
                          FontWeight.w300,
                          ConstantWidget.getPercentSize(
                              height - searchHeight, 12)),
                    ],
                  )),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical:
                            ConstantWidget.getScreenPercentSize(context, 2)),
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            ConstantWidget.getScreenPercentSize(context, 1)),
                    height: searchHeight,
                    decoration: BoxDecoration(
                        color: cellColor,
                        borderRadius: BorderRadius.all(Radius.circular(
                            ConstantWidget.getPercentSize(searchHeight, 18)))),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainProject(),
                                  ));
                            },
                            child: Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextField(
                                  enabled: false,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: ConstantWidget.getPercentSize(
                                          searchHeight, 30)),
                                  controller: textEditingController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize:
                                              ConstantWidget.getPercentSize(
                                                  searchHeight, 30)),
                                      hintText:
                                          S.of(context).searchCoursesWebinars),
                                ),
                              ),
                            ),
                          ),
                          flex: 1,
                        ),
                        Container(
                          height: (searchHeight / 1.3),
                          width: (searchHeight / 1.3),
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  ConstantWidget.getPercentSize(
                                      searchHeight, 18)))),
                          child: Center(
                              child: Icon(Icons.search,
                                  color: Colors.white,
                                  size: ConstantWidget.getPercentSize(
                                      (searchHeight / 1.3), 50))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(bottom: (margin * 6)),
                children: [
                  Container(
                      child: CarouselSlider(
                    options: CarouselOptions(
                        viewportFraction: 1.0,
                        autoPlay: false,
                        enlargeCenterPage: false,
                        height: sliderHeight),
                    items: sliderList
                        .map((item) => InkWell(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 3;
                                });
                              },
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                margin: EdgeInsets.all(margin),
                                padding:
                                    EdgeInsets.symmetric(horizontal: (margin)),
                                decoration: BoxDecoration(
                                    gradient:
                                        LinearGradient(colors: item.colors!),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(radius1))),
                                child: Stack(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: ConstantWidget.getTextWidget(
                                              item.title!,
                                              Colors.white,
                                              TextAlign.left,
                                              FontWeight.bold,
                                              ConstantWidget.getPercentSize(
                                                  sliderHeight, 12)),
                                        )),
                                        Padding(
                                          padding: EdgeInsets.all(margin),
                                          child: Center(
                                            child: Image.asset(
                                                ConstantData.assetImagesPath +
                                                    item.image!,
                                                height: double.infinity,
                                                width: ConstantWidget
                                                    .getWidthPercentSize(
                                                        context, 22)),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: ListView.builder(
                                          itemCount: sliderList.length,
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                height: (margin / 1.3),
                                                width: (margin / 1.3),
                                                margin:
                                                    EdgeInsets.all(margin / 4),
                                                decoration: BoxDecoration(
                                                    color: (index ==
                                                            (item.id! - 1))
                                                        ? Colors.white
                                                        : Colors.white38,
                                                    shape: BoxShape.circle),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  )),
                  getHeaderTitle(S.of(context).continueCourse),
                  InkWell(
                      onTap: () {
                        changeStatusColor(bgColor);


                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: (margin / 2)),
                        margin: EdgeInsets.only(
                            left: margin,
                            top: margin,
                            bottom: margin,
                            right: ConstantWidget.getWidthPercentSize(
                                context, 15)),
                        decoration: BoxDecoration(
                            color: cellColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(radius1)),
                            border: Border.all(color: Colors.grey, width: 0.3)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all((margin / 1.5)),
                              child: Container(
                                  height: ConstantWidget.getWidthPercentSize(
                                      context, 22),
                                  width: ConstantWidget.getWidthPercentSize(
                                      context, 22),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular((radius1 / 1.2))),
                                      image: DecorationImage(
                                        image: new ExactAssetImage(
                                          ConstantData.assetImagesPath +
                                              "course_1.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(right: (margin / 2)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ConstantWidget.getTextWidget(
                                        S.of(context).digitalMarketingCourse,
                                        textColor,
                                        TextAlign.left,
                                        FontWeight.bold,
                                        ConstantWidget.getScreenPercentSize(
                                            context, 1.7)),
                                    SizedBox(
                                      height:
                                          ConstantWidget.getScreenPercentSize(
                                              context, 1.3),
                                    ),
                                    Row(
                                      children: [
                                        getCourseCell(Icons.g_translate,
                                            "हिंदी", Colors.black),
                                        SizedBox(
                                          width: (margin * 1.2),
                                        ),
                                        getCourseCell(Icons.star, "4.3(2656)",
                                            Colors.orange),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          ConstantWidget.getScreenPercentSize(
                                              context, 1.3),
                                    ),
                                    LinearPercentIndicator(
                                      lineHeight:
                                          ConstantWidget.getScreenPercentSize(
                                              context, 2),
                                      center: Text(
                                        "1%",
                                        style: TextStyle(
                                            fontSize: ConstantWidget
                                                .getScreenPercentSize(
                                                    context, 1.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      percent: 0.05,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: (margin / 2)),
                                      progressColor: primaryColor,
                                      backgroundColor: Colors.grey.shade100,
                                    ),
                                  ]),
                            ))
                          ],
                        ),
                      )),
                  getHeaderTitle(S.of(context).featured),
                  getFeaturedListWidget(),
                  getHeaderTitle(S.of(context).recommendedCourses),
                  getRecommendedListWidget(true),
                  Container(
                      height: sliderHeight,
                      margin: EdgeInsets.symmetric(horizontal: margin),
                      padding: EdgeInsets.symmetric(horizontal: (margin)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(radius1)),
                          image: DecorationImage(
                            image: new ExactAssetImage(
                              ConstantData.assetImagesPath + "banner.jpg",
                            ),
                            fit: BoxFit.cover,
                          ))),
                  SizedBox(height: (margin)),
                  getHeaderTitle(S.of(context).softwareCourses,
                      s1: S.of(context).topCoursesIn),
                  SizedBox(height: (margin / 2)),
                  getSoftwareCourseListWidget(softwareList, true),
                  SizedBox(height: (margin)),
                  getHeaderTitle(S.of(context).business,
                      s1: S.of(context).topCoursesIn),
                  SizedBox(height: (margin / 2)),
                  getSoftwareCourseListWidget(businessList, false),
                  SizedBox(height: (margin)),
                  getHeaderTitle(S.of(context).designingAndAnimation,
                      s1: S.of(context).topCoursesIn),
                  SizedBox(height: (margin / 2)),
                  getSoftwareCourseListWidget(animationList, false),
                  SizedBox(height: (margin)),
                  getHeaderTitle(S.of(context).mechanicalcivilelectrical,
                      s1: S.of(context).topCoursesIn),
                  SizedBox(height: (margin / 2)),
                  getSoftwareCourseListWidget(mechanicalList, false),
                  SizedBox(height: (margin)),
                  getHeaderTitle(S.of(context).liveProject,
                      s1: S.of(context).topCoursesIn),
                  SizedBox(height: (margin / 2)),
                  getSoftwareCourseListWidget(liveProjectList, false),
                  SizedBox(height: (margin)),
                  getHeaderTitle(S.of(context).hardwareAndNetworking,
                      s1: S.of(context).topCoursesIn),
                  SizedBox(height: (margin / 2)),
                  getSoftwareCourseListWidget(hardwareList, false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  getHeaderTitle(String s, {String? s1}) {
    double margin = ConstantWidget.getScreenPercentSize(context, 1.7);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: Row(
        children: [
          (s1 != null && s1.isNotEmpty)
              ? Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: ConstantWidget.getTextWidget(
                      s1,
                      subTextColor,
                      TextAlign.left,
                      FontWeight.bold,
                      ConstantWidget.getScreenPercentSize(context, 2.2)),
                )
              : Container(),
          Expanded(
            child: ConstantWidget.getCustomText(
                s,
                textColor,
                1,
                TextAlign.left,
                FontWeight.bold,
                ConstantWidget.getScreenPercentSize(context, 2.2)),
          ),
        ],
      ),
    );
  }

  getFeaturedListWidget() {
    double margin = ConstantWidget.getScreenPercentSize(context, 1.7);

    double height = ConstantWidget.getScreenPercentSize(context, 36);
    double radius = ConstantWidget.getPercentSize(height, 3.5);
    double remainSize = height / 2;
    double size = ConstantWidget.getPercentSize(remainSize, 25);

    return Container(
      height: height,
      margin: EdgeInsets.only(top: margin, bottom: margin),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              CourseModel model = list[index];

              return InkWell(
                onTap: () {
                  passData(model);
                },
                child: Container(
                    height: height,
                    width: ConstantWidget.getWidthPercentSize(context, 68),
                    decoration: BoxDecoration(
                        color: cellColor,
                        borderRadius: BorderRadius.all(Radius.circular(radius)),
                        border: Border.all(color: Colors.grey, width: 0.3)),
                    margin: EdgeInsets.only(left: margin),
                    child: Column(
                      children: [
                        Container(
                          height: (height / 2),
                          decoration: BoxDecoration(
                              color: cellColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(radius),
                                  topRight: Radius.circular(radius)),
                              image: DecorationImage(
                                image: new ExactAssetImage(
                                  ConstantData.assetImagesPath + model.image!,
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.all(margin / 1.3),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ConstantWidget.getCustomText(
                                        model.name!,
                                        textColor,
                                        3,
                                        TextAlign.left,
                                        FontWeight.bold,
                                        ConstantWidget.getPercentSize(
                                            remainSize, 10)),
                                  ),
                                  Visibility(
                                    visible: model.isFree!,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: (margin),
                                            vertical: (margin / 3)),
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular((radius / 2)),
                                          ),
                                        ),
                                        child: Center(
                                          child: ConstantWidget.getTextWidget(
                                              S.of(context).free.toUpperCase(),
                                              primaryColor,
                                              TextAlign.left,
                                              FontWeight.bold,
                                              ConstantWidget.getPercentSize(
                                                  remainSize, 10)),
                                        )),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: ConstantWidget.getTextWidget(
                                          model.subTitle!,
                                          subTextColor,
                                          TextAlign.left,
                                          FontWeight.w500,
                                          ConstantWidget.getPercentSize(
                                              remainSize, 10)),
                                    ),
                                  ),
                                  SizedBox(
                                      height: ConstantWidget.getPercentSize(
                                          remainSize, 6)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: size,
                                            width: size,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 0.2)),
                                            child: Center(
                                              child: Icon(Icons.g_translate,
                                                  color: Colors.black,
                                                  size: ConstantWidget
                                                      .getPercentSize(
                                                          size, 50)),
                                            ),
                                          ),
                                          SizedBox(width: (margin)),
                                          ConstantWidget.getTextWidget(
                                              "हिंदी",
                                              textColor,
                                              TextAlign.left,
                                              FontWeight.w700,
                                              ConstantWidget.getPercentSize(
                                                  remainSize, 9)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: size,
                                            width: size,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 0.2)),
                                            child: Center(
                                              child: Icon(Icons.star,
                                                  color: Colors.orange,
                                                  size: ConstantWidget
                                                      .getPercentSize(
                                                          size, 60)),
                                            ),
                                          ),
                                          SizedBox(width: (margin)),
                                          ConstantWidget.getTextWidget(
                                              "4.3(2660)",
                                              textColor,
                                              TextAlign.left,
                                              FontWeight.w700,
                                              ConstantWidget.getPercentSize(
                                                  remainSize, 9)),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ))
                            ],
                          ),
                        ))
                      ],
                    )),
              );
            },
          ),
          getViewAllCell(height, () {
            passAllCourseData();
          })
        ],
      ),
    );
  }

  passAllCourseData() {
    changeStatusColor(bgColor);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AllCourseWidget((value) {
            Navigator.of(context).pop();
          }),
        ));
  }

  passData(CourseModel courseModel) async {
    Color? color = await FlutterStatusbarcolor.getStatusBarColor();

    changeStatusColor(bgColor);

  }

  getViewAllCell(double height, Function function) {
    double margin = ConstantWidget.getScreenPercentSize(context, 1.7);

    double circle = ConstantWidget.getPercentSize(height, 35);

    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: () {
          function();
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: (margin * 2)),
          height: circle,
          width: circle,
          decoration: BoxDecoration(
              color: cellColor,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 0.2)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ConstantWidget.getTextWidget(
                    S.of(context).viewAll,
                    primaryColor,
                    TextAlign.left,
                    FontWeight.bold,
                    ConstantWidget.getPercentSize(circle, 15)),
                Icon(CupertinoIcons.arrow_right_to_line,
                    color: primaryColor,
                    size: ConstantWidget.getPercentSize(circle, 20))
              ],
            ),
          ),
        ),
      ),
    );
  }

  getSoftwareCourseListWidget(var list, bool isViewAll) {
    double margin = ConstantWidget.getScreenPercentSize(context, 1.7);
    double height = ConstantWidget.getScreenPercentSize(context, 28);
    double radius = ConstantWidget.getPercentSize(height, 3.5);
    double imgHeight = ConstantWidget.getPercentSize(height, 46);
    double remainSize = height - imgHeight;
    double size = ConstantWidget.getPercentSize(remainSize, 23);

    return Container(
      height: height,
      margin: EdgeInsets.only(top: margin, bottom: margin),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              CourseModel model = list[index];

              return InkWell(
                onTap: () {
                  passData(model);
                },
                child: Container(
                    height: height,
                    width: ConstantWidget.getWidthPercentSize(context, 60),
                    decoration: BoxDecoration(
                        color: cellColor,
                        borderRadius: BorderRadius.all(Radius.circular(radius)),
                        border: Border.all(color: Colors.grey, width: 0.3)),
                    margin: EdgeInsets.only(left: margin),
                    child: Column(
                      children: [
                        Container(
                          height: imgHeight,
                          decoration: BoxDecoration(
                              color: cellColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(radius),
                                  topRight: Radius.circular(radius)),
                              image: DecorationImage(
                                image: new ExactAssetImage(
                                  ConstantData.assetImagesPath + model.image!,
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.all(margin / 1.3),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ConstantWidget.getCustomText(
                                        model.name!,
                                        textColor,
                                        2,
                                        TextAlign.left,
                                        FontWeight.bold,
                                        ConstantWidget.getPercentSize(
                                            remainSize, 12)),
                                  ),
                                  Visibility(
                                    visible: model.isFree!,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: (margin / 3),
                                            vertical: (margin / 2)),
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular((radius / 2)),
                                          ),
                                        ),
                                        child: Center(
                                          child: ConstantWidget.getTextWidget(
                                              S.of(context).free.toUpperCase(),
                                              primaryColor,
                                              TextAlign.left,
                                              FontWeight.bold,
                                              ConstantWidget.getPercentSize(
                                                  remainSize, 9)),
                                        )),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: ConstantWidget.getTextWidget(
                                          model.subTitle!,
                                          subTextColor,
                                          TextAlign.left,
                                          FontWeight.w500,
                                          ConstantWidget.getPercentSize(
                                              remainSize, 11)),
                                    ),
                                  ),
                                  SizedBox(
                                      height: ConstantWidget.getPercentSize(
                                          remainSize, 6)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: size,
                                            width: size,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 0.2)),
                                            child: Center(
                                              child: Icon(Icons.g_translate,
                                                  color: Colors.black,
                                                  size: ConstantWidget
                                                      .getPercentSize(
                                                          size, 50)),
                                            ),
                                          ),
                                          SizedBox(width: (margin)),
                                          ConstantWidget.getTextWidget(
                                              "हिंदी",
                                              textColor,
                                              TextAlign.left,
                                              FontWeight.w700,
                                              ConstantWidget.getPercentSize(
                                                  remainSize, 10.5)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: size,
                                            width: size,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 0.2)),
                                            child: Center(
                                              child: Icon(Icons.star,
                                                  color: Colors.orange,
                                                  size: ConstantWidget
                                                      .getPercentSize(
                                                          size, 60)),
                                            ),
                                          ),
                                          SizedBox(width: (margin)),
                                          ConstantWidget.getTextWidget(
                                              "4.3(2660)",
                                              textColor,
                                              TextAlign.left,
                                              FontWeight.w700,
                                              ConstantWidget.getPercentSize(
                                                  remainSize, 10.5)),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ))
                            ],
                          ),
                        ))
                      ],
                    )),
              );
            },
          ),
          Visibility(
            child: getViewAllCell(height, () {
              passAllCourseData();
            }),
            visible: isViewAll,
          )
        ],
      ),
    );
  }

  getRecommendedListWidget(bool isViewAll) {
    double margin = ConstantWidget.getScreenPercentSize(context, 1.7);
    double height = ConstantWidget.getScreenPercentSize(context, 33);
    double radius = ConstantWidget.getPercentSize(height, 3.5);
    double imgHeight = ConstantWidget.getPercentSize(height, 38);
    double remainSize = height - imgHeight;
    double size = ConstantWidget.getPercentSize(remainSize, 18);

    return Container(
      height: height,
      margin: EdgeInsets.only(top: margin, bottom: margin),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: recommendedList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              CourseModel model = recommendedList[index];

              return InkWell(
                onTap: () {
                  passData(model);
                },
                child: Container(
                    height: height,
                    width: ConstantWidget.getWidthPercentSize(context, 60),
                    decoration: BoxDecoration(
                        color: cellColor,
                        borderRadius: BorderRadius.all(Radius.circular(radius)),
                        border: Border.all(color: Colors.grey, width: 0.3)),
                    margin: EdgeInsets.only(left: margin),
                    child: Column(
                      children: [
                        Container(
                          height: imgHeight,
                          decoration: BoxDecoration(
                              color: cellColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(radius),
                                  topRight: Radius.circular(radius)),
                              image: DecorationImage(
                                image: new ExactAssetImage(
                                  ConstantData.assetImagesPath + model.image!,
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.all(margin / 1.3),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ConstantWidget.getCustomText(
                                        model.name!,
                                        textColor,
                                        3,
                                        TextAlign.left,
                                        FontWeight.bold,
                                        ConstantWidget.getPercentSize(
                                            remainSize, 9)),
                                  ),
                                  Visibility(
                                    visible: model.isFree!,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: (margin / 3),
                                            vertical: (margin / 2)),
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular((radius / 2)),
                                          ),
                                        ),
                                        child: Center(
                                          child: ConstantWidget.getTextWidget(
                                              S.of(context).free.toUpperCase(),
                                              primaryColor,
                                              TextAlign.left,
                                              FontWeight.bold,
                                              ConstantWidget.getPercentSize(
                                                  remainSize, 9)),
                                        )),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: ConstantWidget.getTextWidget(
                                          model.subTitle!,
                                          subTextColor,
                                          TextAlign.left,
                                          FontWeight.w500,
                                          ConstantWidget.getPercentSize(
                                              remainSize, 7.5)),
                                    ),
                                  ),
                                  SizedBox(
                                      height: ConstantWidget.getPercentSize(
                                          remainSize, 6)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: size,
                                            width: size,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 0.2)),
                                            child: Center(
                                              child: Icon(Icons.g_translate,
                                                  color: Colors.black,
                                                  size: ConstantWidget
                                                      .getPercentSize(
                                                          size, 50)),
                                            ),
                                          ),
                                          SizedBox(width: (margin)),
                                          ConstantWidget.getTextWidget(
                                              "हिंदी",
                                              textColor,
                                              TextAlign.left,
                                              FontWeight.w700,
                                              ConstantWidget.getPercentSize(
                                                  remainSize, 8)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: size,
                                            width: size,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 0.2)),
                                            child: Center(
                                              child: Icon(Icons.star,
                                                  color: Colors.orange,
                                                  size: ConstantWidget
                                                      .getPercentSize(
                                                          size, 60)),
                                            ),
                                          ),
                                          SizedBox(width: (margin)),
                                          ConstantWidget.getTextWidget(
                                              "4.3(2660)",
                                              textColor,
                                              TextAlign.left,
                                              FontWeight.w700,
                                              ConstantWidget.getPercentSize(
                                                  remainSize, 8)),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ))
                            ],
                          ),
                        ))
                      ],
                    )),
              );
            },
          ),
          Visibility(
            child: getViewAllCell(height, () {
              passAllCourseData();
            }),
            visible: isViewAll,
          )
        ],
      ),
    );
  }

  getCourseCell1(var icon, String s, var color) {
    double size = ConstantWidget.getScreenPercentSize(context, 4);
    double margin = ConstantWidget.getScreenPercentSize(context, 1);

    return Row(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 0.3)),
          child: Center(
            child: Icon(icon,
                color: color, size: ConstantWidget.getPercentSize(size, 50)),
          ),
        ),
        SizedBox(width: (margin)),
        ConstantWidget.getTextWidget(s, textColor, TextAlign.left,
            FontWeight.w500, ConstantWidget.getScreenPercentSize(context, 2)),
      ],
    );
  }

  getCourseCell(var icon, String s, var color) {
    double size = ConstantWidget.getScreenPercentSize(context, 4);
    double margin = ConstantWidget.getScreenPercentSize(context, 1);
    double width = ConstantWidget.getWidthPercentSize(context, 100) -
        ConstantWidget.getWidthPercentSize(context, 15);

    return Row(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 0.3)),
          child: Center(
            child: Icon(icon,
                color: color, size: ConstantWidget.getPercentSize(size, 50)),
          ),
        ),
        SizedBox(width: (margin)),
        ConstantWidget.getTextWidget(s, textColor, TextAlign.left,
            FontWeight.w500, ConstantWidget.getPercentSize(width, 4)),
      ],
    );
  }

  getBottomTextWidget(String s, var icon) {
    return BottomNavyBarItem(
      icon: Icon(icon),
      title: Text(s),
      textTitle: s,
      activeColor: cellColor,
      textAlign: TextAlign.center,
    );
  }

  Future<bool> _requestPop() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex = 0;
      });
    } else {
      Future.delayed(const Duration(milliseconds: 200), () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      });
    }
    return new Future.value(false);
  }
}
