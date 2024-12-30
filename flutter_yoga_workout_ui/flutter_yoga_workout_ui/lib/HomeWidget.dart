import 'dart:io';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:feedback/feedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_svg/svg.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:share_plus/share_plus.dart';
import 'package:table_calendar/table_calendar.dart';


import 'package:workout/util/CustomAnimatedBottomBar.dart';

import 'ColorCategory.dart';
import 'ConstantWidget.dart';
import 'Constants.dart';
import 'MyAssetsBar.dart';
import 'PrefData.dart';
import 'SizeConfig.dart';
import 'WidgetAllYogaWorkout.dart';
import 'WidgetChallengesExerciseList.dart';
import 'WidgetWorkoutExerciseList.dart';
import 'Widgets.dart';
import 'generated/l10n.dart';


import 'onlineData/ConstantUrl.dart';
import 'onlineData/ServiceProvider.dart';

const MethodChannel platform = MethodChannel('dexterx.dev/workout');

class HomeWidget extends StatefulWidget {
  final int indexSend;

  HomeWidget(this.indexSend);

  @override
  State<StatefulWidget> createState() => _HomeWidget(this.indexSend);
}

class Destination {
  final String title;
  final String toolbarTitle;
  final IconData icon;
  final MaterialColor color;

  const Destination(this.title, this.toolbarTitle, this.icon, this.color);
}

class TabSettings extends StatefulWidget {
  @override
  _TabSettings createState() => _TabSettings();
}

class _TabSettings extends State<TabSettings> {
  int getRestTime = 0;
  String dropdownValue = '10';
  final myController = TextEditingController();
  String remindTime = "05:30";
  int orgRemindHour = 5;
  int orgRemindMinute = 30;
  int orgRemindSec = 0;
  String remindAmPm = "AM";
  String remindDays = "";
  bool isScreenOn = false;
  bool isSwitchOn = false;

  List<String> spinnerItems = ['10', '20', '30', '40', '50', '60'];
  List<String> caloriesList = ['100', '200', '300', '400', '500', '600'];

  Future<dynamic> showUnitDialog(BuildContext contexts) async {
    bool isKg = await PrefData().getIsKgUnit();

    int _currentIndex = (isKg) ? 0 : 1;

    return showDialog(
      context: contexts,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: getMediumBoldTextWithMaxLine(
                  "Change Unit System", Colors.black87, 1),
              content: Container(
                width: 400,
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: ringTone.length,
                  itemBuilder: (context, index) {
                    return RadioListTile(
                      value: index,
                      groupValue: _currentIndex,
                      title: getSmallNormalTextWithMaxLine(
                          ringTone[index], Colors.black87, 1),
                      onChanged: (value) {
                        setState(() {
                          _currentIndex = value as int;
                        });
                      },
                    );
                  },
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    PrefData().setIsKgUnit((_currentIndex == 0) ? true : false);
                    // Navigator.pop(context);
                    Navigator.pop(context, ringTone[_currentIndex]);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      },
    ).then((value) {
      getIsKg();
      setState(() {});
    });
  }

  Future<void> _isScreenOn() async {

    remindTime = await PrefData().getRemindTime();
    remindAmPm = await PrefData().getRemindAmPm();
    isSwitchOn = await PrefData().getIsReminderOn();
    remindDays = await PrefData().getRemindDays();

    setState(() {});
  }

  int cal = 200;

  Future<void> _getDailyCal() async {
    cal = await PrefData().getDailyCalGoal();
    setState(() {
      myController.text = "$cal";
    });
  }

  bool isKg = true;

  @override
  void initState() {
    _getDailyCal();
    _getRestTimes();
    _isScreenOn();
    getIsKg();
    super.initState();
  }

  bool isLogin = false;

  void getIsKg() async {
    isKg = await PrefData().getIsKgUnit();
    isLogin = await ConstantUrl.isLogin();
    setState(() {});
  }

  _getRestTimes() async {
    getRestTime = await PrefData().getRestTime();
    dropdownValue = "$getRestTime";
  }







