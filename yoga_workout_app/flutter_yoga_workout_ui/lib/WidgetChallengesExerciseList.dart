import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/svg.dart';

import 'ColorCategory.dart';
import 'ConstantWidget.dart';
import 'Constants.dart';
import 'SizeConfig.dart';
import 'WidgetWorkoutExerciseList.dart';
import 'generated/l10n.dart';

class WidgetChallengesExerciseList extends StatefulWidget {
  final Color? bgColor;

  WidgetChallengesExerciseList({this.bgColor});

  @override
  _WidgetChallengesExerciseList createState() =>
      _WidgetChallengesExerciseList();
}

class _WidgetChallengesExerciseList
    extends State<WidgetChallengesExerciseList> {
  ScrollController? _scrollViewController;
  bool isScrollingDown = false;
  double getCal = 0;
  int getTime = 0;
  int getTotalWorkout = 0;
  int lastWeek = 1, lastDay = 1;

  // Days? days;

  int totalAllDays = 0;
  String weekId = "";
  String lastDayId = "";



  int setWeek = 0;
  int setDay = 0;
  int openWeek = 0;


  void sendToWorkoutList(
      BuildContext context, int day, int week) {
    // print(
    //     "day----$day---$week---${days.daysId}----${days.weekId}----${weekModel.totalDays}---${weekModel.weekId}");
    // Route route = PageRouteBuilder(
    //   pageBuilder: (context, animation, secondaryAnimation) =>
    //       WidgetChallengeExerciseSecList(
    //     widget._modelWorkoutList,
    //     day,
    //     week,
    //     days,
    //     weekModel,
    //     bgColor: widget.bgColor,
    //   ),
    //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //     const begin = Offset(0.0, 1.0);
    //     const end = Offset.zero;
    //     const curve = Curves.ease;
    //
    //     var tween =
    //         Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    //
    //     return SlideTransition(
    //       position: animation.drive(tween),
    //       child: child,
    //     );
    //   },
    // );
    // Navigator.of(context).push(route);
  }

  void _calcTotal() async {


  }

  @override
  void initState() {
    _calcTotal();

    super.initState();

    _scrollViewController = new ScrollController();
    _scrollViewController!.addListener(() {
      if (_scrollViewController!.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          setState(() {});
        }
      }

      if (_scrollViewController!.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController!.removeListener(() {});
    _scrollViewController!.dispose();
    super.dispose();
  }

  Future<void> share() async {
    // Share.share(S.of(context).app_name, subject: S.of(context).app_name);
    await FlutterShare.share(
      title: S.of(context).app_name,
      text: S.of(context).app_name,
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Share':
        share();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double screenHeight = SizeConfig.safeBlockVertical! * 100;
    double margin = ConstantWidget.getWidthPercentSize(context, 4);
    double radius = ConstantWidget.getScreenPercentSize(context, 2);
    double height = ConstantWidget.getScreenPercentSize(context, 6.5);

    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: getColorStatusBar(widget.bgColor),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            bottom: true,
            child: Container(
              height: double.infinity,
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      primary: true,
                      children: <Widget>[
                        Stack(
                          children: [
                            // AppBar(
                            //   backgroundColor: Colors.transparent,
                            //   iconTheme: IconThemeData(color: Colors.white),
                            //   elevation: 0,
                            //   automaticallyImplyLeading: false,
                            //   leading: IconButton(
                            //       icon: Icon(
                            //         Icons.arrow_back_ios,
                            //         color: Colors.white,
                            //       ),
                            //       onPressed: () {
                            //         onBackClicked();
                            //       }),
                            //   actions: <Widget>[
                            //     PopupMenuButton<String>(
                            //       onSelected: handleClick,
                            //       itemBuilder: (BuildContext context) {
                            //         return {'Share'}.map((String choice) {
                            //           return PopupMenuItem<String>(
                            //             value: choice,
                            //             child: Text(choice),
                            //           );
                            //         }).toList();
                            //       },
                            //     )
                            //   ],
                            // ),
                            Container(
                              color: bgDarkWhite,

                              // decoration: BoxDecoration(
                              //     color: Colors.white,
                              //     borderRadius: BorderRadius.only(
                              //       topRight: Radius.circular(
                              //           Constants.getScreenPercentSize(context, 4)),
                              //       topLeft: Radius.circular(
                              //           Constants.getScreenPercentSize(context, 4)),
                              //     )),
                              margin: EdgeInsets.only(
                                  top: Constants.getPercentSize(
                                      screenHeight, 43)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: margin),
                                    child: ConstantWidget.getTextWidget(
                                        'Beginner',
                                        Colors.black,
                                        TextAlign.start,
                                        FontWeight.bold,
                                        ConstantWidget.getScreenPercentSize(
                                            context, 2.5)),
                                  ),

                                  SizedBox(
                                    height: Constants.getScreenPercentSize(
                                        context, 1),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: margin),
                                    child: ConstantWidget.getTextWidgetWithFont(
                                        "${7} ${S.of(context).week}",
                                        textColor,
                                        TextAlign.start,
                                        FontWeight.w400,
                                        Constants.getScreenPercentSize(
                                            context, 1.8),
                                        Constants.chilankaFontsFamily),
                                  ),

                                  SizedBox(
                                    height: Constants.getScreenPercentSize(
                                        context, 1),
                                  ),



                                  ListView.builder(
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 40),
                                    itemCount: 7,
                                    itemBuilder: (context, weekPosition) {
                                      // int week = weekPosition;

                                      var _crossAxisSpacing =
                                          ConstantWidget.getScreenPercentSize(
                                              context, 2.5);
                                      var _screenWidth =
                                          SizeConfig.safeBlockHorizontal! * 65;
                                      var _crossAxisCount = 4;
                                      var _width = (_screenWidth -
                                              ((_crossAxisCount - 1) *
                                                  _crossAxisSpacing)) /
                                          _crossAxisCount;
                                      var cellHeight =
                                          ConstantWidget.getWidthPercentSize(
                                                  context, 100) /
                                              9;
                                      var _aspectRatio = _width / cellHeight;





                                      double padding =
                                          ConstantWidget.getWidthPercentSize(
                                              context, 4);



                                      // }
                                      if (openWeek == weekPosition) {
                                        return Container(
                                          margin: EdgeInsets.only(
                                            bottom: ConstantWidget
                                                .getScreenPercentSize(
                                                    context, 2.5),
                                          ),
                                          child: ConstantWidget.getShadowWidget(
                                              margin: margin,
                                              bottomPadding: padding,
                                              radius: ConstantWidget
                                                  .getScreenPercentSize(
                                                      context, 2),
                                              leftPadding: padding,
                                              rightPadding: padding,
                                              topPadding: padding,
                                              widget: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ConstantWidget
                                                      .getTextWidgetWithFont(
                                                          "Week ${(weekPosition+1)}",
                                                          textColor,
                                                          TextAlign.start,
                                                          FontWeight.w700,
                                                          Constants
                                                              .getPercentSize(
                                                                  height, 25),
                                                          Constants
                                                              .fontsFamily),
                                                  SizedBox(
                                                    height: ConstantWidget
                                                        .getScreenPercentSize(
                                                            context, 2),
                                                  ),

                                          GridView
                                              .count(
                                            crossAxisCount:
                                            _crossAxisCount,
                                            shrinkWrap:
                                            true,
                                            primary: false,
                                            physics:
                                            new NeverScrollableScrollPhysics(),
                                            mainAxisSpacing:
                                            _crossAxisSpacing,
                                            crossAxisSpacing:
                                            _crossAxisSpacing,
                                            childAspectRatio:
                                            _aspectRatio,
                                            children: List
                                                .generate(
                                                7,
                                                    (i) {

                                                  Color
                                                  setColor =
                                                      cellColor;




                                                  return (i ==
                                                      7)
                                                      ? Center(
                                                    child:
                                                    SvgPicture.asset(
                                                      Constants.assetsImagePath +
                                                          "trophy_1.svg",
                                                      height:
                                                      ConstantWidget.getPercentSize(cellHeight, 80),
                                                      color:
                                                      // weekModel.isCompleted == 1
                                                      //     ? Colors.orange
                                                      //     :
                                                      Colors.grey,


                                                    ),

                                                  )
                                                      : InkWell(
                                                    onTap:
                                                        () {

                                                    },
                                                    child:
                                                    Container(
                                                      height:
                                                      cellHeight,
                                                      width:
                                                      cellHeight,
                                                      decoration:
                                                      getDefaultDecoration(bgColor:
                                                      (i==0)
                                                          ? Colors.green :
                                                      setColor, radius: ConstantWidget.getPercentSize(cellHeight, 30)),
                                                      child:
                                                      Center(
                                                        child: ConstantWidget.getTextWidget((i + 1).toString(),
                                                            (i==0)
                                                                ? Colors.white
                                                                :
                                                            subTextColor
                                                            ,
                                                            TextAlign.center, FontWeight.w700, ConstantWidget.getPercentSize(cellHeight, 40)),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                          ),


                                                ],
                                              )),
                                        );
                                      } else {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              openWeek = weekPosition;
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                bottom: ConstantWidget
                                                    .getScreenPercentSize(
                                                        context, 2.5),
                                                right: margin,
                                                left: margin),
                                            height: height,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: ConstantWidget
                                                    .getWidthPercentSize(
                                                        context, 4)),
                                            decoration: getDefaultDecoration(
                                                radius: radius,
                                                bgColor: cellColor),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: ConstantWidget
                                                      .getTextWidgetWithFont(
                                                          "Week ${(weekPosition+1)}",
                                                          subTextColor,
                                                          TextAlign.start,
                                                          FontWeight.bold,
                                                          Constants
                                                              .getPercentSize(
                                                                  height, 25),
                                                          Constants
                                                              .fontsFamily
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: subTextColor,
                                                  size:
                                                      Constants.getPercentSize(
                                                          height, 40),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  )



                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height:
                                  Constants.getScreenPercentSize(context, 40),
                              decoration: getDecorationWithSide(
                                  radius: ConstantWidget.getScreenPercentSize(
                                      context, 4.5),
                                  bgColor: widget.bgColor,
                                  isBottomLeft: true,
                                  isBottomRight: true),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: EdgeInsets.only(
                                    top: ConstantWidget.getScreenPercentSize(
                                        context, 6)),
                                child: Hero(
                                  tag: 'sub_image.png',
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(
                                              ConstantWidget
                                                  .getScreenPercentSize(
                                                      context, 4.5))),
                                      child: Image.asset(

                                        Constants.assetsImagePath +
                                            'sub_image.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),



                            ConstantWidget.getLoginAppBar(context,
                                function: onBackClicked, infoFunction: () {
                              showInfoDialog();
                            }, isInfo: true)
                          ],
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: margin),
                    child: ConstantWidget.getButtonWidget(
                        context, 'Go', blueButton, () {

                      setStatusBarColor('#D6F4FF'.toColor());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          new WidgetWorkoutExerciseList(

                             '#D6F4FF'.toColor(),
                          ),
                        ),
                      );
                      // if (week != null && days != null) {
                      //   sendToWorkoutList(
                      //       context, lastDay, lastWeek, days!, week!);
                      // }
                    }),
                  ),

                  SizedBox(
                    height: (margin / 4),
                  )


                ],
              ),
            )),
      ),
      onWillPop: () async {
        onBackClicked();
        return false;
      },
    );
  }

  void showInfoDialog() {
    showModalBottomSheet<void>(
      enableDrag: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: SizeConfig.safeBlockVertical! * 50,
          decoration: getDecorationWithSide(
              radius: ConstantWidget.getScreenPercentSize(context, 4.5),
              bgColor: bgDarkWhite,
              isTopLeft: true,
              isTopRight: true),
          child: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: ConstantWidget.getScreenPercentSize(context, 1.4)),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            primary: false,
            children: [
              SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 2.5)),
              Row(
                children: [
                  // Expanded(
                  //   flex: 1,
                  //   child: ConstantWidget.getCustomTextWidget(
                  //       widget._modelWorkoutList.challengesName!,
                  //       Colors.black,
                  //       ConstantWidget.getScreenPercentSize(context, 2.5),
                  //       FontWeight.bold,
                  //       TextAlign.start,
                  //       1),
                  // ),
                  getDefaultButton(context, function: () {
                    Navigator.pop(context);
                  })
                ],
              ),
              SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 1.5)),
              ConstantWidget.getTextWidget(
                  'Description',
                  Colors.black,
                  TextAlign.start,
                  FontWeight.bold,
                  ConstantWidget.getScreenPercentSize(context, 2)),
              SizedBox(
                height: ConstantWidget.getScreenPercentSize(context, 0.5),
              ),
              // HtmlWidget(
              //   Constants.decode(widget._modelWorkoutList.description ?? ""),
              //   textStyle: TextStyle(
              //       wordSpacing: 2,
              //       color: Colors.black,
              //       fontSize: ConstantWidget.getScreenPercentSize(context, 1.6),
              //       fontFamily: Constants.fontsFamily,
              //       fontWeight: FontWeight.normal),
              // )
            ],
          ),
        );
      },
    );
  }

  void onBackClicked() {
    setStatusBarColor(bgDarkWhite);
    Navigator.of(context).pop();
  }
}
