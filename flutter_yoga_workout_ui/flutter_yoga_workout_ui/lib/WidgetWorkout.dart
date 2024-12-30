import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:share_plus/share_plus.dart';
import 'package:workout/PrefData.dart';

import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'ColorCategory.dart';
import 'ConstantWidget.dart';
import 'Constants.dart';
import 'SizeConfig.dart';
import 'Widgets.dart';
import 'ads/AdsFile.dart';

import 'generated/l10n.dart';

class WidgetWorkout extends StatefulWidget {
  @override
  _WidgetWorkout createState() => _WidgetWorkout();
}

class WidgetSkipData extends StatefulWidget {
  final Function _functionSkip;
  final Function _functionSkipTick;

  final int totalPos;
  final int currentPos;

  WidgetSkipData(this._functionSkip, this.currentPos, this.totalPos,
      this._functionSkipTick);

  @override
  _WidgetSkipData createState() => _WidgetSkipData();
}

class _WidgetSkipData extends State<WidgetSkipData>
    with WidgetsBindingObserver {
  int skipTime = 10;
  Timer? _timer;
  int totalTime = 10;

  String currentTime = "0";

  _getRestTimes() async {
    skipTime = await PrefData().getRestTime();
    totalTime = await PrefData().getRestTime();
    setState(() {});
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    _getRestTimes();
    super.initState();
  }

  void cancelSkipTimer() {
    _timer!.cancel();
    _timer = null;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      pauseSkip();
    } else if (state == AppLifecycleState.resumed) {
      if (!isSkipDialogOpen) {
        resumeSkip();
      }
    }
  }

  void setSkipTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
        oneSec,
        (Timer timer) => {
              if (mounted)
                {
                  setState(
                    () {
                      if (skipTime < 1) {
                        cancelSkipTimer();
                        widget._functionSkip();
                      } else {
                        skipTime = skipTime - 1;
                      }
                      if (skipTime < Constants.maxTime &&
                          skipTime > Constants.minTime) {
                        widget._functionSkipTick(skipTime.toString());
                      }

                      currentTime = skipTime.toString();
                    },
                  ),
                }
            });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    if (_timer != null) {
      cancelSkipTimer();
    }
    super.dispose();
  }

  PageController controller = PageController();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  bool isSkipDialogOpen = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    if (_timer == null) {
      setSkipTimer();
    }
    double radius = Constants.getScreenPercentSize(context, 2);
    double margin = Constants.getScreenPercentSize(context, 2);
    double cellSize = ConstantWidget.getScreenPercentSize(context, 9);

    double firstHeight = ConstantWidget.getScreenPercentSize(context, 50);
    double remainHeight =
        ConstantWidget.getScreenPercentSize(context, 100) - firstHeight;
    return Container(
      key: scaffoldState,
      width: double.infinity,
      height: double.infinity,
      color: bgDarkWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: firstHeight,
            decoration: getDecorationWithSide(
                radius: ConstantWidget.getScreenPercentSize(context, 4.5),
                bgColor: bgColor,
                isBottomLeft: true,
                isBottomRight: true),
            child: Column(
              children: [
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 4),
                ),
                ConstantWidget.getTextWidget(
                    "Rest",
                    textColor,
                    TextAlign.start,
                    FontWeight.w700,
                    ConstantWidget.getPercentSize(firstHeight, 6)),
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 1),
                ),
                ConstantWidget.getTextWidget(
                    "$totalTime seconds",
                    textColor,
                    TextAlign.start,
                    FontWeight.w500,
                    ConstantWidget.getPercentSize(firstHeight, 4)),
                Expanded(
                  child: Center(
                    child: new CircularPercentIndicator(
                      radius: ConstantWidget.getPercentSize(firstHeight, 27),
                      lineWidth:
                          ConstantWidget.getPercentSize(firstHeight, 2.5),
                      circularStrokeCap: CircularStrokeCap.round,

                      // percent: 0.3,
                      percent: (double.parse(currentTime) / totalTime),

                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          new Text(
                            currentTime,
                            style: TextStyle(
                                fontFamily: Constants.fontsFamily,
                                color: textColor,
                                fontWeight: FontWeight.w700,
                                fontSize: ConstantWidget.getPercentSize(
                                    firstHeight, 8)),
                          ),
                          ConstantWidget.getTextWidget(
                              "Seconds",
                              textColor,
                              TextAlign.start,
                              FontWeight.w500,
                              ConstantWidget.getPercentSize(firstHeight, 4)),
                        ],
                      ),

                      progressColor: accentColor,
                      backgroundColor: cellColor,
                    ),
                  ),
                  flex: 1,
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: ConstantWidget.getWidthPercentSize(context, 3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 2),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margin),
                    child: ConstantWidget.getTextWidget(
                        "Coming Up",
                        textColor,
                        TextAlign.start,
                        FontWeight.w700,
                        ConstantWidget.getPercentSize(remainHeight, 5)),
                  ),
                  SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 2),
                  ),
                  ConstantWidget.getShadowWidget(
                      widget: InkWell(
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(radius))),
                          margin: EdgeInsets.symmetric(
                              horizontal: margin, vertical: margin),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(
                                      Constants.getPercentSize(cellSize, 5)),
                                  height: cellSize,
                                  width: cellSize,
                                  decoration: getDefaultDecoration(
                                      bgColor: cellColor, radius: radius),
                                  child: Image.asset(
                                    "${Constants.assetsImagePath}exercise.png",
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: ConstantWidget.getWidthPercentSize(
                                      context, 3.5),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ConstantWidget.getCustomTextWidget(
                                          'Upward Salute Left',
                                          textColor,
                                          ConstantWidget.getScreenPercentSize(
                                              context, 1.8),
                                          FontWeight.w700,
                                          TextAlign.start,
                                          1),
                                      SizedBox(
                                        height:
                                            ConstantWidget.getScreenPercentSize(
                                                context, 0.5),
                                      ),
                                      ConstantWidget.getTextWidget(
                                          "${10} ${S.of(context).seconds}",
                                          subTextColor,
                                          TextAlign.start,
                                          FontWeight.w400,
                                          ConstantWidget.getScreenPercentSize(
                                              context, 1.6)),
                                    ],
                                  ),
                                  flex: 1,
                                ),
                                IconButton(
                                  onPressed: () {
                                    isSkipDialogOpen = true;

                                    pauseSkip();
                                    showBottomDialog();
                                    // showModalBottomSheet<void>(
                                    //   enableDrag: true,
                                    //   isScrollControlled: true,
                                    //   backgroundColor: bgDarkWhite,
                                    //   shape: RoundedRectangleBorder(
                                    //     borderRadius: BorderRadius.only(
                                    //         topLeft: Radius.circular(15),
                                    //         topRight: Radius.circular(15)),
                                    //   ),
                                    //   context: context,
                                    //   builder: (context) {
                                    //     return Container(
                                    //       width: double.infinity,
                                    //       height: SizeConfig.safeBlockVertical! * 80,
                                    //       child: ListView(
                                    //         padding: EdgeInsets.all(7),
                                    //         shrinkWrap: true,
                                    //         scrollDirection: Axis.vertical,
                                    //         primary: false,
                                    //         children: [
                                    //           Container(
                                    //             width: double.infinity,
                                    //             height: SizeConfig.safeBlockVertical! * 40,
                                    //             child: PageView(
                                    //               controller: controller,
                                    //               children: <Widget>[
                                    //                 Container(
                                    //                   width: double.infinity,
                                    //                   height: double.infinity,
                                    //                   child: Stack(children: [
                                    //                     Image.network(
                                    //                       "${ConstantUrl.uploadUrl}${exerciseDetail.image}",
                                    //                       height: double.infinity,
                                    //                       width: double.infinity,
                                    //                       fit: BoxFit.contain,
                                    //                     ),
                                    //                     Visibility(
                                    //                       child: Align(
                                    //                         alignment: Alignment.topRight,
                                    //                         child: IconButton(
                                    //                           onPressed: () {
                                    //                             controller.animateToPage(1,
                                    //                                 curve: Curves.decelerate,
                                    //                                 duration: Duration(
                                    //                                     milliseconds: 300));
                                    //                           },
                                    //                           padding: EdgeInsets.all(7),
                                    //                           icon: Icon(
                                    //                             Icons.videocam,
                                    //                             color: Colors.black,
                                    //                           ),
                                    //                         ),
                                    //                       ),
                                    //                       visible: false,
                                    //                     )
                                    //                   ]),
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //           ),
                                    //           Padding(
                                    //             padding: EdgeInsets.all(7),
                                    //             child: Text(
                                    //               exerciseDetail.exerciseName!,
                                    //               style: TextStyle(
                                    //                 color: Colors.black,
                                    //                 fontWeight: FontWeight.w800,
                                    //                 fontStyle: FontStyle.italic,
                                    //                 fontSize: 20,
                                    //                 fontFamily: Constants.fontsFamily,
                                    //               ),
                                    //               textAlign: TextAlign.center,
                                    //             ),
                                    //           ),
                                    //           getCustomText("How to perform11", Colors.black, 1,
                                    //               TextAlign.start, FontWeight.w600, 18),
                                    //           SizedBox(
                                    //             height: 7,
                                    //           ),
                                    //           HtmlWidget(
                                    //             exerciseDetail.description!,
                                    //             textStyle: TextStyle(
                                    //                 color: Colors.black,
                                    //                 fontSize: 15,
                                    //                 wordSpacing: 2,
                                    //                 fontFamily: Constants.fontsFamily,
                                    //                 fontWeight: FontWeight.normal),
                                    //           )
                                    //         ],
                                    //       ),
                                    //     );
                                    //   },
                                    // ).whenComplete(() {
                                    //   isSkipDialogOpen = false;
                                    //   resumeSkip();
                                    // });
                                  },
                                  padding: EdgeInsets.all(7),
                                  icon: Icon(
                                    Icons.more_vert_rounded,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      margin: margin,
                      radius: ConstantWidget.getScreenPercentSize(context, 2)),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: margin),
                    child: StepProgressIndicator(
                      totalSteps: widget.totalPos,
                      currentStep: widget.currentPos,
                      selectedColor: textColor,
                      customStep: (int, Color, double) {
                        return Container(
                          height: 2,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: (int < widget.currentPos)
                                  ? textColor
                                  : Colors.transparent),
                        );
                      },
                      unselectedColor: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                    flex: 1,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: margin),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            skipTime = skipTime + 20;
                            totalTime = totalTime + 20;
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: margin, vertical: (margin / 2)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: cellColor),
                            child: ConstantWidget.getTextWidget(
                                "+ 20 sec",
                                textColor,
                                TextAlign.start,
                                FontWeight.w700,
                                ConstantWidget.getPercentSize(remainHeight, 4)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: margin / 2,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: margin),
                    child: ConstantWidget.getBorderButtonWidget(context, "Skip",
                        () {
                      widget._functionSkip();
                    }),
                  ),
                  SizedBox(
                    height: margin / 2,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showBottomDialog() {
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
                        FontWeight.w700,
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
                    child: Stack(children: [
                      Image.asset(
                        "${Constants.assetsImagePath}exercise.png",
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ]),
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
                        FontWeight.w700,
                        TextAlign.start,
                        1),
                    SizedBox(
                      height: ConstantWidget.getScreenPercentSize(context, 1.2),
                    ),
                    HtmlWidget(
                      Constants.decode(
                          'Improve posture and coordination\nImprove posture and coordination\nImprove posture and coordination'),
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
    ).whenComplete(() {
      isSkipDialogOpen = false;
      resumeSkip();
    });
  }

  void pauseSkip() {
    if (_timer != null) {
      cancelSkipTimer();
    }
  }

  void resumeSkip() {
    if (_timer == null) {
      setSkipTimer();
    }
  }
}