  openAlertBox() {
    bool isValidate = true;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                contentPadding: EdgeInsets.only(top: 10.0),
                content: Container(
                  width: 300.0,
                  padding:
                  EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      getCustomText("Set Your Daily Goal", Colors.black87, 1,
                          TextAlign.start, FontWeight.w600, 20),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              cursorColor: accentColor,
                              decoration: InputDecoration(
                                  errorText: !isValidate
                                      ? "kcal cannot be smaller than ${myController
                                      .text}?"
                                      : null,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: accentColor),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: accentColor),
                                  )),
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                  color: Colors.black,
                                  decorationColor: accentColor,
                                  fontFamily: Constants.fontsFamily),
                              controller: myController,
                            ),
                            flex: 1,
                          ),
                          getMediumNormalTextWithMaxLine(
                              "Kcal", Colors.grey, 1, TextAlign.start)
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                    ],
                  ),
                ),
                actions: [
                  new TextButton(
                      child: Text(
                        'CANCEL',
                        style: TextStyle(
                            fontFamily: Constants.fontsFamily,
                            fontSize: 15,
                            color: accentColor,
                            fontWeight: FontWeight.normal),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  new TextButton(
                    // color: lightPink,
                      style: TextButton.styleFrom(backgroundColor: lightPink),
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                            fontFamily: Constants.fontsFamily,
                            fontSize: 15,
                            color: accentColor,
                            fontWeight: FontWeight.normal),
                      ),
                      onPressed: () {
                        if (myController.text.isNotEmpty) {
                          double val = double.parse(myController.text);
                          if (val > 5000) {
                            setState(() {
                              isValidate = false;
                            });
                          } else {
                            isValidate = true;
                            PrefData().addDailyCalGoal(val.toInt());
                            _getDailyCal();
                          }
                          Navigator.pop(context);
                        } else {
                          _getDailyCal();
                          Navigator.pop(context);
                        }
                      })
                ],
              );
            },
          );
        }).then((value) {
      setState(() {});
    });
  }

  Future<void> share() async {
    String share = "${S
        .of(context)
        .app_name}\n${Constants.getAppLink()}";
    // await Share.share(
    //   share,
    // );
    await Share.share(
      subject: 'share',
       share,
    );
  }

  void showDailyCaloriesTime() async {
    String value = cal.toString();

    print("value---$value");

    double margin = ConstantWidget.getWidthPercentSize(context, 4);

    double height = ConstantWidget.getDefaultButtonSize(context);
    int _crossAxisCount = 2;
    double screenWidth = SizeConfig.safeBlockHorizontal! * 100;
    double fontSize = ConstantWidget.getPercentSize(height, 30);

    double radius = ConstantWidget.getPercentSize(height, 20);

    double _crossAxisSpacing = ConstantWidget.getScreenPercentSize(context, 2);
    var widthItem =
        (screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
            _crossAxisCount;

    double _aspectRatio = widthItem / height;


    showModalBottomSheet<void>(
      enableDrag: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: SizeConfig.safeBlockVertical! * 42,
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
                          'Daily Goal',
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
                GridView.count(
                  crossAxisCount: _crossAxisCount,
                  childAspectRatio: _aspectRatio,
                  shrinkWrap: true,
                  crossAxisSpacing: _crossAxisSpacing,
                  mainAxisSpacing: _crossAxisSpacing,
                  primary: false,
                  children: List.generate(caloriesList.length, (index) {
                    return InkWell(
                      child: Container(
                        height: height,
                        // margin: EdgeInsets.symmetric(
                        //     vertical: ConstantWidget.getScreenPercentSize(context, 1.2)),

                        decoration: getDefaultDecoration(
                            radius: radius,
                            borderColor: value == caloriesList[index]
                                ? accentColor
                                : Colors.grey.shade300),

                        child: Center(
                            child: ConstantWidget.getDefaultTextWidget(
                                '${caloriesList[index]} Calories',
                                TextAlign.center,
                                FontWeight.w500,
                                fontSize,
                                value == spinnerItems[index]
                                    ? accentColor
                                    : subTextColor)),
                      ),
                      onTap: () {
                        setState(() {
                          value = caloriesList[index];
                        });
                      },
                    );
                  }),
                ),
                SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 1.5)),
                ConstantWidget.getButtonWidget(context, "Save", accentColor,
                        () {

                        Navigator.pop(context);

                    }),
                SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 1.5)),
              ],
            );
          }),
        );
      },
    ).then((value) => _getDailyCal());
  }

  void showTrainingTime() async {
    String value = dropdownValue;

    double margin = ConstantWidget.getWidthPercentSize(context, 4);

    double height = ConstantWidget.getDefaultButtonSize(context);
    int _crossAxisCount = 2;
    double screenWidth = SizeConfig.safeBlockHorizontal! * 100;
    double fontSize = ConstantWidget.getPercentSize(height, 30);

    double radius = ConstantWidget.getPercentSize(height, 20);

    double _crossAxisSpacing = ConstantWidget.getScreenPercentSize(context, 2);
    var widthItem =
        (screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
            _crossAxisCount;

    double _aspectRatio = widthItem / height;

    showModalBottomSheet<void>(
      enableDrag: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: SizeConfig.safeBlockVertical! * 44,
          decoration: getDecorationWithSide(
              radius: ConstantWidget.getScreenPercentSize(context, 4.5),
              bgColor: bgDarkWhite,
              isTopLeft: true,
              isTopRight: true),
          child: StatefulBuilder(builder: (context, setState) {
            return ListView(
              // padding: EdgeInsets.symmetric(horizontal: margin),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              primary: false,
              children: [
                SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 4)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: margin),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ConstantWidget.getCustomTextWidget(
                            'Select Time',
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
                ),
                SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 1.5)),
                GridView.count(
                  crossAxisCount: _crossAxisCount,
                  childAspectRatio: _aspectRatio,
                  shrinkWrap: true,
                  crossAxisSpacing: _crossAxisSpacing,
                  mainAxisSpacing: _crossAxisSpacing,
                  primary: false,
                  padding: EdgeInsets.symmetric(
                      horizontal: margin, vertical: (margin / 2)),
                  children: List.generate(spinnerItems.length, (index) {
                    return InkWell(
                      child: Container(
                        height: height,
                        decoration: getDefaultDecoration(
                            radius: radius,
                            borderColor: value == spinnerItems[index]
                                ? accentColor
                                : Colors.grey.shade300),
                        child: Center(
                            child: ConstantWidget.getDefaultTextWidget(
                                '${spinnerItems[index]} Seconds',
                                TextAlign.center,
                                FontWeight.w500,
                                fontSize,
                                value == spinnerItems[index]
                                    ? accentColor
                                    : subTextColor)),
                      ),
                      onTap: () {
                        setState(() {
                          value = spinnerItems[index];
                        });
                      },
                    );
                  }),
                ),
                SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 1.5)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: margin),
                  child: ConstantWidget.getButtonWidget(
                      context, "Save", accentColor, () {
                    setState(() {
                      PrefData().addRestTime(int.parse(value));
                      dropdownValue = value;
                    });
                    Navigator.of(context).pop();
                  }),
                ),
                SizedBox(
                    height: ConstantWidget.getScreenPercentSize(context, 1.5)),
              ],
            );
          }),
        );
      },
    ).then((value) => {setState(() {})});
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
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double textMargin = SizeConfig.safeBlockHorizontal! * 2.5;

    Widget divider = Container(
      height: 1,
      color: cellColor,
    );
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: bgDarkWhite,
        padding: EdgeInsets.symmetric(horizontal: (textMargin * 1.3)),
        child: ListView(scrollDirection: Axis.vertical, children: [
          Visibility(
            visible: isLogin,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: getSettingTabTitle(context, 'Profile'.toUpperCase()),
            ),
          ),
          Visibility(
            visible: isLogin,
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ProfilePage(),
                //     ));
              },
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: textMargin),
                  child: Row(
                    children: [
                      Expanded(
                        child: getSettingSingleLineText(
                            context, 'User.svg', "Profile"),
                        flex: 1,
                      ),
                    ],
                  )),
            ),
          ),
          Visibility(child: divider, visible: isLogin),
          Visibility(
            visible: isLogin,
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ChangePasswordPage(),
                //     ));
              },
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: textMargin),
                  child: Row(
                    children: [
                      Expanded(
                        child: getSettingSingleLineText(
                            context, 'lock-svgrepo-com.svg', "Change Password"),
                        flex: 1,
                      ),
                    ],
                  )),
            ),
          ),
          Visibility(child: divider, visible: isLogin),
          SizedBox(
            height: (textMargin / 2),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: textMargin),
            child: getSettingTabTitle(context, S
                .of(context)
                .workout),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: Row(
                children: [
                  Expanded(
                    child: getSettingSingleLineText(
                        context, 'Cup.svg', "Training Rest",
                        isSubContent: true),
                    flex: 1,
                  ),
                  InkWell(
                    onTap: () {
                      showTrainingTime();
                    },
                    child: IgnorePointer(
                      ignoring: true,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: textColor,
                        ),
                        iconSize:
                        ConstantWidget.getScreenPercentSize(context, 2.5),
                        elevation: 0,
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                            fontSize: ConstantWidget.getScreenPercentSize(
                                context, 1.9),
                            fontFamily: Constants.fontsFamily),
                        underline: Container(
                          height: 0,
                          color: Colors.black12,
                        ),
                        onChanged: (value) {
                          setState(() {
                            PrefData().addRestTime(int.parse(value!));
                            dropdownValue = value;
                          });
                        },
                        onTap: () {},
                        items: spinnerItems
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value + " Sec"),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              )),
          divider,
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: Row(
                children: [
                  Expanded(
                    child: getSettingSingleLineText(
                        context, 'Goal.svg', "Daily Goal",
                        isSubContent: true),
                    flex: 1,
                  ),
                  getCustomText(
                      "${myController.text} kcal",
                      Colors.green,
                      1,
                      TextAlign.start,
                      FontWeight.w600,
                      ConstantWidget.getScreenPercentSize(context, 1.9))
                ],
              ),
            ),
            onTap: () {
              showDailyCaloriesTime();
              // openAlertBox();
            },
          ),
          divider,
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: Row(
                children: [
                  Expanded(
                    child: getSettingSingleLineText(
                        context, 'volume.svg', "Sound Options"),
                    flex: 1,
                  ),
                ],
              ),
            ),
            onTap: () async {



            },
          ),
          divider,
          SizedBox(
            height: (textMargin / 2),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: textMargin),
            child: getSettingTabTitle(context, "GENERAL"),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),

              child: getSettingSingleLineText(
                  context, 'Clock.svg', "Set Workout Reminder",
                  content: remindTime + " " + remindAmPm),

            ),
            onTap: () {

            },
          ),
          divider,
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: Row(
                children: [
                  Expanded(
                    child: getSettingSingleLineText(
                        context, 'Info.svg', "Health Info"),
                    flex: 1,
                  ),
                ],
              ),
            ),
            onTap: () {

            },
          ),
          divider,
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: getSettingSingleLineText(
                  context, 'CPU.svg', "Change Unit System",
                  content: (isKg) ? ringTone[0] : ringTone[1]),

            ),
            onTap: () {

            },
          ),
          divider,
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: Row(
                children: [
                  Expanded(
                    child: getSettingSingleLineText(
                        context, 'Mobile.svg', "Keep Screen On",
                        isSubContent: true),
                    flex: 1,
                  ),

                  Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                      value: isScreenOn,
                      onChanged: (value) {
                        setState(() {
                          isScreenOn = value;
                        });
                      },
                      trackColor: bgColor,
                      thumbColor: Colors.white,
                      activeColor: accentColor,
                    ),
                  )


                ],
              ),
            ),
            onTap: () {},
          ),
          divider,
          SizedBox(
            height: (textMargin / 2),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: textMargin),
            child: getSettingTabTitle(context, "SUPPORT US"),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: Row(
                children: [
                  Expanded(
                    child: getSettingSingleLineText(
                        context, 'Share_setting.svg', "Share With Friends"),
                    flex: 1,
                  ),
                ],
              ),
            ),
            onTap: () {
            },
          ),
          divider,
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: Row(
                children: [
                  Expanded(
                    child: getSettingSingleLineText(
                        context, 'Message-5.svg', "Feedback"),
                    flex: 1,
                  ),
                ],
              ),
            ),
            onTap: () {
              BetterFeedback.of(context).show((p0) async {
                final screenshotFilePath =
                await writeImageToStorage(p0.screenshot);
                final Email email = Email(
                  body: p0.text,
                  subject: "Feedback",
                  recipients: ['demo@gmail.com'],
                  attachmentPaths: [screenshotFilePath],
                  isHTML: false,
                );
                await FlutterEmailSender.send(email);
              });
            },
          ),
          divider,
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: Row(
                children: [
                  Expanded(
                    child: getSettingSingleLineText(
                        context, 'star-svgrepo-com.svg', "Rate Us"),
                    flex: 1,
                  ),
                ],
              ),
            ),
            onTap: () {

            },
          ),
          divider,
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: textMargin),
              child: Row(
                children: [
                  Expanded(
                    child: getSettingSingleLineText(
                        context, 'security-svgrepo-com.svg', "Privacy Policy"),
                    flex: 1,
                  ),
                ],
              ),
            ),
            onTap: () {

            },
          ),
          divider,
          SizedBox(
            height: (textMargin / 2),
          ),
          ConstantWidget.getButtonWidget(
              context, isLogin ? "Logout" : "Log In", accentColor, () {

          })
        ]));
  }


}

