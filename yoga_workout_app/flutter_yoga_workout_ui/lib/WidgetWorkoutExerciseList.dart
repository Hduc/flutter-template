import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:workout/ConstantWidget.dart';


import 'ColorCategory.dart';
import 'Constants.dart';
import 'SizeConfig.dart';
import 'WidgetWorkout.dart';
import 'ads/AdsFile.dart';
import 'generated/l10n.dart';


class WidgetWorkoutExerciseList extends StatefulWidget {
  final Color color;

  WidgetWorkoutExerciseList(this.color);

  @override
  _WidgetWorkoutExerciseList createState() => _WidgetWorkoutExerciseList();
}

class _WidgetWorkoutExerciseList extends State<WidgetWorkoutExerciseList>
    with TickerProviderStateMixin {
  ScrollController? _scrollViewController;
  bool isScrollingDown = false;

  AnimationController? animationController;
  Animation<double>? animation;

  double getCal = 0;
  int getTime = 0;
  List? priceList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    super.initState();

    Future.delayed(Duration.zero, () {
      adsFile = new AdsFile(context);
      adsFile!.createAnchoredBanner(context, setState);
      adsFile!.createInterstitialAd();
    });

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

    getAllData();
  }

  @override
  void dispose() {

    adsFile!.disposeInterstitialAd();
    adsFile!.disposeBannerAd();
    _scrollViewController!.removeListener(() {});
    _scrollViewController!.dispose();
    try {
      if (animationController != null) {
        animationController!.dispose();
      }
    } catch (e) {
      print(e);
    }
    super.dispose();
  }

  Future<void> share() async {
    await FlutterShare.share(title: 'Share', text: S.of(context).app_name);
  }

  void handleClick(String value) {
    switch (value) {
      case 'Share':
        share();
        break;
    }
  }


  PageController controller = PageController();
  double margin = 0;
  AdsFile? adsFile;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    margin = ConstantWidget.getWidthPercentSize(context, 4);

    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: getColorStatusBar(widget.color),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Container(
                height: double.infinity,
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ListView(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height:
                                    Constants.getScreenPercentSize(context, 40),
                                decoration: getDecorationWithSide(
                                    radius: ConstantWidget.getScreenPercentSize(
                                        context, 4.5),
                                    bgColor: widget.color,
                                    isBottomLeft: true,
                                    isBottomRight: true),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  margin: EdgeInsets.only(
                                      top: ConstantWidget.getScreenPercentSize(
                                          context, 2)),
                                  color: Colors.transparent,
                                  child: Align(
                                    alignment:
                                        Alignment.center,
                                    child: Hero(
                                      tag: '',
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(
                                                ConstantWidget
                                                    .getScreenPercentSize(
                                                        context, 6))),
                                        child: Image.asset(
                                          Constants.assetsImagePath +
                                              'yoga_4.png',
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
                          SizedBox(
                            height:
                                ConstantWidget.getScreenPercentSize(context, 3),
                          ),
                          ListView(
                            primary: false,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: margin),
                                child: ConstantWidget.getTextWidget(
                                    'Sun Salute',
                                    Colors.black,
                                    TextAlign.start,
                                    FontWeight.bold,
                                    ConstantWidget.getScreenPercentSize(
                                        context, 2.5)),
                              ),

                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(
                                    horizontal: (margin / 2),
                                    vertical: margin),
                                child: Row(
                                  children: [
                                    getCompleteContent(
                                        "${7}",
                                        S.of(context).workout,
                                        "dumbbell.svg"),
                                    SizedBox(
                                      width: ConstantWidget
                                          .getScreenPercentSize(
                                          context, 1),
                                    ),
                                    getCompleteContent(
                                        "${Constants.calFormatter.format(getCal)}",
                                        S.of(context).kcal,
                                        "bonfire.svg"),
                                    SizedBox(
                                      width: ConstantWidget
                                          .getScreenPercentSize(
                                          context, 1),
                                    ),
                                    getCompleteContent(
                                        Constants.getTimeFromSec(
                                            getTime),
                                        'Duration',
                                        "stopwatch.svg"),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: margin),
                                child: ConstantWidget.getTextWidget(
                                    'Exercises',
                                    Colors.black,
                                    TextAlign.start,
                                    FontWeight.bold,
                                    ConstantWidget.getScreenPercentSize(
                                        context, 2)),
                              ),

                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight:
                                          Radius.circular(30)),
                                      color: Colors.white),
                                  child:  ListView.separated(
                                    separatorBuilder:
                                        (context, index) {
                                      return Container(
                                        color: subTextColor,
                                        margin:
                                        EdgeInsets.symmetric(
                                            horizontal:
                                            margin),
                                        height: 0.1,
                                        width: double.infinity,
                                      );
                                    },
                                    physics:
                                    NeverScrollableScrollPhysics(),
                                    itemCount: 5,
                                    primary: false,
                                    shrinkWrap: true,
                                    itemBuilder:
                                        (context, index) {


                                      double radius = Constants
                                          .getScreenPercentSize(
                                          context, 2);
                                      final Animation<double>
                                      animation =
                                      Tween<double>(
                                          begin: 0.0,
                                          end: 1.0)
                                          .animate(
                                        CurvedAnimation(
                                          parent:
                                          animationController!,
                                          curve: Interval(
                                              (1 / 5) *
                                                  index,
                                              1.0,
                                              curve: Curves
                                                  .fastOutSlowIn),
                                        ),
                                      );
                                      animationController!
                                          .forward();

                                      double cellSize =
                                      ConstantWidget
                                          .getScreenPercentSize(
                                          context, 9);


                                      return AnimatedBuilder(
                                        builder:
                                            (context, child) {
                                          return FadeTransition(
                                            opacity: animation,
                                            child: Transform(
                                              transform: Matrix4
                                                  .translationValues(
                                                  0.0,
                                                  50 *
                                                      (1.0 -
                                                          animation.value),
                                                  0.0),
                                              child: InkWell(
                                                child: Card(
                                                  color: Colors
                                                      .transparent,
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(radius))),
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal:
                                                      margin,
                                                      vertical:
                                                      margin),
                                                  child:
                                                  Container(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      children: [
                                                        Container(
                                                          padding: EdgeInsets.all(Constants.getPercentSize(
                                                              cellSize,
                                                              5)),
                                                          height:
                                                          cellSize,
                                                          width:
                                                          cellSize,
                                                          decoration: getDefaultDecoration(
                                                              bgColor:
                                                              cellColor,
                                                              radius:
                                                              radius),
                                                          child: Image.asset(
                                                            Constants.assetsImagePath+
                                                                'body_${(index+1)}.png',
                                                            fit: BoxFit.contain,
                                                            width: double.infinity,
                                                            height: double.infinity,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: ConstantWidget.getWidthPercentSize(
                                                              context,
                                                              3.5),
                                                        ),
                                                        Expanded(
                                                          child:
                                                          Column(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.center,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.start,
                                                            children: [
                                                              ConstantWidget.getCustomTextWidget(
                                                                  'Mountain Pose',
                                                                  textColor,
                                                                  ConstantWidget.getScreenPercentSize(context, 1.8),
                                                                  FontWeight.w700,
                                                                  TextAlign.start,
                                                                  1),
                                                              SizedBox(
                                                                height: ConstantWidget.getScreenPercentSize(context, 0.5),
                                                              ),
                                                              ConstantWidget.getTextWidget(
                                                                  "${45} ${S.of(context).seconds}",
                                                                  subTextColor,
                                                                  TextAlign.start,
                                                                  FontWeight.w400,
                                                                  ConstantWidget.getScreenPercentSize(context, 1.6)),
                                                            ],
                                                          ),
                                                          flex: 1,
                                                        ),
                                                        IconButton(
                                                          onPressed:
                                                              () {
                                                            showBottomDialog();
                                                            //     _list[index]);
                                                          },
                                                          padding:
                                                          EdgeInsets.all(7),
                                                          icon:
                                                          Icon(
                                                            Icons
                                                                .more_vert_rounded,
                                                            color:
                                                            Colors.black,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onTap: () {
                                                  // showBottomDialog(
                                                  //     _list[
                                                  //     index]);
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                        animation:
                                        animationController!,
                                      );
                                    },
                                  ))

                              //add your screen content here
                            ],
                          )
                          // FutureBuilder<ModelDetailExerciseList?>(
                          //   future: getDetailExerciseList(
                          //       context, widget._modelWorkoutList),
                          //   builder: (context, snapshot) {
                          //     getCal = 0;
                          //     int getTime = 0;
                          //     if (snapshot.hasData) {
                          //       ModelDetailExerciseList
                          //           modelExerciseDetailList = snapshot.data!;
                          //       if (modelExerciseDetailList.data!.success ==
                          //           1) {
                          //         _list =
                          //             modelExerciseDetailList.data!.exercise!;
                          //
                          //         _list.forEach((price) {
                          //           getTime = getTime +
                          //               int.parse(price.exerciseTime!);
                          //         });
                          //         getCal =
                          //             Constants.calDefaultCalculation * getTime;
                          //         return ListView(
                          //           primary: false,
                          //           shrinkWrap: true,
                          //           physics: NeverScrollableScrollPhysics(),
                          //           children: <Widget>[
                          //             Padding(
                          //               padding: EdgeInsets.symmetric(
                          //                   horizontal: margin),
                          //               child: ConstantWidget.getTextWidget(
                          //                   widget._modelWorkoutList.name,
                          //                   Colors.black,
                          //                   TextAlign.start,
                          //                   FontWeight.bold,
                          //                   ConstantWidget.getScreenPercentSize(
                          //                       context, 2.5)),
                          //             ),
                          //
                          //             Container(
                          //               width: double.infinity,
                          //               margin: EdgeInsets.symmetric(
                          //                   horizontal: (margin / 2),
                          //                   vertical: margin),
                          //               child: Row(
                          //                 children: [
                          //                   getCompleteContent(
                          //                       "${_list.length}",
                          //                       S.of(context).workout,
                          //                       "dumbbell.svg"),
                          //                   SizedBox(
                          //                     width: ConstantWidget
                          //                         .getScreenPercentSize(
                          //                             context, 1),
                          //                   ),
                          //                   getCompleteContent(
                          //                       "${Constants.calFormatter.format(getCal)}",
                          //                       S.of(context).kcal,
                          //                       "bonfire.svg"),
                          //                   SizedBox(
                          //                     width: ConstantWidget
                          //                         .getScreenPercentSize(
                          //                             context, 1),
                          //                   ),
                          //                   getCompleteContent(
                          //                       Constants.getTimeFromSec(
                          //                           getTime),
                          //                       'Duration',
                          //                       "stopwatch.svg"),
                          //                 ],
                          //               ),
                          //             ),
                          //
                          //             Padding(
                          //               padding: EdgeInsets.symmetric(
                          //                   horizontal: margin),
                          //               child: ConstantWidget.getTextWidget(
                          //                   'Exercises',
                          //                   Colors.black,
                          //                   TextAlign.start,
                          //                   FontWeight.bold,
                          //                   ConstantWidget.getScreenPercentSize(
                          //                       context, 2)),
                          //             ),
                          //
                          //             Container(
                          //                 decoration: BoxDecoration(
                          //                     borderRadius: BorderRadius.only(
                          //                         topLeft: Radius.circular(30),
                          //                         topRight:
                          //                             Radius.circular(30)),
                          //                     color: Colors.white),
                          //                 child: (snapshot.hasData)
                          //
                          //
                          //
                          //                     ? ListView.separated(
                          //                         separatorBuilder:
                          //                             (context, index) {
                          //                           return Container(
                          //                             color: subTextColor,
                          //                             margin:
                          //                                 EdgeInsets.symmetric(
                          //                                     horizontal:
                          //                                         margin),
                          //                             height: 0.1,
                          //                             width: double.infinity,
                          //                           );
                          //                         },
                          //                         physics:
                          //                             NeverScrollableScrollPhysics(),
                          //                         itemCount: _list.length,
                          //                         primary: false,
                          //                         shrinkWrap: true,
                          //                         itemBuilder:
                          //                             (context, index) {
                          //                           Exercise
                          //                               _modelExerciseList =
                          //                               _list[index];
                          //
                          //                           double radius = Constants
                          //                               .getScreenPercentSize(
                          //                                   context, 2);
                          //                           final Animation<double>
                          //                               animation =
                          //                               Tween<double>(
                          //                                       begin: 0.0,
                          //                                       end: 1.0)
                          //                                   .animate(
                          //                             CurvedAnimation(
                          //                               parent:
                          //                                   animationController!,
                          //                               curve: Interval(
                          //                                   (1 / _list.length) *
                          //                                       index,
                          //                                   1.0,
                          //                                   curve: Curves
                          //                                       .fastOutSlowIn),
                          //                             ),
                          //                           );
                          //                           animationController!
                          //                               .forward();
                          //
                          //                           double cellSize =
                          //                               ConstantWidget
                          //                                   .getScreenPercentSize(
                          //                                       context, 9);
                          //
                          //                           return AnimatedBuilder(
                          //                             builder:
                          //                                 (context, child) {
                          //                               return FadeTransition(
                          //                                 opacity: animation,
                          //                                 child: Transform(
                          //                                   transform: Matrix4
                          //                                       .translationValues(
                          //                                           0.0,
                          //                                           50 *
                          //                                               (1.0 -
                          //                                                   animation.value),
                          //                                           0.0),
                          //                                   child: InkWell(
                          //                                     child: Card(
                          //                                       color: Colors
                          //                                           .transparent,
                          //                                       elevation: 0,
                          //                                       shape: RoundedRectangleBorder(
                          //                                           borderRadius:
                          //                                               BorderRadius.all(
                          //                                                   Radius.circular(radius))),
                          //                                       margin: EdgeInsets.symmetric(
                          //                                           horizontal:
                          //                                               margin,
                          //                                           vertical:
                          //                                               margin),
                          //                                       child:
                          //                                           Container(
                          //                                         child: Row(
                          //                                           mainAxisAlignment:
                          //                                               MainAxisAlignment
                          //                                                   .center,
                          //                                           crossAxisAlignment:
                          //                                               CrossAxisAlignment
                          //                                                   .center,
                          //                                           children: [
                          //                                             Container(
                          //                                               padding: EdgeInsets.all(Constants.getPercentSize(
                          //                                                   cellSize,
                          //                                                   5)),
                          //                                               height:
                          //                                                   cellSize,
                          //                                               width:
                          //                                                   cellSize,
                          //                                               decoration: getDefaultDecoration(
                          //                                                   bgColor:
                          //                                                       cellColor,
                          //                                                   radius:
                          //                                                       radius),
                          //                                               child: Image
                          //                                                   .network(
                          //                                                 "${ConstantUrl.uploadUrl}${_modelExerciseList.image}",
                          //                                                 width:
                          //                                                     double.infinity,
                          //                                                 height:
                          //                                                     double.infinity,
                          //                                                 fit: BoxFit
                          //                                                     .contain,
                          //                                               ),
                          //                                             ),
                          //                                             SizedBox(
                          //                                               width: ConstantWidget.getWidthPercentSize(
                          //                                                   context,
                          //                                                   3.5),
                          //                                             ),
                          //                                             Expanded(
                          //                                               child:
                          //                                                   Column(
                          //                                                 mainAxisAlignment:
                          //                                                     MainAxisAlignment.center,
                          //                                                 crossAxisAlignment:
                          //                                                     CrossAxisAlignment.start,
                          //                                                 children: [
                          //                                                   ConstantWidget.getCustomTextWidget(
                          //                                                       _modelExerciseList.exerciseName!,
                          //                                                       textColor,
                          //                                                       ConstantWidget.getScreenPercentSize(context, 1.8),
                          //                                                       FontWeight.bold,
                          //                                                       TextAlign.start,
                          //                                                       1),
                          //                                                   SizedBox(
                          //                                                     height: ConstantWidget.getScreenPercentSize(context, 0.5),
                          //                                                   ),
                          //                                                   ConstantWidget.getTextWidget(
                          //                                                       "${_modelExerciseList.exerciseTime} ${S.of(context).seconds}",
                          //                                                       subTextColor,
                          //                                                       TextAlign.start,
                          //                                                       FontWeight.w500,
                          //                                                       ConstantWidget.getScreenPercentSize(context, 1.6)),
                          //                                                 ],
                          //                                               ),
                          //                                               flex: 1,
                          //                                             ),
                          //                                             IconButton(
                          //                                               onPressed:
                          //                                                   () {
                          //                                                 showBottomDialog(
                          //                                                     _list[index]);
                          //                                               },
                          //                                               padding:
                          //                                                   EdgeInsets.all(7),
                          //                                               icon:
                          //                                                   Icon(
                          //                                                 Icons
                          //                                                     .more_vert_rounded,
                          //                                                 color:
                          //                                                     Colors.black,
                          //                                               ),
                          //                                             )
                          //                                           ],
                          //                                         ),
                          //                                       ),
                          //                                     ),
                          //                                     onTap: () {
                          //                                       showBottomDialog(
                          //                                           _list[
                          //                                               index]);
                          //                                     },
                          //                                   ),
                          //                                 ),
                          //                               );
                          //                             },
                          //                             animation:
                          //                                 animationController!,
                          //                           );
                          //                         },
                          //                       )
                          //                     : getProgressDialog())
                          //
                          //             //add your screen content here
                          //           ],
                          //         );
                          //       } else {
                          //         return getNoData(context);
                          //       }
                          //     } else {
                          //       return getProgressDialog();
                          //     }
                          //   },
                          // )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: margin),
                      child: ConstantWidget.getButtonWidget(
                          context, 'Start Workout', blueButton, () async {

                        // if(await ConstantUrl.isLogin()){
                        //   adsFile!.showInterstitialAd(() {
                        //     sendToNext();
                        //   });
                        // }else{
                        //   ConstantUrl.sendLoginPage(context,function: (){
                        //     adsFile!.showInterstitialAd(() {
                              sendToNext();
                            // });
                          // });
                        // }



                      }),
                    ),
                    getBanner(context, adsFile)
                  ],
                ))),
        // ),
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
                  Expanded(
                    flex: 1,
                    child: ConstantWidget.getCustomTextWidget(
                        'Mountain Pose',
                        Colors.black,
                        ConstantWidget.getScreenPercentSize(context, 2.5),
                        FontWeight.bold,
                        TextAlign.start,
                        1),
                  ),
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
              HtmlWidget(
                Constants.decode('Mountain Pose'),
                textStyle: TextStyle(
                    wordSpacing: 2,
                    color: Colors.black,
                    fontSize: ConstantWidget.getScreenPercentSize(context, 1.6),
                    fontFamily: Constants.fontsFamily,
                    fontWeight: FontWeight.normal),
              )
            ],
          ),
        );
      },
    );
  }

  getCompleteContent(String s, String s1, String icon) {
    double padding = ConstantWidget.getScreenPercentSize(context, 2);
    return Expanded(
      child: ConstantWidget.getShadowWidget(
          widget: Column(
            children: [
              SvgPicture.asset(
                Constants.assetsImagePath + icon,
                height: ConstantWidget.getScreenPercentSize(context, 4),
              ),
              SizedBox(
                height: ConstantWidget.getScreenPercentSize(context, 1.5),
              ),
              ConstantWidget.getTextWidget(
                  s,
                  textColor,
                  TextAlign.start,
                  FontWeight.w600,
                  ConstantWidget.getScreenPercentSize(context, 2)),
              SizedBox(
                height: ConstantWidget.getScreenPercentSize(context, 0.5),
              ),
              ConstantWidget.getTextWidget(
                  s1,
                  subTextColor,
                  TextAlign.start,
                  FontWeight.w400,
                  ConstantWidget.getScreenPercentSize(context, 1.6)),
            ],
          ),
          margin: (margin / 2),
          radius: ConstantWidget.getScreenPercentSize(context, 2),
          topPadding: padding,
          bottomPadding: padding),
      flex: 1,
    );
  }

  void sendToNext() {
    // if (_list.isNotEmpty && _list.length > 0) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return WidgetWorkout(
                );
          },
        ));
    // }
  }

  void onBackClicked() {
    Navigator.of(context).pop();
  }

  void showBottomDialog( ) {
    showModalBottomSheet<void>(
      enableDrag: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: SizeConfig.safeBlockVertical! * 72,
          decoration: getDecorationWithSide(
              radius: ConstantWidget.getScreenPercentSize(context, 4.5),
              bgColor: bgDarkWhite,
              isTopLeft: true,
              isTopRight: true),
          child: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: ConstantWidget.getScreenPercentSize(context, 1.6)),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            primary: false,
            children: [
              SizedBox(height: ConstantWidget.getScreenPercentSize(context, 4)),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ConstantWidget.getCustomTextWidget(
                        'Mountain Pose',
                        Colors.black,
                        ConstantWidget.getScreenPercentSize(context, 2.5),
                        FontWeight.bold,
                        TextAlign.start,
                        1),
                  ),
                  getDefaultButton(context, function: () {
                    Navigator.pop(context);
                  })
                ],
              ),
              SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 1.5)),
              Container(
                width: double.infinity,
                height: SizeConfig.safeBlockVertical! * 45,
                child: Center(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      "${Constants.assetsImagePath}yoga_1.png",
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: getDefaultDecoration(
                    radius: ConstantWidget.getScreenPercentSize(context, 2),
                    bgColor: cellColor),
                padding: EdgeInsets.all(
                    ConstantWidget.getScreenPercentSize(context, 2)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstantWidget.getCustomTextWidget(
                        'How to perform',
                        textColor,
                        ConstantWidget.getScreenPercentSize(context, 2),
                        FontWeight.bold,
                        TextAlign.start,
                        1),
                    SizedBox(
                      height: ConstantWidget.getScreenPercentSize(context, 1.2),
                    ),
                    HtmlWidget(
                      Constants.decode('Improve posture and coordination\nImprove posture and coordination\nImprove posture and coordination'),
                      textStyle: TextStyle(
                          wordSpacing: 2,
                          color: textColor,
                          fontSize:
                              ConstantWidget.getScreenPercentSize(context, 1.8),
                          fontFamily: Constants.fontsFamily,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void getAllData() {
    // _dataHelper
    //     .getWorkoutExerciseListByTableAndId(
    //         widget._modelWorkoutList.id, widget._modelWorkoutList.tableName)
    //     .then((value) {
    //   int pos = 0;
    //   value!.forEach((price) {
    //     _dataHelper.getExerciseDetailById(price.exerciseId!).then((value1) {
    //       try {
    //         getTime = getTime + int.parse(price.duration ?? "0");
    //         getCal = getCal +
    //             (int.parse(price.duration ?? "0") *
    //                 double.parse(value1!.kcal ?? "0"));
    //       } catch (e) {
    //         print(e);
    //       }
    //       if (pos == value.length - 1) {
    //         setState(() {});
    //       }
    //       pos++;
    //     });
    //   });
    // });
  }
}