// ignore: must_be_immutable
class WidgetDetailData extends StatefulWidget {
  bool fromFirst;
  Function timerPreOverCallback;
  Function timerOverCallback;
  Function muteOverCallback;
  Function backClick;
  final int readyDuration;
  final bool isReady;
  Function setReadyFunction;
  Function _functionSkipTick;

  WidgetDetailData(
      this.timerOverCallback,
      this.timerPreOverCallback,
      this.fromFirst,
      this.isReady,
      this.readyDuration,
      this.setReadyFunction,
      this.muteOverCallback,
      this._functionSkipTick,
      this.backClick);

  @override
  State<StatefulWidget> createState() => _WidgetDetailData();
}

class _WidgetDetailData extends State<WidgetDetailData>
    with WidgetsBindingObserver {
  int totalTimerTime = 0;
  String currentTime = "";
  Timer? _timer;

  @override
  void initState() {
    _timer = null;
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  void showSoundDialog() async {
    bool isSwitched = await PrefData().getIsMute();
    bool isSwitchedSound = await PrefData().getIsSoundOn();

    double margin = ConstantWidget.getWidthPercentSize(context, 4);

    showModalBottomSheet<void>(
      enableDrag: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: SizeConfig.safeBlockVertical! * 40,
          decoration: getDecorationWithSide(
              radius: ConstantWidget.getScreenPercentSize(context, 4.5),
              bgColor: bgDarkWhite,
              isTopLeft: true,
              isTopRight: true),
          child: StatefulBuilder(builder: (context, setState) {
            return ListView(
              padding: EdgeInsets.symmetric(horizontal: margin),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              primary: false,
              children: [
                SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 4)),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ConstantWidget.getCustomTextWidget(
                          'Sound',
                          Colors.black,
                          ConstantWidget.getScreenPercentSize(context, 2.5),
                          FontWeight.w700,
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
                SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 2.5)),
                ConstantWidget.getShadowWidget(
                    widget: Row(
                      children: [
                        SvgPicture.asset(
                          Constants.assetsImagePath + 'volume.svg',
                          height:
                              ConstantWidget.getScreenPercentSize(context, 3),
                        ),
                        SizedBox(
                          width: margin / 2,
                        ),
                        Expanded(
                          child: ConstantWidget.getCustomTextWidget(
                              'TTS Voice',
                              textColor,
                              ConstantWidget.getScreenPercentSize(context, 2),
                              FontWeight.w500,
                              TextAlign.start,
                              1),
                          flex: 1,
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            trackColor: bgColor,
                            thumbColor: Colors.white,
                            activeColor: accentColor,
                          ),
                        )
                      ],
                    ),
                    radius: ConstantWidget.getScreenPercentSize(context, 2),
                    leftPadding: margin,
                    rightPadding: margin,
                    bottomPadding: (margin / 2),
                    topPadding: (margin / 2)),
                SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 2.5)),
                ConstantWidget.getShadowWidget(
                    widget: Row(
                      children: [
                        SvgPicture.asset(
                          Constants.assetsImagePath + 'volume.svg',
                          height:
                              ConstantWidget.getScreenPercentSize(context, 3),
                        ),
                        SizedBox(
                          width: margin / 2,
                        ),
                        Expanded(
                          child: ConstantWidget.getCustomTextWidget(
                              'Sound',
                              textColor,
                              ConstantWidget.getScreenPercentSize(context, 2),
                              FontWeight.w500,
                              TextAlign.start,
                              1),
                          flex: 1,
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            value: isSwitchedSound,
                            onChanged: (value) {
                              setState(() {
                                isSwitchedSound = value;
                              });
                            },
                            trackColor: bgColor,
                            thumbColor: Colors.white,
                            activeColor: accentColor,
                          ),
                        )
                      ],
                    ),
                    radius: ConstantWidget.getScreenPercentSize(context, 2),
                    leftPadding: margin,
                    rightPadding: margin,
                    topPadding: (margin / 2),
                    bottomPadding: (margin / 2)),
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 1.3),
                ),
                ConstantWidget.getButtonWidget(context, 'Save', blueButton,
                    () async {
                  widget.muteOverCallback();
                  PrefData().setIsMute(isSwitched);
                  PrefData().setIsSoundOn(isSwitchedSound);
                  Navigator.pop(context);
                }),
                SizedBox(
                  height: margin,
                ),
              ],
            );
          }),
        );
      },
    ).then((value) => pauseTimer());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state = $state');
    if (state == AppLifecycleState.paused) {
      if (_timer != null) {
        pauseTimer();
      }
    } else if (state == AppLifecycleState.resumed) {
      pauseTimer();
    }
  }

  IconData getPlayPauseIcon() {
    if (_timer == null) {
      return Icons.play_arrow_rounded;
    } else {
      return Icons.pause_rounded;
    }
  }

  void cancelTimer() {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
        oneSec,
        (Timer timer) => {
              if (mounted)
                {
                  setState(
                    () {
                      if (totalTimerTime < 1) {
                        if (!widget.isReady) {
                          widget.setReadyFunction();
                        } else {
                          cancelTimer();
                          widget.timerOverCallback();
                        }
                      } else {
                        totalTimerTime = totalTimerTime - 1;
                      }
                      if (!widget.isReady) {
                        if (totalTimerTime < Constants.maxTime &&
                            totalTimerTime > Constants.minTime) {
                          widget._functionSkipTick(totalTimerTime.toString());
                        }
                      }
                      currentTime = totalTimerTime.toString();
                    },
                  ),
                }
            });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    cancelTimer();
    super.dispose();
  }

  void showBottomDialog(bool isVideo) {
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
                        FontWeight.w700,
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
                    child: Stack(children: [
                      Image.asset(
                        "${Constants.assetsImagePath}${'exercise.png'}",
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ]),
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
                        FontWeight.w700,
                        TextAlign.start,
                        1),
                    SizedBox(
                      height: ConstantWidget.getScreenPercentSize(context, 1.2),
                    ),
                    HtmlWidget(
                      Constants.decode(
                          'Improve posture and coordination\nImprove posture and coordination\nImprove posture and coordination'),
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
    ).then((value) => pauseTimer());
  }

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    if (!widget.isReady) {
      if (_timer == null) {
        currentTime = widget.readyDuration.toString();
        totalTimerTime = widget.readyDuration;
        startTimer();
      }
    } else {
      if (widget.fromFirst) {
        widget.fromFirst = false;

        currentTime = '10';
        totalTimerTime = 10;

        if (_timer == null) {
          startTimer();
        }
      }
    }
    double progressCircle = ConstantWidget.getScreenPercentSize(context, 18);

    double margin = ConstantWidget.getWidthPercentSize(context, 3);

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: bgColor,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(),
                flex: 1,
              ),
              Container(
                height: ConstantWidget.getScreenPercentSize(context, 20),
                color: bgDarkWhite,
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        "${Constants.assetsImagePath}exercise.png",
                        fit: BoxFit.contain,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: margin, vertical: margin),
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    child: ConstantWidget
                                        .getCustomTextWithFontFamilyWidget(
                                            'Upward Salute Left',
                                            textColor,
                                            ConstantWidget.getScreenPercentSize(
                                                context, 2.2),
                                            FontWeight.w700,
                                            TextAlign.center,
                                            1),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Visibility(
                                    child: getDefaultBackButton(context,
                                        function: () {
                                      widget.backClick();
                                    }),
                                    visible: widget.isReady,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    onTap: () {
                                      pauseTimer();
                                      showSoundDialog();
                                    },
                                    child: SvgPicture.asset(
                                      Constants.assetsImagePath + 'volume.svg',
                                      height:
                                          ConstantWidget.getScreenPercentSize(
                                              context, 3),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: margin),
                            child: InkWell(
                              onTap: () {
                                pauseTimer();
                                showBottomDialog(false);
                              },
                              child: SvgPicture.asset(
                                Constants.assetsImagePath + 'Info.svg',
                                height: ConstantWidget.getScreenPercentSize(
                                    context, 3),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Visibility(
                visible: !widget.isReady,
                child: Column(
                  children: [
                    Container(
                      height: ConstantWidget.getScreenPercentSize(context, 3.8),
                      margin: EdgeInsets.symmetric(
                          horizontal:
                              ConstantWidget.getWidthPercentSize(context, 4)),
                    ),
                    ConstantWidget.getShadowWidget(
                        widget: Column(
                          children: [
                            ConstantWidget.getTextWidget(
                                currentTime,
                                Colors.black,
                                TextAlign.start,
                                FontWeight.w700,
                                ConstantWidget.getScreenPercentSize(
                                    context, 4)),
                            SizedBox(
                              height: ConstantWidget.getScreenPercentSize(
                                  context, 2),
                            ),
                            ConstantWidget.getTextWidget(
                                "Ready to go!",
                                Colors.black,
                                TextAlign.start,
                                FontWeight.w500,
                                ConstantWidget.getScreenPercentSize(
                                    context, 2)),
                            SizedBox(
                              height: ConstantWidget.getScreenPercentSize(
                                  context, 2),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.symmetric(horizontal: margin * 2),
                              child: ConstantWidget.getButtonWidget(
                                  context, 'Skip', blueButton, () {
                                setState(() {
                                  cancelTimer();
                                  widget.setReadyFunction();
                                });
                              }),
                            ),
                            SizedBox(
                              height: ConstantWidget.getScreenPercentSize(
                                  context, 1),
                            )
                          ],
                        ),
                        margin: ConstantWidget.getWidthPercentSize(context, 4),
                        radius: ConstantWidget.getScreenPercentSize(context, 2),
                        topPadding:
                            ConstantWidget.getScreenPercentSize(context, 2)),
                  ],
                ),
              ),
              Visibility(
                // visible: true,
                visible: widget.isReady,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: ConstantWidget.getScreenPercentSize(
                              context, 3.8)),
                      child: ConstantWidget.getShadowWidget(
                          widget: Opacity(opacity: 0, child: getActionWidget()),
                          margin:
                              ConstantWidget.getWidthPercentSize(context, 4),
                          radius:
                              ConstantWidget.getScreenPercentSize(context, 2)),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: progressCircle,
                          width: progressCircle,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: bgDarkWhite,
                          ),
                          padding: EdgeInsets.all(ConstantWidget.getPercentSize(
                              progressCircle, 13)),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: new CircularPercentIndicator(
                                  radius: ConstantWidget.getPercentSize(
                                      progressCircle, 36),
                                  lineWidth: ConstantWidget.getPercentSize(
                                      progressCircle, 3),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  percent: (double.parse(currentTime) / 10),
                                  center: new Text(currentTime,
                                      style: TextStyle(
                                          fontFamily: Constants.fontsFamily,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize:
                                              ConstantWidget.getPercentSize(
                                                  progressCircle, 24))),
                                  progressColor: accentColor,
                                  backgroundColor: bgColor,
                                ),
                              )
                            ],
                          )),
                    ),
                    getActionWidget(isActive: true),
                  ],
                ),
              ),
              SizedBox(
                height: ConstantWidget.getScreenPercentSize(context, 5),
              )
            ],
          ),
        ],
      ),
    );
  }

  getActionWidget({bool? isActive}) {
    double subHeight = ConstantWidget.getScreenPercentSize(context, 4.2);
    double circleSize = ConstantWidget.getScreenPercentSize(context, 6);
    return Container(
      padding:
          EdgeInsets.only(top: ConstantWidget.getScreenPercentSize(context, 5)),
      child: Column(
        children: [
          SizedBox(
            height: ConstantWidget.getScreenPercentSize(context, 13),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  if (isActive != null) {
                    cancelTimer();
                    widget.timerPreOverCallback();
                  }
                },
                child: Container(
                  height: subHeight,
                  width: subHeight,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.shade500,
                          width: ConstantWidget.getPercentSize(subHeight, 6)),
                      borderRadius: BorderRadius.all(Radius.circular(
                          ConstantWidget.getPercentSize(subHeight, 44)))),
                  child: Center(
                    child: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.grey.shade500,
                      size: ConstantWidget.getPercentSize(subHeight, 70),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: ConstantWidget.getWidthPercentSize(context, 15),
              ),
              InkWell(
                onTap: () {
                  if (isActive != null) {
                    pauseTimer();
                  }
                },
                child: Container(
                  height: circleSize,
                  width: circleSize,
                  decoration: BoxDecoration(
                      color: textColor,
                      border: Border.all(
                          color: textColor,
                          width: ConstantWidget.getPercentSize(circleSize, 6)),
                      borderRadius: BorderRadius.all(Radius.circular(
                          ConstantWidget.getPercentSize(circleSize, 40)))),
                  child: Center(
                    child: Icon(
                      getPlayPauseIcon(),
                      color: Colors.white,
                      size: ConstantWidget.getPercentSize(circleSize, 70),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: ConstantWidget.getWidthPercentSize(context, 15),
              ),
              InkWell(
                onTap: () {
                  if (isActive != null) {
                    cancelTimer();
                    widget.timerOverCallback();
                  }
                },
                child: Container(
                  height: subHeight,
                  width: subHeight,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: textColor,
                          width: ConstantWidget.getPercentSize(subHeight, 6)),
                      borderRadius: BorderRadius.all(Radius.circular(
                          ConstantWidget.getPercentSize(subHeight, 44)))),
                  child: Center(
                    child: Transform.rotate(
                      angle: math.pi,
                      child: Icon(
                        Icons.keyboard_backspace,
                        color: textColor,
                        size: ConstantWidget.getPercentSize(subHeight, 70),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void pauseTimer() {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    } else {
      startTimer();
    }
    setState(() {});
  }
}

class _WidgetWorkout extends State<WidgetWorkout> with WidgetsBindingObserver {
  int pos = 0;
  bool isSkip = false;
  double getCal = 0;
  int getTotalWorkout = 0;
  int getTime = 0;
  int totalLength = 7;

  FlutterTts? flutterTts;

  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;
  int totalDuration = 0;
  double totalCal = 0;
  int exerciseDuration = 0;
  String startTime = "";

  bool isTtsOn = true;
  bool isSoundOn = false;
  bool isReady = false;

  AudioCache audioCache = AudioCache();

  getMutes() async {
    isTtsOn = await PrefData().getIsMute();
    isSoundOn = await PrefData().getIsSoundOn();
    setState(() {});
  }

  getMutesNoRefresh() async {
    isTtsOn = await PrefData().getIsMute();
    isSoundOn = await PrefData().getIsSoundOn();
  }

  void _calcTotal() async {
    setState(() {
      getTotalWorkout = 5;
      getCal = 15 + getCal;
      getTime = 10 + getTime;
    });
  }

  void setDataByPos() {
    if (pos < totalLength) {
      pos++;
      isSkip = true;
    } else {
      isSkip = false;
    }
    exerciseDuration = 0;
    playSound(false);
    setState(() {});
  }

  void setPrevDataByPos() {
    if (pos > 0) {
      pos--;
      isSkip = false;
    }
    setState(() {});
  }

  void setAfterSkip() {
    isSkip = false;
    playSound(true);

    setState(() {});
  }

  @override
  void dispose() {
    adsFile!.disposeInterstitialAd();
    WidgetsBinding.instance.removeObserver(this);

    flutterTts!.stop();
    try {
      periodicAlDuration!.cancel();
    } catch (e) {
      print(e);
    }
    super.dispose();
  }

  void initTts() {}

  iosTTs() async {
    await flutterTts!.awaitSpeakCompletion(true);
    await flutterTts!.setSharedInstance(true);
    await flutterTts!
        .setIosAudioCategory(IosTextToSpeechAudioCategory.playAndRecord, [
      IosTextToSpeechAudioCategoryOptions.allowBluetooth,
      IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
      IosTextToSpeechAudioCategoryOptions.mixWithOthers
    ]);
  }

  Timer? periodicAlDuration;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      try {} catch (e) {
        print(e);
      }
    } else if (state == AppLifecycleState.resumed) {
      getMutesNoRefresh();
    }
  }

  AdsFile? adsFile;
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    startTime = Constants.addDateFormat.format(new DateTime.now());
    getMutes();
    flutterTts = FlutterTts();
    iosTTs();

    Future.delayed(Duration.zero, () {
      adsFile = new AdsFile(context);
      adsFile!.createInterstitialAd();
    });
    if (Platform.isIOS) {
      // audioCache.fixedPlayer?.notificationService.startHeadlessService();
    }

    _calcTotal();
    super.initState();

    periodicAlDuration = Timer.periodic(Duration(seconds: 1), (timer) {
      totalDuration++;
      exerciseDuration++;
    });
  }

  playSound(bool isSkip) async {}

  playBgSound(String isSkip) async {}

  void playSoundTicks(String val) {
    playTickSound();
    _speak(val);
  }

  playTickSound() async {}

  Future<void> share() async {
    String share = "${S.of(context).app_name}\n${Constants.getAppLink()}";
    // await Share.share(
    //   share,
    // );
    await Share.share(
      subject:  'Share',
       share,
    );
  }

  Future _speak(String txt) async {
    isTtsOn = await PrefData().getIsMute();
    if (isTtsOn) {
      if (prevSpeak != txt) {
        prevSpeak = txt;
        await flutterTts!.speak(txt);
      }
    }
  }

  String prevSpeak = "";

  void setReady() {
    isReady = true;
    setState(() {});
  }

  int readyDuration = 10;

  getDetailWidget() {
    if (isSkip) {
      _speak("Take a rest");
      playBgSound("audio3.mp3");

      return WidgetSkipData(
          // _modelExerciseDetail,
          // widget._modelExerciseList[pos],
          setAfterSkip,
          pos,
          totalLength,
          playSoundTicks);
    } else {
      if (!isReady) {
        _speak("Ready to go start with ${'Mountain Pose'}");
        playBgSound("audio1.mp3");
      } else {
        _speak('Mountain Pose');
        playBgSound("audio2.mp3");
      }

      return WidgetDetailData(
          setDataByPos,
          setPrevDataByPos,
          true,
          isReady,
          readyDuration,
          setReady,
          getMutesNoRefresh,
          playSoundTicks,
          backDialog);
    }
  }

  double margin = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    margin = ConstantWidget.getScreenPercentSize(context, 2);

    return WillPopScope(
      child: Scaffold(
          appBar:
              getColorStatusBar((pos < totalLength) ? bgColor : bgDarkWhite),
          body: SafeArea(
            child: (pos < totalLength)
                ? getDetailWidget()
                : Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: bgDarkWhite,
                    child: FutureBuilder(
                      future: null,
                      builder: (context, snapshot) {
                        return Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: bgDarkWhite,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: margin, vertical: margin),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: InkWell(
                                    child: SvgPicture.asset(
                                      Constants.assetsImagePath + "share.svg",
                                      height:
                                          ConstantWidget.getScreenPercentSize(
                                              context, 3),
                                      color: textColor,
                                    ),
                                    onTap: () {
                                      share();
                                    },
                                  ),
                                ),
                              ),

                              Container(
                                height: ConstantWidget.getScreenPercentSize(
                                    context, 20),
                                margin: EdgeInsets.only(
                                    bottom: ConstantWidget.getScreenPercentSize(
                                        context, 4)),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: SvgPicture.asset(
                                        Constants.assetsImagePath +
                                            "vector.svg",
                                        height:
                                            ConstantWidget.getScreenPercentSize(
                                                context, 8),
                                      ),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        Constants.assetsImagePath +
                                            "trophy_icon.png",
                                        height: double.infinity,
                                      ),
                                      // child: SvgPicture.asset(
                                      //   Constants.assetsImagePath +
                                      //       "trophy.svg",
                                      //   height: double.infinity,
                                      //
                                      // ),
                                    ),
                                  ],
                                ),
                              ),
                              //
                              // Container(
                              //   width: double.infinity,
                              //   height: SizeConfig.safeBlockVertical! * 30,
                              //   child: Lottie.asset(
                              //       Constants.assetsImagePath + "trophy.json",
                              //       width: double.infinity,
                              //       height: double.infinity,
                              //       reverse: false,
                              //       fit: BoxFit.contain,
                              //       repeat: false),
                              // ),
                              // SizedBox(
                              //   height: SizeConfig.safeBlockVertical! * 10,
                              // ),

                              SvgPicture.asset(
                                Constants.assetsImagePath + "rating.svg",
                                height: ConstantWidget.getScreenPercentSize(
                                    context, 7),
                                // width: SizeConfig.safeBlockHorizontal! * 50,
                                fit: BoxFit.contain,
                              ),
                              Expanded(
                                child: Container(),
                                flex: 1,
                              ),

                              ConstantWidget.getCustomText(
                                  'Mountain Pose',
                                  textColor,
                                  1,
                                  TextAlign.start,
                                  FontWeight.w700,
                                  ConstantWidget.getScreenPercentSize(
                                      context, 2.6)),

                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical:
                                        ConstantWidget.getScreenPercentSize(
                                            context, 2)),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: SvgPicture.asset(
                                        Constants.assetsImagePath +
                                            "frame_view.svg",
                                        height:
                                            SizeConfig.safeBlockHorizontal! *
                                                23,
                                        // width: SizeConfig.safeBlockHorizontal! * 50,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            top: ConstantWidget
                                                .getScreenPercentSize(
                                                    context, 1.3)),
                                        child: ConstantWidget.getCustomText(
                                            'Completed',
                                            Colors.white,
                                            1,
                                            TextAlign.start,
                                            FontWeight.w700,
                                            ConstantWidget.getScreenPercentSize(
                                                context, 2.6)),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: (margin / 2), vertical: margin),
                                child: Row(
                                  children: [
                                    getCompleteContent('7',
                                        S.of(context).exercises, category2),
                                    getCompleteContent(
                                        '12', S.of(context).kcal, category3),
                                    getCompleteContent('00:30',
                                        S.of(context).duration, category4),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(margin),
                                child: ConstantWidget.getButtonWidget(
                                    context, "Continue", accentColor, () async {
                                  sendToHome();
                                }),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    // color: Colors.red,
                  ),
          )),
      onWillPop: () async {
        backDialog();
        return false;
      },
    );
  }

  getCompleteContent(String s, String s1, Color color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: ConstantWidget.getScreenPercentSize(context, 2)),
        margin: EdgeInsets.symmetric(horizontal: (margin / 2)),
        decoration: getDefaultDecoration(
            radius: ConstantWidget.getScreenPercentSize(context, 1.8),
            bgColor: color),
        child: Column(
          children: [
            ConstantWidget.getTextWidget(
                s,
                textColor,
                TextAlign.start,
                FontWeight.w700,
                ConstantWidget.getScreenPercentSize(context, 2.2)),
            SizedBox(
              height: ConstantWidget.getScreenPercentSize(context, 0.3),
            ),
            ConstantWidget.getTextWidget(
                s1,
                textColor,
                TextAlign.start,
                FontWeight.w500,
                ConstantWidget.getScreenPercentSize(context, 1.8)),
          ],
        ),
      ),
      flex: 1,
    );
  }

  void sendToHome() {
    sendHomePage(context, 2, isPushReplace: true);
  }

  void backDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext contexts) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text('Exit'),
            content: Text('Do you really want to quite?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(contexts).pop();
                  Navigator.of(context).pop();
                },
                child: getSmallNormalText("YES", Colors.red, TextAlign.start),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(contexts).pop();
                },
                child: getSmallNormalText("N0", Colors.red, TextAlign.start),
              )
            ],
          ),
        );
      },
    );
  }
}