Future<String> writeImageToStorage(Uint8List feedbackScreenshot) async {
  final Directory output = await getTemporaryDirectory();
  final String screenshotFilePath = '${output.path}/feedback.png';
  final File screenshotFile = File(screenshotFilePath);
  await screenshotFile.writeAsBytes(feedbackScreenshot);
  return screenshotFilePath;
}



List<String> ringTone = ['Meters and kilograms', 'Pounds,Feet and inches'];

class TabHome extends StatefulWidget {
  @override
  _TabHome createState() => _TabHome();
}

class _TabHome extends State<TabHome> with TickerProviderStateMixin {
  // List<ModelChallengesMainCat> challengesList = [];

  List<Widget> progressWidget = [];
  AnimationController? animationController;
  double getCal = 0;
  int getTotalWorkout = 0;
  int getTime = 0;
  double listLength = 1;
  
  Animation<dynamic>? animation;

  @override
  void dispose() {
    // TODO: implement dispose
    try {
      animationController!.dispose();
    } catch (e) {
      print(e);
    }
    super.dispose();
  }

  @override
  void initState() {
    progressWidget.add(getProgressDialog());
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    super.initState();
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
          margin: (textMargin / 2),
          radius: ConstantWidget.getScreenPercentSize(context, 2),
          topPadding: padding,
          bottomPadding: padding),
      // child: Container(
      //   padding: EdgeInsets.symmetric(
      //       vertical: ConstantWidget.getScreenPercentSize(context, 2)),
      //   margin: EdgeInsets.symmetric(horizontal: (textMargin / 2)),
      //   decoration: getDefaultDecoration(
      //       radius: ConstantWidget.getScreenPercentSize(context, 1.8),
      //       bgColor: color),
      //   child: Column(
      //     children: [
      //       ConstantWidget.getTextWidget(
      //           s,
      //           textColor,
      //           TextAlign.start,
      //           FontWeight.bold,
      //           ConstantWidget.getScreenPercentSize(context, 2.2)),
      //
      //       SizedBox(
      //         height: ConstantWidget.getScreenPercentSize(context, 0.3),
      //       ),
      //
      //       ConstantWidget.getTextWidget(
      //           s1,
      //           textColor,
      //           TextAlign.start,
      //           FontWeight.w500,
      //           ConstantWidget.getScreenPercentSize(context, 1.8)),
      //
      //
      //     ],
      //   ),
      // ),
      flex: 1,
    );
  }

  double textMargin = 0;

  Future<PaletteGenerator?> updatePaletteGenerator(String image) async {
    PaletteGenerator paletteGenerator =
    await PaletteGenerator.fromImageProvider(
      Image
          .asset(Constants.assetsImagePath + image)
          .image,
    );
    return paletteGenerator;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sliderHeight = SizeConfig.safeBlockVertical! * 22;
    double sliderRadius = Constants.getPercentSize(sliderHeight, 12);

    textMargin = SizeConfig.safeBlockHorizontal! * 3.5;


    double height = SizeConfig.safeBlockVertical! * 25;


    List<String> challengesList = [];
    challengesList.add("yoga1.png");
    challengesList.add("yoga2.png");
    challengesList.add("yoga3.png");

    List<Container>? imageSliders =  challengesList.map((item) {

      return Container(
        child: FutureBuilder<PaletteGenerator?>(
          future: updatePaletteGenerator(item),
          builder: (context, snapshot) {
            Color color = "#99d8ef".toColor();
            if (!snapshot.hasError) {
              if (snapshot.data != null) {
                color = snapshot.data!.dominantColor!.color;
              }
            }
            return Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.only(
                  right: Constants.getWidthPercentSize(context, 4)),
              decoration: getDefaultDecoration(
                  bgColor: color.withOpacity(0.4), radius: sliderRadius),
              child: InkWell(
                onTap: () {
                  setStatusBarColor(color.withOpacity(0.4));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      new WidgetChallengesExerciseList(

                        bgColor: '#D6F4FF'.toColor(),
                      ),
                    ),
                  );
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(sliderRadius)),
                        child: Hero(
                          tag: item,
                          child: Image.asset(
                              Constants.assetsImagePath + item),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: ConstantWidget.getPercentSize(
                                sliderHeight, 15),
                            horizontal:
                            ConstantWidget.getWidthPercentSize(
                                context, 4)),
                        child: Column(
                          // mainAxisAlignment:
                          //     MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: ConstantWidget.getPercentSize(
                                      sliderHeight, 3)),
                              child: ConstantWidget.getTextWidgetWithFont(
                                  'Beginner',
                                  textColor,
                                  TextAlign.start,
                                  FontWeight.w700,
                                  ConstantWidget.getPercentSize(
                                      sliderHeight, 11),
                                  Constants.fontsFamily),
                            ),
                            ConstantWidget.getTextWidgetWithFont(
                                "7 ${S
                                    .of(context)
                                    .week}",
                                // "${item.weeks} ${S.of(context).week}",
                                textColor,
                                TextAlign.start,
                                FontWeight.w400,
                                Constants.getPercentSize(
                                    sliderHeight, 8.5),
                                Constants.fontsFamily),
                            Expanded(
                              child: Container(),
                              flex: 1,
                            ),
                            new LinearPercentIndicator(
                              width: ConstantWidget.getWidthPercentSize(
                                  context, 44),
                              lineHeight: ConstantWidget.getPercentSize(
                                  sliderHeight, 4.5),
                              percent: 0.5,
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white,
                              barRadius: Radius.circular(
                                  ConstantWidget.getPercentSize(
                                      sliderHeight, 8)),
                              progressColor: color,
                            ),
                            SizedBox(
                              height: ConstantWidget.getPercentSize(
                                  sliderHeight, 4),
                            ),
                            ConstantWidget.getTextWidgetWithFont(
                                "${10}%",
                                textColor,
                                TextAlign.start,
                                FontWeight.w400,
                                Constants.getPercentSize(sliderHeight, 8),
                                Constants.fontsFamily),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      );
    }).toList()
       ;

    setStatusBarColor(bgDarkWhite);
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: bgDarkWhite,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: double.infinity,

            margin: EdgeInsets.symmetric(
                horizontal: (textMargin / 2), vertical: textMargin),

            // margin: EdgeInsets.only(top: topMargin, bottom: topMargin),
            child: Row(
              children: [
                getCompleteContent("4", S
                    .of(context)
                    .workouts, "dumbbell.svg"),
                SizedBox(
                  width: ConstantWidget.getScreenPercentSize(context, 1),
                ),
                getCompleteContent("${Constants.calFormatter.format(10)}",
                    S
                        .of(context)
                        .kcal, "bonfire.svg"),
                SizedBox(
                  width: ConstantWidget.getScreenPercentSize(context, 1),
                ),
                getCompleteContent('00:30', 'Duration', "stopwatch.svg"),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(textMargin),
              child: getTitleTexts(context, S
                  .of(context)
                  .challenges)),
          CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                height: sliderHeight,
                // aspectRatio: 0.9,

                viewportFraction: 0.9,
                enlargeCenterPage: false,

                // viewportFraction:0.8,
                // autoPlay: false,
                // pageSnapping: false,
                // disableCenter: true,
                // enlargeCenterPage: false,
                // enableInfiniteScroll: false
              )),
          // FutureBuilder<ModelAllChallenge?>(
          //   future: getAllChallenge(context),
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData) {
          //       ModelAllChallenge? _modelAllChallenge = snapshot.data;
          //       if (_modelAllChallenge!.data!.success == 1) {
          //         List<Challenges>? challengesList =
          //             _modelAllChallenge.data!.challenges;
          //
          //         int interval =
          //             (challengesList == null) ? 1 : challengesList.length;
          //         final Animation<double> animation =
          //             Tween<double>(begin: 0.0, end: 1.0).animate(
          //           CurvedAnimation(
          //             parent: animationController!,
          //             // curve: Interval((1 /challengesList.length) * 1, 1.0,
          //             curve: Interval((1 / interval) * 1, 1.0,
          //                 curve: Curves.fastOutSlowIn),
          //           ),
          //         );
          //         animationController!.forward();
          //
          //
          //
          //         return CarouselSlider(
          //             items: imageSliders,
          //             options: CarouselOptions(
          //               height: sliderHeight,
          //               // aspectRatio: 0.9,
          //
          //               viewportFraction: 0.9,
          //               enlargeCenterPage: false,
          //
          //               // viewportFraction:0.8,
          //               // autoPlay: false,
          //               // pageSnapping: false,
          //               // disableCenter: true,
          //               // enlargeCenterPage: false,
          //               // enableInfiniteScroll: false
          //             ));
          //       } else {
          //         return Container();
          //       }
          //     } else {
          //       return getProgressDialog();
          //     }
          //   },
          // ),
          SizedBox(
            height: ConstantWidget.getScreenPercentSize(context, 1.6),
          ),
          Padding(
              padding: EdgeInsets.all(textMargin),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: getTitleTexts(context, S
                      .of(context)
                      .yoga)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WidgetAllYogaWorkout(),
                          ));
                    },
                    child: getCustomText(
                        S
                            .of(context)
                            .seeAll,
                        subTextColor,
                        1,
                        TextAlign.center,
                        FontWeight.w400,
                        ConstantWidget.getScreenPercentSize(context, 1.6)),
                  )
                ],
              )),




          Container(
            height: height,
            child: ListView.builder(
              // itemCount: workoutList!.length,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  // ModelDummySend dummySend = new ModelDummySend(
                  //     _modelWorkoutList.categoryId!,
                  //     _modelWorkoutList.category!,
                  //     ConstantUrl.urlGetWorkoutExercise,
                  //     ConstantUrl.varCatId,
                  //     getCellColor(index),
                  //     _modelWorkoutList.image!,
                  //     true,
                  //     _modelWorkoutList.description!,
                  //     CATEGORY_WORKOUT);

                  return Container(
                    height: height,
                    width: ConstantWidget.getWidthPercentSize(context, 33),
                    // color: Colors.red,
                    decoration: getDefaultDecoration(
                        radius: ConstantWidget.getPercentSize(height, 10),
                        bgColor: getCellColor(index)),
                    margin: EdgeInsets.only(left: textMargin),
                    child: InkWell(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Hero(
                              tag: 'yoga_${(index + 1)}.png',
                              child: Image.asset(
                                '${Constants.assetsImagePath +
                                    'yoga_${(index + 1)}.png'}',
                                height:
                                ConstantWidget.getPercentSize(height, 65),
                              ),
                            ),
                            SizedBox(
                              height: ConstantWidget.getPercentSize(height, 5),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical:
                                  ConstantWidget.getPercentSize(height, 2)),
                              child: ConstantWidget.getTextWidgetWithFont(
                                  'Yoga',
                                  textColor,
                                  TextAlign.start,
                                  FontWeight.bold,
                                  ConstantWidget.getPercentSize(height, 8.5),
                                  Constants.fontsFamily),
                            ),



                            ConstantWidget.getTextWidgetWithFont(
                                "12 ${S
                                    .of(context)
                                    .exercises}",
                                textColor,
                                TextAlign.start,
                                FontWeight.w400,
                                Constants.getPercentSize(height, 7),
                                Constants.fontsFamily)

                          ],
                        ),
                      ),
                      onTap: () {
                        sendToWorkoutList(context, getCellColor(index));
                        print("sendtidetail1==true");
                      },
                    ),
                  );
                }),
          )


        ],
      ),
    );
  }
}

void sendToWorkoutList(BuildContext context, Color color) {
  // ModelDummySend dummySend = new ModelDummySend(
  //     modelWorkoutList.categoryId!,
  //     modelWorkoutList.category!,
  //     Constants.getTableNames(id),
  //     modelWorkoutList.image!,
  //     "");

  // ModelDummySend dummySend =
  // new ModelDummySend(
  //     modelWorkoutList
  //         .categoryId!,
  //     modelWorkoutList
  //         .category!,
  //     ConstantUrl
  //         .urlGetWorkoutExercise,
  //     ConstantUrl
  //         .varCatId,color,modelWorkoutList);

  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) {
      return WidgetWorkoutExerciseList(color);
    },
  ));
}

class TabActivity extends StatefulWidget {
  @override
  _TabActivity createState() => _TabActivity();
}

class _TabActivity extends State<TabActivity> {
  DateTime selectedDateTime = DateTime.now();

  int bmi = 0;

  double getTotalCal = 0;
  double getTodayTotalCal = 0;
  int getTodayTotalDuration = 0;
  int getTodayTotalWorkout = 0;
  double getCal = 0;
  int getTotalWorkout = 0;

  int getTime = 0;

  var myController = TextEditingController();
  var myControllerWeight = TextEditingController();
  var myControllerIn = TextEditingController();
  


  void _calcTotalCal() async {
  }

  int prefCal = 0;
  double weight = 50;
  double height = 100;
  bool isKg = true;

  getHeights() async {
    double getWeight = await PrefData().getWeight();
    double getHeight = await PrefData().getHeight();
    isKg = await PrefData().getIsKgUnit();
    weight = getWeight;
    height = getHeight;
    getBmiVal();
  }

  @override
  void initState() {
    getPrefCalData();
    _calcTotalCal();
    super.initState();
    getHeights();
  }

  Future<void> getPrefCalData() async {
    prefCal = await PrefData().getDailyCalGoal();
    setState(() {});
  }

  void showWeightHeightDialog(BuildContext contexts) async {
    return showDialog(
      context: contexts,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: getMediumBoldTextWithMaxLine(
                  "Enter Height and Weight", Colors.black87, 1),
              content: Container(
                width: 300.0,
                padding:
                EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    getCustomText("Height", Colors.black87, 1, TextAlign.start,
                        FontWeight.w600, 20),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            cursorColor: accentColor,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: accentColor),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: accentColor),
                                )),
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black,
                                decorationColor: accentColor,
                                fontFamily: Constants.fontsFamily),
                            controller: myController,
                          ),
                          flex: 1,
                        ),
                        Visibility(
                          child: Text(
                            " , ",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black,
                                decorationColor: accentColor,
                                fontFamily: Constants.fontsFamily),
                          ),
                          visible: (!isKg) ? true : false,
                        ),
                        Visibility(
                          child: Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              cursorColor: accentColor,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: accentColor),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: accentColor),
                                  )),
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                  color: Colors.black,
                                  decorationColor: accentColor,
                                  fontFamily: Constants.fontsFamily),
                              controller: myControllerIn,
                            ),
                            flex: 1,
                          ),
                          visible: (!isKg) ? true : false,
                        ),
                        getMediumNormalTextWithMaxLine((isKg) ? "CM" : "FT/In",
                            Colors.grey, 1, TextAlign.start)
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    getCustomText("Weight", Colors.black87, 1, TextAlign.start,
                        FontWeight.w600, 20),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            cursorColor: accentColor,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: accentColor),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: accentColor),
                                )),
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black,
                                decorationColor: accentColor,
                                fontFamily: Constants.fontsFamily),
                            controller: myControllerWeight,
                          ),
                          flex: 1,
                        ),
                        getMediumNormalTextWithMaxLine((isKg) ? "KG" : "LBS",
                            Colors.grey, 1, TextAlign.start)
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                new TextButton(
                    child: Text(
                      'CANCEL',
                      style: TextStyle(
                          fontFamily: Constants.fontsFamily,
                          fontSize: 15,
                          color: accentColor,
                          fontWeight: FontWeight.normal),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                new TextButton(
                  // color: lightPink,
                    style: TextButton.styleFrom(backgroundColor: lightPink),
                    child: Text(
                      'CHECK',
                      style: TextStyle(
                          color: accentColor,
                          fontFamily: Constants.fontsFamily,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    onPressed: () {
                      if (myController.text.isNotEmpty) {
                        if (isKg) {
                          height = double.parse(myController.text);
                        } else {
                          double inch = 0;
                          if (myControllerIn.text.isNotEmpty) {
                            inch = double.parse(myControllerIn.text);
                          }
                          double feet = double.parse(myController.text);
                          double cm = Constants.feetAndInchToCm(feet, inch);
                          height = cm;
                        }
                        PrefData().addHeight(height);
                      }

                      if (myControllerWeight.text.isNotEmpty) {
                        double weight1 = double.parse(myControllerWeight.text);
                        if (isKg) {
                          weight = weight1;
                          PrefData().addWeight(weight1);
                        } else {
                          weight = Constants.poundToKg(weight1);
                          PrefData().addWeight(weight);
                        }
                      }
                      Navigator.pop(context, weight);
                    }),
              ],
            );
          },
        );
      },
    ).then((value) {
      getBmiVal();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void getBmiVal() {
    double weightKg = weight;
    double heightCm = height;

    double meterHeight = heightCm / 100;
    double bmiGet = weightKg / (meterHeight * meterHeight);
    setState(() {
      bmi = bmiGet.toInt();
    });
  }

  double getProgressPercent(double val) {
    return val / 100;
  }

  @override
  Widget build(BuildContext context) {
    double textMargin = SizeConfig.safeBlockHorizontal! * 3.5;
    SizeConfig().init(context);

    double radius = ConstantWidget.getScreenPercentSize(context, 2.5);
    return Container(
      color: bgDarkWhite,
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: textMargin),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ConstantWidget.getTextWidget(
                    "Today",
                    textColor,
                    TextAlign.start,
                    FontWeight.bold,
                    ConstantWidget.getScreenPercentSize(context, 1.8)),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: (textMargin / 2)),
                  padding: EdgeInsets.symmetric(
                      horizontal: textMargin / 2, vertical: (textMargin / 4)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                            ConstantWidget.getScreenPercentSize(context, 2)),
                      ),
                      color: category3),
                  child: ConstantWidget.getTextWidget(
                      Constants.showDateFormat.format(new DateTime.now()),
                      textColor,
                      TextAlign.start,
                      FontWeight.bold,
                      ConstantWidget.getScreenPercentSize(context, 1.4)),
                ),

                // getSmallBoldText("Stats |", Colors.black),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(textMargin),
            child: new CircularPercentIndicator(
              radius: ConstantWidget.getScreenPercentSize(context, 14),
              circularStrokeCap: CircularStrokeCap.round,
              lineWidth: ConstantWidget.getScreenPercentSize(context, 1.8),
              linearGradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  "#FE8E6B".toColor(),
                  "#FCAA73".toColor(),
                  "#FACC7E".toColor(),
                  "#F9E685".toColor(),
                  "#B4EE95".toColor(),
                ],
              ),
              percent: ((((getTotalCal * 100) / prefCal) / 100) > 1.0)
                  ? 1.0
                  : (((getTotalCal * 100) / prefCal) / 100),
              center: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: ConstantWidget.getScreenPercentSize(context, 4),
                    width: ConstantWidget.getScreenPercentSize(context, 4),
                    decoration:
                    BoxDecoration(color: category6, shape: BoxShape.circle),
                    child: Center(
                      child: SvgPicture.asset(
                        Constants.assetsImagePath + "bonfire.svg",
                        height:
                        ConstantWidget.getScreenPercentSize(context, 2.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Constants.getScreenPercentSize(context, 1),
                  ),
                  getCustomText(
                      "${Constants.calFormatter.format(getTotalCal)}/$prefCal",
                      Colors.black,
                      1,
                      TextAlign.start,
                      FontWeight.bold,
                      Constants.getScreenPercentSize(context, 3)),
                  SizedBox(
                    height: Constants.getScreenPercentSize(context, 1),
                  ),
                  getCustomText(
                      "KCAL",
                      Colors.black,
                      1,
                      TextAlign.start,
                      FontWeight.bold,
                      Constants.getScreenPercentSize(context, 2)),
                ],
              ),
              backgroundColor: cellColor,
            ),
          ),
          SizedBox(
            height: ConstantWidget.getScreenPercentSize(context, 4),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: textMargin),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical:
                        ConstantWidget.getScreenPercentSize(context, 2)),
                    decoration: getDefaultDecoration(
                        bgColor: bgColor,
                        radius:
                        ConstantWidget.getScreenPercentSize(context, 1.5)),
                    child: Center(
                      child: ConstantWidget.getTextWidget(
                          "$getTodayTotalWorkout workouts",
                          textColor,
                          TextAlign.start,
                          FontWeight.w600,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                    ),
                  ),
                  flex: 1,
                ),
                SizedBox(
                  width: ConstantWidget.getWidthPercentSize(context, 4),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical:
                        ConstantWidget.getScreenPercentSize(context, 2)),
                    decoration: getDefaultDecoration(
                        bgColor: bgColor,
                        radius:
                        ConstantWidget.getScreenPercentSize(context, 1.5)),
                    child: Center(
                      child: ConstantWidget.getTextWidget(
                          "${Constants.getTimeFromSec(
                              getTodayTotalDuration)} minutes",
                          textColor,
                          TextAlign.start,
                          FontWeight.w600,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: ConstantWidget.getScreenPercentSize(context, 2),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: textMargin),
            width: double.infinity,
            height: SizeConfig.safeBlockVertical! * 32,
            decoration:
            getDefaultDecoration(radius: radius, bgColor: accentColor),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Image.asset(
                        Constants.assetsImagePath + "path.png",
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            child: getSmallBoldText(
                              "BMI",
                              Colors.white,
                            ),
                            padding: EdgeInsets.all(
                                ConstantWidget.getScreenPercentSize(
                                    context, 2)),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: getCustomText(
                                (isKg)
                                    ? "$bmi kg/m²"
                                    : "${Constants.formatter.format(
                                    Constants.kgToPound(
                                        bmi.toDouble()))} lb/in²",
                                Colors.white,
                                1,
                                TextAlign.center,
                                FontWeight.bold,
                                22),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                (bmi < 18)
                                    ? "Underweight"
                                    : (bmi < 25)
                                    ? "Normal Weight"
                                    : (bmi < 30)
                                    ? "Overweight"
                                    : "Obesity",
                                style: TextStyle(
                                    color: Constants.getColorFromHex("FBC02D"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    fontStyle: FontStyle.italic),
                                textAlign: TextAlign.center,
                                maxLines: 1,
                              )),
                          Expanded(
                            child: Center(
                              child: Container(
                                height: ConstantWidget.getScreenPercentSize(
                                    context, 4),
                                child: MyAssetsBar(
                                  width: SizeConfig.safeBlockHorizontal! * 90,
                                  background:
                                  Constants.getColorFromHex("CFD8DC"),
                                  height: ConstantWidget.getScreenPercentSize(
                                      context, 4),
                                  radius: 5,
                                  pointer: bmi,
                                  assetsLimit: 50,
                                  order: OrderType.None,
                                  assets: [
                                    MyAsset(
                                        size: 15,
                                        color:
                                        Constants.getColorFromHex("D0E2E2"),
                                        title: "0"),
                                    MyAsset(
                                        size: 3,
                                        color:
                                        Constants.getColorFromHex("9ADF9C"),
                                        title: "16"),
                                    MyAsset(
                                        size: 7,
                                        color:
                                        Constants.getColorFromHex("1EDC3E"),
                                        title: "18"),
                                    MyAsset(
                                        size: 5,
                                        color:
                                        Constants.getColorFromHex("DCE683"),
                                        title: "25"),
                                    MyAsset(
                                        size: 5,
                                        color:
                                        Constants.getColorFromHex("FF9A00"),
                                        title: "30"),
                                    MyAsset(
                                        size: 5,
                                        color:
                                        Constants.getColorFromHex("E26F76"),
                                        title: "35"),
                                    MyAsset(
                                        size: 10,
                                        color:
                                        Constants.getColorFromHex("EF3737"),
                                        title: "40"),
                                  ],
                                ),
                              ),
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 1.5),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal:
                      ConstantWidget.getWidthPercentSize(context, 5)),
                  child: ConstantWidget.getBorderButtonWidget(
                      context, "Check Now", () {
                    if (isKg) {
                      myController.text = Constants.formatter.format(height);
                      myControllerWeight.text =
                          Constants.formatter.format(weight);
                    } else {
                      Constants.meterToInchAndFeet(
                          height, myController, myControllerIn);
                      myControllerWeight.text = Constants.formatter
                          .format(Constants.kgToPound(weight));
                    }
                    showWeightHeightDialog(context);
                  },
                      borderColor: cellColor,
                      btnHeight:
                      ConstantWidget.getScreenPercentSize(context, 5)),
                ),
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 1.5),
                )
              ],
            ),
          ),
          SizedBox(
            height: ConstantWidget.getScreenPercentSize(context, 3),
          ),
          ConstantWidget.getShadowWidget(
              margin: textMargin,
              widget: Container(
                child: TableCalendar(
                  availableGestures: AvailableGestures.none,
                  firstDay: new DateTime(2018, 1, 13),
                  lastDay: DateTime.now().add(Duration(days: 365)),
                  focusedDay: selectedDateTime,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  selectedDayPredicate: (day) {
                    return isSameDay(selectedDateTime, day);
                  },
                  eventLoader: (day) {
                    return [];
                  },
                  calendarStyle: CalendarStyle(
                    markerDecoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    todayDecoration: BoxDecoration(
                        color: Colors.orange, shape: BoxShape.circle),
                    outsideDaysVisible: false,
                    selectedTextStyle: TextStyle(color: Colors.white),
                    selectedDecoration: BoxDecoration(
                        color: accentColor, shape: BoxShape.circle),
                    canMarkersOverflow: false,
                    weekendTextStyle: TextStyle(
                        color: Colors.black, fontFamily: Constants.fontsFamily),
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                      weekendStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: Constants.fontsFamily,
                          fontSize:
                          ConstantWidget.getScreenPercentSize(context, 1.5),
                          fontWeight: FontWeight.w600),
                      weekdayStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: Constants.fontsFamily,
                          fontSize:
                          ConstantWidget.getScreenPercentSize(context, 1.5),
                          fontWeight: FontWeight.w600)),
                  headerStyle: HeaderStyle(
                    titleTextStyle: TextStyle(
                        color: textColor,
                        fontSize:
                        ConstantWidget.getScreenPercentSize(context, 2),
                        fontWeight: FontWeight.w600),
                    formatButtonTextStyle: TextStyle()
                        .copyWith(color: Colors.transparent, fontSize: 0),
                    formatButtonDecoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  onDaySelected: (day, events) {
                    selectedDateTime = day;
                    setState(() {});
                  },
                ),
              ),
              radius: radius),

          SizedBox(
            height: ConstantWidget.getScreenPercentSize(context, 3),
          ),

          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal:
                textMargin),
                child: Row(
                  children: [
                    Expanded(
                      child: getCustomText(
                          'Summary',
                          textColor,
                          1,
                          TextAlign.start,
                          FontWeight.w700,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                      flex: 1,
                    ),
                    getCustomText(
                        addDateFormat.format(selectedDateTime),
                        textColor,
                        1,
                        TextAlign.center,
                        FontWeight.w500,
                        ConstantWidget.getScreenPercentSize(context, 2)),
                  ],
                ),
              ),
              SizedBox(
                height: ConstantWidget.getScreenPercentSize(context, 3),
              ),
              // Container(
              //   child: ListView.builder(
              //       itemCount: 2,
              //       scrollDirection: Axis.vertical,
              //       primary: false,
              //       shrinkWrap: true,
              //       itemBuilder: (context, index) {
              //
              //
              //
              //         Color color = category1;
              //
              //         if (index % 4 == 0) {
              //           color = category1;
              //         } else if (index % 4 == 1) {
              //           color = category2;
              //         } else if (index % 4 == 2) {
              //           color = category3;
              //         } else if (index % 4 == 2) {
              //           color = category4;
              //         }
              //         return Container(
              //           margin: EdgeInsets.only(
              //               bottom: ConstantWidget.getScreenPercentSize(
              //                   context, 2),
              //               left: textMargin,
              //               right: textMargin),
              //           padding: EdgeInsets.symmetric(
              //               vertical:
              //               ConstantWidget.getScreenPercentSize(
              //                   context, 2),
              //               horizontal:
              //               ConstantWidget.getWidthPercentSize(
              //                   context, 2)),
              //           decoration: getDefaultDecoration(
              //               radius: ConstantWidget.getScreenPercentSize(
              //                   context, 2),
              //               bgColor: color),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               getCustomText(
              //                   'Sun Salute',
              //                   textColor,
              //                   1,
              //                   TextAlign.center,
              //                   FontWeight.w700,
              //                   ConstantWidget.getScreenPercentSize(
              //                       context, 2.2)),
              //               SizedBox(
              //                 height:
              //                 ConstantWidget.getScreenPercentSize(
              //                     context, 1),
              //               ),
              //               getCustomText(
              //                   '15-06-22',
              //                   subTextColor,
              //                   1,
              //                   TextAlign.center,
              //                   FontWeight.w400,
              //                   ConstantWidget.getScreenPercentSize(
              //                       context, 1.8)),
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.end,
              //                 children: [
              //                   getSubItem("timer.png",
              //                       "${15} ${S
              //                           .of(context)
              //                           .kcal}"),
              //                   getSubItem(
              //                       "cal.png",
              //                       '00:30')
              //                 ],
              //               )
              //             ],
              //           ),
              //         );
              //       }),
              // ),
            ],
          )


        ],
      ),
    );
  }

  getSubItem(String s, String s1) {
    return Container(
      margin: EdgeInsets.only(
          right: ConstantWidget.getWidthPercentSize(context, 2)),
      padding: EdgeInsets.symmetric(
          horizontal: ConstantWidget.getWidthPercentSize(context, 2),
          vertical: ConstantWidget.getScreenPercentSize(context, 1)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(
              ConstantWidget.getScreenPercentSize(context, 15)))),
      child: Row(
        children: [
          Image.asset(
            Constants.assetsImagePath + s,
            height: ConstantWidget.getScreenPercentSize(context, 2),
            width: ConstantWidget.getScreenPercentSize(context, 2),
            color: textColor,
          ),
          SizedBox(
            width: ConstantWidget.getWidthPercentSize(context, 1),
          ),
          getCustomText(s1, textColor, 1, TextAlign.center, FontWeight.w600,
              ConstantWidget.getScreenPercentSize(context, 1.6)),
        ],
      ),
    );
  }
}

class TabDiscover extends StatefulWidget {
  @override
  _TabDiscover createState() => _TabDiscover();
}

var cardAspectRatio = 16.0 / 20.0;
var widgetAspectRatio = cardAspectRatio * 1.2;



class _TabDiscover extends State<TabDiscover> {

  

  var currentPage = 2 - 1.0;

  @override
  void initState() {
   
    

    super.initState();
  }

  final listController =
  AutoScrollController(axis: Axis.horizontal, suggestedRowHeight: 200);

  CarouselSliderController buttonCarouselController = CarouselSliderController();

  int _current = 0;
  List<String> _discoverList = [
    "Spring Season",
    "Summer Season",
    "Spring Season",
    "Summer Season"
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    PageController controller =
    PageController(initialPage: _discoverList.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });

    double textMargin = SizeConfig.safeBlockHorizontal! * 3.5;
    double quickWorkoutHeight = SizeConfig.safeBlockHorizontal! * 42;
    double quickWorkoutSize = SizeConfig.safeBlockHorizontal! * 37;

    double sliderHeight = Constants.getScreenPercentSize(context, 42);



    double listHeight = Constants.getScreenPercentSize(context, 4.5);

    List<Container>? imageSliders =
    _discoverList.map((item) {


      return Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(
            right:
            Constants.getWidthPercentSize(
                context, 4)),

        child: InkWell(
            onTap: () {

              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return WidgetWorkoutExerciseList('#D6F4FF'.toColor());
                            },
                          ));
            },

            child: Image.asset(
              Constants.assetsImagePath + "season.png", height: double.infinity,
              width: double.infinity,)

        ),
      );
    }).toList()
    ;
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: bgDarkWhite,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
              StatefulBuilder(
                builder: (context, setState) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: textMargin),
                        height: listHeight * 2,
                        child: ListView.builder(
                          shrinkWrap: true,
                          controller: listController,
                          itemCount: _discoverList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return AutoScrollTag(
                              key: ValueKey(index),
                              controller: listController,
                              index: index,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _current = index;
                                    buttonCarouselController
                                        .jumpToPage(index);
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: (textMargin),
                                      bottom: (listHeight / 1.5),
                                      top: (listHeight / 4),
                                      right:
                                      ((_discoverList.length -
                                          1) ==
                                          index)
                                          ? textMargin
                                          : 0),
                                  child: ConstantWidget
                                      .getShadowWidget(
                                      widget: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                            ConstantWidget
                                                .getScreenPercentSize(
                                                context,
                                                1)),
                                        decoration: getDefaultDecoration(
                                            radius: ConstantWidget
                                                .getPercentSize(
                                                listHeight,
                                                30),
                                            bgColor: _current ==
                                                index
                                                ? accentColor
                                                : Colors.white),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment
                                                  .centerLeft,
                                              child: getCustomText(
                                                  _discoverList[
                                                  index],
                                                  _current ==
                                                      index
                                                      ? Colors
                                                      .white
                                                      : subTextColor,
                                                  1,
                                                  TextAlign
                                                      .start,
                                                  FontWeight
                                                      .w600,
                                                  Constants
                                                      .getPercentSize(
                                                      listHeight,
                                                      32)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      radius: ConstantWidget
                                          .getPercentSize(
                                          listHeight, 30),
                                      color: _current == index
                                          ? accentColor
                                          : Colors.white,
                                      isShadow:
                                      _current == index
                                          ? false
                                          : true),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      CarouselSlider(
                          items: imageSliders,
                          carouselController:
                          buttonCarouselController,
                          options: CarouselOptions(
                              height: sliderHeight,
                              autoPlay: false,
                              pageSnapping: true,
                              viewportFraction: 0.9,
                              enlargeCenterPage: false,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                  listController
                                      .scrollToIndex(index);

                                  print("index---$index");
                                });
                              },
                              enableInfiniteScroll: false)),
                    ],
                  );
                },
              ),
            

            Padding(
                padding: EdgeInsets.all(textMargin),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child:
                        getTitleTexts(context, S
                            .of(context)
                            .yogaStyles)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WidgetAllYogaWorkout(),
                            ));
                      },
                      child: getCustomText(
                          S
                              .of(context)
                              .seeAll,
                          subTextColor,
                          1,
                          TextAlign.center,
                          FontWeight.w600,
                          ConstantWidget.getScreenPercentSize(context, 1.6)),
                    )
                  ],
                )),



            Container(
              height: quickWorkoutHeight,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {

                  Color color = "#99d8ef".toColor();

                  int position = index;

                  if (position % 4 == 0) {
                    color = "#aeacf9".toColor();
                  } else if (position % 4 == 1) {
                    color = "#fda0dd".toColor();
                  } else if (position % 4 == 2) {
                    color = "#81c1fe".toColor();
                  }

                  return InkWell(
                    child: Container(
                      width: quickWorkoutSize,
                      height: double.infinity,
                      margin: EdgeInsets.only(left: (textMargin/1.5)),

                      child: Column(
                        children: [
                          Container(
                            height: ConstantWidget.getPercentSize(
                                quickWorkoutHeight, 65),
                            margin: EdgeInsets.only(
                                bottom: Constants.getPercentSize(
                                    quickWorkoutHeight, 5)),

                            child: Center(
                              child: Image.asset(
                                  Constants.assetsImagePath +
                                      'cell_${(index + 1)}.png',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          ConstantWidget.getCustomText(
                            'Hatha Yoga',
                            textColor,
                            1,
                            TextAlign.center,
                            FontWeight.w400,
                            ConstantWidget.getPercentSize(
                                quickWorkoutHeight, 8),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      // ModelDummySend dummySend = new ModelDummySend(
                      //     _modelQuickWorkout.quickworkoutId!,
                      //     _modelQuickWorkout.quickworkout!,
                      //     ConstantUrl.urlGetQuickWorkoutExercise,
                      //     ConstantUrl.varQuickWorkoutId,
                      //     color,
                      //     _modelQuickWorkout.image!,
                      //     true,
                      //     _modelQuickWorkout.desc!,
                      //     QUICK_WORKOUT);
                      //
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return WidgetWorkoutExerciseList(color);
                        },
                      ));
                      // //

                    },
                  );
                },
              ),
            )


            // FutureBuilder<List<ModelYogaStyle>?>(
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData &&
            //         snapshot.connectionState == ConnectionState.done) {
            //       List<ModelYogaStyle> yogaStyleWorkoutList = snapshot.data!;
            //
            //       return Container(
            //         margin: EdgeInsets.all(5),
            //         height: quickWorkoutHeight,
            //         child: ListView.builder(
            //           itemCount: yogaStyleWorkoutList.length,
            //           scrollDirection: Axis.horizontal,
            //           itemBuilder: (context, index) {
            //             ModelYogaStyle _modelQuickWorkout =
            //                 yogaStyleWorkoutList[index];
            //
            //             double radius =
            //                 Constants.getPercentSize(quickWorkoutHeight, 20);
            //
            //             Color color = "#99d8ef".toColor();
            //
            //             int position = index;
            //
            //             if (position % 4 == 0) {
            //               color = "#aeacf9".toColor();
            //             } else if (position % 4 == 1) {
            //               color = "#fda0dd".toColor();
            //             } else if (position % 4 == 2) {
            //               color = "#81c1fe".toColor();
            //             }
            //
            //             return InkWell(
            //               child: Container(
            //                 width: quickWorkoutSize,
            //                 height: double.infinity,
            //                 margin: EdgeInsets.all(7),
            //                 decoration: BoxDecoration(
            //                   borderRadius:
            //                       BorderRadius.all(Radius.circular(radius)),
            //                   color: color,
            //                 ),
            //                 child: Stack(
            //                   children: [
            //                     Center(
            //                       child: Container(
            //                         margin: EdgeInsets.all(
            //                             Constants.getPercentSize(
            //                                 quickWorkoutHeight, 3)),
            //                         child: Image.asset(
            //                             Constants.assetsImagePath +
            //                                 _modelQuickWorkout.image!,
            //                             fit: BoxFit.cover),
            //                       ),
            //                     ),
            //                     Container(
            //                       height: double.infinity,
            //                       width: double.infinity,
            //                       padding: EdgeInsets.symmetric(
            //                           horizontal: Constants.getPercentSize(
            //                               quickWorkoutHeight, 5)),
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.all(
            //                             Radius.circular(radius)),
            //                         color: Colors.black26,
            //                       ),
            //                       child: Center(
            //                           child: ConstantWidget
            //                               .getTextWidgetWithFontWithMaxLine(
            //                                   _modelQuickWorkout.name!,
            //                                   Colors.white,
            //                                   TextAlign.center,
            //                                   FontWeight.w600,
            //                                   ConstantWidget.getPercentSize(
            //                                       quickWorkoutHeight, 13),
            //                                   Constants.boldFontsFamily,
            //                                   2)),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               onTap: () {
            //                 // ModelDummySend dummySend = new ModelDummySend(
            //                 //     _modelQuickWorkout.id!,
            //                 //     _modelQuickWorkout.name!,
            //                 //     Constants.getTableNames(
            //                 //         Constants.yogaStyleWorkoutId),
            //                 //     _modelQuickWorkout.image!,
            //                 //     "",
            //                 //     bgColor: color);
            //                 // Navigator.of(context).push(MaterialPageRoute(
            //                 //   builder: (context) {
            //                 //     return WidgetWorkoutExerciseList(dummySend);
            //                 //   },
            //                 // ));
            //               },
            //             );
            //           },
            //         ),
            //       );
            //     } else {
            //       return getProgressDialog();
            //     }
            //   },
            //   future: _dataHelper.getAllYogaStyleList(),
            // ),
            ,
            Padding(
                padding: EdgeInsets.all(textMargin),
                child: getTitleTexts(context, S
                    .of(context)
                    .bodyFitness)),

            Container(
              margin: EdgeInsets.all(5),
              child: ListView.builder(
                itemCount: 5,
                primary: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {


                  Color color = category1;

                  if (index % 6 == 0) {
                    color = category2;
                  } else if (index % 6 == 1) {
                    color = category3;
                  } else if (index % 6 == 2) {
                    color = category4;
                  } else if (index % 6 == 2) {
                    color = category5;
                  } else if (index % 6 == 2) {
                    color = category6;
                  } else if (index % 6 == 2) {
                    color = category7;
                  }
                  double cellSize =
                  ConstantWidget.getScreenPercentSize(context, 9);

                  double radius =
                  Constants.getScreenPercentSize(context, 2);
                  return ConstantWidget.getShadowWidget(
                    leftPadding: (textMargin / 1.7),
                    rightPadding: textMargin,
                    topPadding: (textMargin / 2),
                    bottomPadding: (textMargin / 2),
                    radius: radius,
                    horizontalMargin: (textMargin / 1.2),
                    verticalMargin: (textMargin / 2),
                    widget: InkWell(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(
                                  Constants.getPercentSize(
                                      cellSize, 4)),
                              height: cellSize,
                              width: cellSize,

                              decoration: getDefaultDecoration(
                                  bgColor: color, radius: radius),

                              child: Image.asset(
                                Constants.assetsImagePath+
                                    'body_${(index+1)}.png',
                                fit: BoxFit.contain,
                                width: Constants.getPercentSize(
                                    cellSize, 70),
                                height: Constants.getPercentSize(
                                    cellSize, 70),
                              ),
                            ),
                            SizedBox(
                              width: ConstantWidget.getWidthPercentSize(
                                  context, 2.5),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  ConstantWidget.getCustomTextWidget(
                                      'Abs Workout',
                                      textColor,
                                      ConstantWidget
                                          .getScreenPercentSize(
                                          context, 1.8),
                                      FontWeight.w700,
                                      TextAlign.start,
                                      1),
                                  SizedBox(
                                    height: ConstantWidget
                                        .getScreenPercentSize(
                                        context, 0.6),
                                  ),
                                  ConstantWidget.getTextWidget(
                                      "${15} workout",
                                      subTextColor,
                                      TextAlign.start,
                                      FontWeight.w400,
                                      ConstantWidget
                                          .getScreenPercentSize(
                                          context, 1.6)),
                                ],
                              ),
                              flex: 1,
                            ),

                            ConstantWidget.getTextWidget(
                                "${20} min",
                                subTextColor,
                                TextAlign.start,
                                FontWeight.w400,
                                ConstantWidget
                                    .getScreenPercentSize(
                                    context, 1.6)),

                          ],
                        ),
                      ),
                      onTap: () {
                        // ModelDummySend dummySend = new ModelDummySend(
                        //     _modelQuickWorkout.stretchesId!,
                        //     _modelQuickWorkout.stretches!,
                        //     ConstantUrl.urlGetStretchesExercise,
                        //     ConstantUrl.varStretchesId,
                        //     color,
                        //     _modelQuickWorkout.image!,
                        //     true,
                        //     _modelQuickWorkout.description!,
                        //     STRETCH_WORKOUT);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return WidgetWorkoutExerciseList(color);
                          },
                        ));
                      },
                    ),
                  );
                },
              ),
            )





          ],
        ),
      ),
    );
  }
}

class _HomeWidget extends State<HomeWidget> {
  int _currentIndex = 0;

  _HomeWidget(this._currentIndex);

  List<Destination> allDestinations = [];

  static List<Widget> _widgetOptions = <Widget>[
    TabHome(),
    TabDiscover(),
    TabActivity(),
    TabSettings()
  ];

  @override
  void initState() {
    super.initState();
    setStatusBarColor(bgDarkWhite);
  }

  @override
  void didChangeDependencies() {
    allDestinations = <Destination>[
      Destination(S
          .of(context)
          .home, S
          .of(context)
          .yogaWorkout,
          CupertinoIcons.home, Colors.teal),
      Destination(S
          .of(context)
          .seasonalYoga, S
          .of(context)
          .seasonalYoga,
          CupertinoIcons.search, Colors.cyan),
      Destination('Analytics', S
          .of(context)
          .activity,
          CupertinoIcons.chart_bar_square, Colors.orange),
      Destination(S
          .of(context)
          .settings, S
          .of(context)
          .settings,
          Icons.settings, Colors.blue)
    ];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    setStatusBarColor(bgDarkWhite);

    return WillPopScope(
        child: Scaffold(
          appBar: new AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: bgDarkWhite,
            systemOverlayStyle: SystemUiOverlayStyle(
                systemNavigationBarColor: bgDarkWhite,
                statusBarColor: bgDarkWhite),
            title: getCustomText(
                allDestinations[_currentIndex].toolbarTitle,
                accentColor,
                1,
                TextAlign.start,
                FontWeight.w700,
                ConstantWidget.getScreenPercentSize(context, 2.5)),
          ),
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: _widgetOptions[this._currentIndex],
          ),
          bottomNavigationBar: _buildBottomBar(),
        ),
        onWillPop: () async {
          if (_currentIndex != 0) {
            setState(() {
              _currentIndex = 0;
            });
          } else {
            Future.delayed(const Duration(milliseconds: 100), () {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            });
          }
          return false;
        });
  }

  Widget _buildBottomBar() {
    final _inactiveColor = textColor;
    final _activeColor = accentColor;

    double height = ConstantWidget.getScreenPercentSize(context, 7.5);
    double iconHeight = ConstantWidget.getPercentSize(height, 28);
    return CustomAnimatedBottomBar(
      containerHeight: height,
      backgroundColor: bgDarkWhite,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          title: 'Home',
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
          iconSize: iconHeight,
          imageName: "Home.svg",
        ),
        BottomNavyBarItem(
          title: 'Search',
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
          iconSize: iconHeight,
          imageName: "Dumbells.svg",
        ),
        BottomNavyBarItem(
          title: 'Chart',
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
          iconSize: iconHeight,
          imageName: "Chart.svg",
        ),
        BottomNavyBarItem(
          title: 'Setting',
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
          iconSize: iconHeight,
          imageName: "Setting.svg",
        ),
      ],
    );
  }
}
