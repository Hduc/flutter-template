import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:workout/main_project.dart';
import 'package:workout/onlineData/SelectState.dart';

import 'ColorCategory.dart';
import 'ConstantWidget.dart';
import 'Constants.dart';
import 'SignInPage.dart';

import 'SizeConfig.dart';
import 'generated/l10n.dart';
import 'onlineData/ConstantUrl.dart';


class IntroPage extends StatefulWidget {
  @override
  _IntroPage createState() {
    return _IntroPage();
  }
}

class _IntroPage extends State<IntroPage> {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8];
  int sliderPosition = 0;
  int cm = 80;
  int age = 20;
  int inch = 25;
  int ft = 25;
  int kg = 25;
  double lbs = 25;
  double margin = 0;
  int selectIntensively = 0;
  int selectTimeInWeek = 0;

  int genderPosition = 0;
  String gender = "Male";

  TextEditingController userNameController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();

  List<String> countryList = ["India", "Germany", "London", "America"];
  List<String> cityList = ["Surat", "Delhi", "Bangalore", "Mumbai"];
  String country = "India";
  String city = "Bangalore";
  String state = "Bangalore";

  Future<bool> _requestPop() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignInPage(),
        ));

    return new Future.value(false);
  }

  PageController controller = PageController();

  List<Widget> widgetList = [];

  @override
  void initState() {
    super.initState();

    setLbsValue();
    Timer(Duration(seconds: 1), () {
      setState(() {
        widgetList.add(getUserName());
        widgetList.add(getAge());
        widgetList.add(getGender());
        widgetList.add(getIntensively());
        widgetList.add(heightWidget());
        widgetList.add(getWeight());
        widgetList.add(getTimeInWeek());
        widgetList.add(getDetail());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    margin = ConstantWidget.getWidthPercentSize(context, 2);

    return GestureDetector(
        child: WillPopScope(
            child: Scaffold(
              backgroundColor: bgDarkWhite,
              appBar: getNoneAppBar(context),
              body: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Constants.getDefaultHorizontalMargin(context)),
                child: Column(
                  children: [
                    ConstantWidget.getLoginAppBar(context,
                        function: _requestPop, isMargin: false),
                    Container(
                      child: Row(
                        children: [
                          for (var item in list)
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height:
                                          ConstantWidget.getScreenPercentSize(
                                              context, 0.5),
                                      color:
                                          (sliderPosition >= list.indexOf(item))
                                              ? accentColor
                                              : Colors.grey.shade300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: (list.indexOf(item) ==
                                            list.length - 1)
                                        ? 0
                                        : ConstantWidget.getScreenPercentSize(
                                            context, 1),
                                  )
                                ],
                              ),
                              flex: 1,
                            )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ConstantWidget.getScreenPercentSize(context, 2.2),
                    ),
                    Expanded(
                        child: PageView.builder(
                      itemCount: list.length,
                      controller: controller,
                      onPageChanged: (value) {
                        setState(() {
                          // if (value == 1) {
                            // if (userNameController.text.isEmpty) {
                            //   _showToast("Please enter userName..");
                            //   controller.jumpTo(0);
                            //   sliderPosition = 0;
                            // }
                          // } else {
                            sliderPosition = value;
                          // }
                        });
                      },
                      itemBuilder: (context, index) {
                        // return getDetail();
                        return widgetList.length > 0
                            ? widgetList[index]
                            : Container();
                      },
                    )),
                    Container(
                      // margin: EdgeInsets.symmetric(horizontal: Constants.getDefaultHorizontalMargin(context)),
                      padding: EdgeInsets.only(bottom: margin),
                      child: Row(
                        children: [
                          // Visibility(
                          //   child: Expanded(flex: 1,
                          //     child: ConstantWidget.getIntroButtonWidget(
                          //         context, 'Done', accentColor, () {
                          //       actionDone();
                          //     }),
                          //   ),
                          //   visible: (sliderPosition == (list.length - 1)),
                          // ),
                          Visibility(
                            child: Expanded(
                              flex: 1,
                              child: ConstantWidget.getBorderButtonWidget(
                                  context, 'Previous', () {
                                actionPrevious();
                              }),
                            ),
                            visible: (true),
                          ),

                          SizedBox(
                            width:
                                Constants.getDefaultHorizontalMargin(context),
                          ),
                          Expanded(
                            flex: 1,
                            child: ConstantWidget.getButtonWidget(
                                context,
                                (sliderPosition == (list.length - 1))
                                    ? 'Done'
                                    : 'Next',
                                accentColor, () {
                              if ((sliderPosition == (list.length - 1))) {
                                actionDone();
                              } else {
                                actionNext();
                              }
                            }),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            onWillPop: _requestPop),
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        });
  }

  actionNext() {

    print("next===true");
    setState(() {
      if (sliderPosition < (list.length - 1)) {
        sliderPosition++;

        controller.jumpToPage(sliderPosition);
      }
    });
  }

  focusRemove() {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  actionDone() {
    focusRemove();

    // if (userNameController.text.isEmpty) {
    //   _showToast("Please enter userName..");
    // } else if (addressController.text.isEmpty) {
    //   _showToast("Please enter address..");
    // } else {
    //
    //   GuideIntroModel introModel = new GuideIntroModel();
    //   introModel.username = userNameController.text;
    //   introModel.age = age.toString();
    //   introModel.gender = gender;
    //   introModel.intensively = selectIntensively.toString();
    //   introModel.height = cm.toString();
    //   introModel.weight = kg.toString();
    //   introModel.timeInWeek = selectTimeInWeek.toString();
    //   introModel.address = addressController.text;
    //   introModel.city = city;
    //   introModel.state = state;
    //   introModel.country = country;

    // sendHomePage(context, 3);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainProject(),
        ));
    // }
  }




  actionPrevious() {
    focusRemove();
    setState(() {
      sliderPosition--;
      controller.jumpToPage(sliderPosition);
    });
  }

  Widget getGender() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getHeaderView(
              S.of(context).selectGender, S.of(context).pleaseSelectYourGender),
          SizedBox(
            height: ConstantWidget.getScreenPercentSize(context, 4),
          ),
          Expanded(
            flex: 1,
            child: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  children: [
                    getGenderCell(setState, Constants.actionMale, "male.png",
                        S.of(context).male, "#F0F3FF".toColor()),
                    getGenderCell(
                        setState,
                        Constants.actionFemale,
                        "female.png",
                        S.of(context).female,
                        "#FFF0FE".toColor()),
                    getGenderCell(setState, Constants.actionOther, "mars.png",
                        S.of(context).other, "#E7FFE9".toColor())
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  getGenderCell(
      var setState, int position, String icon, String s, Color color) {
    double height = ConstantWidget.getWidthPercentSize(context, 18);

    double radius = ConstantWidget.getPercentSize(height, 17);
    double size = ConstantWidget.getPercentSize(height, 77);
    double subImage = ConstantWidget.getPercentSize(size, 40);
    double subHeight = ConstantWidget.getPercentSize(size, 38);
    return InkWell(
      child: Container(
        height: height,
        width: double.infinity,
        margin: EdgeInsets.symmetric(
            horizontal: ConstantWidget.getWidthPercentSize(context, 0.5),
            vertical: ConstantWidget.getScreenPercentSize(context, 1.3)),
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   border: Border.all(
        //       color: (genderPosition == position)
        //           ? accentColor
        //           : cellColor,
        //       width: 2),
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(radius),
        //   ),
        // ),

        decoration:
            getDefaultDecoration(radius: radius, borderColor: borderColor),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size,
              width: size,
              margin: EdgeInsets.symmetric(
                  horizontal: ConstantWidget.getPercentSize(height, 10)),
              // decoration:
              //     BoxDecoration(color: accentColor,
              //         shape: BoxShape.circle),
              decoration: getDefaultDecoration(radius: radius, bgColor: color),

              child: Center(
                child: Image.asset(
                  Constants.assetsImagePath + icon,
                  height: subImage,
                ),
              ),
            ),
            SizedBox(
              width: ConstantWidget.getWidthPercentSize(context, 1),
            ),
            Expanded(
              flex: 1,
              child: ConstantWidget.getTextWidget(
                  s,
                  Colors.black,
                  TextAlign.left,
                  FontWeight.w700,
                  ConstantWidget.getScreenPercentSize(context, 1.8)),
            ),
            SvgPicture.asset(
              genderPosition == position
                  ? Constants.assetsImagePath + 'selected.svg'
                  : Constants.assetsImagePath + 'un_selected.svg',
              height: subHeight,
              width: subHeight,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              width: ConstantWidget.getWidthPercentSize(context, 4),
            ),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          // isMale = true;
          genderPosition = position;
          gender = s;
        });
      },
    );
  }

  Widget getDetail() {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: margin),
      child: ListView(
        children: [
          getHeaderView(S.of(context).address, ""),
          SelectState(
            isEdit: false,
            onCountryChanged: (value) {
              setState(() {
                country = value;
              });
            },
            onCityChanged: (value) {
              setState(() {
                city = value;
                // cityValue = value;
              });
            },
            onStateChanged: (String value) {
              setState(() {
                state = value;
              });
            },
          ),
          ConstantWidget.getAddressWidget(
              context, 'Enter your address...', addressController, margin),
          SizedBox(
            height: margin,
          )
        ],
      ),
    );
  }

  Widget getWeight() {
    double height = ConstantWidget.getWidthPercentSize(context, 32);
    double subHeight = ConstantWidget.getWidthPercentSize(context, 32);

    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getHeaderView(S.of(context).whatIsYourWeight,
                  S.of(context).toGiveYouABetterExperienceNweNeedToKnow),
              SizedBox(
                height: ConstantWidget.getScreenPercentSize(context, 3),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: (height),
                      // width: height,
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      padding: EdgeInsets.symmetric(
                          vertical: ConstantWidget.getScreenPercentSize(
                              context, 2.5)),
                      child: Container(
                        height: subHeight,

                        // decoration: BoxDecoration(
                        //   color:cellColor ,
                        //   borderRadius: BorderRadius.all(
                        //     Radius.circular(
                        //         ConstantWidget.getPercentSize(subHeight, 15)),
                        //   ),
                        // ),

                        decoration: getDefaultDecoration(
                            borderColor: borderColor,
                            radius:
                                ConstantWidget.getPercentSize(subHeight, 10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ConstantWidget.getTextWidget(
                                kg.toString(),
                                textColor,
                                TextAlign.end,
                                FontWeight.w700,
                                ConstantWidget.getPercentSize(subHeight, 18)),
                            SizedBox(
                              width: ConstantWidget.getWidthPercentSize(
                                  context, 0.5),
                            ),
                            Container(
                              child: ConstantWidget.getTextWidget(
                                  'kg',
                                  accentColor,
                                  TextAlign.end,
                                  FontWeight.w400,
                                  ConstantWidget.getPercentSize(subHeight, 10)),
                              margin: EdgeInsets.only(
                                  top: ConstantWidget.getScreenPercentSize(
                                      context, 0.6)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Constants.getDefaultHorizontalMargin(context),
                  ),
                  Expanded(
                    child: Container(
                      height: (height),
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      padding: EdgeInsets.symmetric(
                          vertical: ConstantWidget.getScreenPercentSize(
                              context, 2.5)),
                      child: Container(
                        height: subHeight,
                        decoration: getDefaultDecoration(
                            borderColor: borderColor,
                            radius:
                                ConstantWidget.getPercentSize(subHeight, 10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ConstantWidget.getTextWidget(
                                lbs.toInt().toString(),
                                textColor,
                                TextAlign.end,
                                FontWeight.w700,
                                ConstantWidget.getPercentSize(subHeight, 18)),
                            SizedBox(
                              width: ConstantWidget.getWidthPercentSize(
                                  context, 0.5),
                            ),
                            Container(
                              child: ConstantWidget.getTextWidget(
                                  'lbs',
                                  accentColor,
                                  TextAlign.end,
                                  FontWeight.w400,
                                  ConstantWidget.getPercentSize(subHeight, 10)),
                              margin: EdgeInsets.only(
                                  top: ConstantWidget.getScreenPercentSize(
                                      context, 0.6)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: (height * 1.3),
                  //   width: height,
                  //   margin: EdgeInsets.symmetric(
                  //       horizontal:
                  //           ConstantWidget.getScreenPercentSize(context, 1)),
                  //   padding: EdgeInsets.symmetric(
                  //       vertical:
                  //           ConstantWidget.getScreenPercentSize(context, 2.5)),
                  //   child: Stack(
                  //     children: [
                  //       Container(
                  //         width: (subHeight * 1.2),
                  //         height: subHeight,
                  //         margin: EdgeInsets.only(top: cellHeight / 2),
                  //         padding: EdgeInsets.only(
                  //             left: cellHeight / 2, bottom: cellHeight / 3),
                  //         decoration: BoxDecoration(
                  //           color:cellColor ,
                  //           borderRadius: BorderRadius.all(
                  //             Radius.circular(
                  //                 ConstantWidget.getPercentSize(subHeight, 15)),
                  //           ),
                  //         ),
                  //         child: Row(
                  //           crossAxisAlignment: CrossAxisAlignment.end,
                  //           children: [
                  //             ConstantWidget.getTextWidget(
                  //                 cm.toString(),
                  //                 Colors.black,
                  //                 TextAlign.end,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 25)),
                  //             ConstantWidget.getTextWidget(
                  //                 'Cm',
                  //                 accentColor,
                  //                 TextAlign.end,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 15)),
                  //           ],
                  //         ),
                  //       ),
                  //       Container(
                  //         width: cellHeight,
                  //         height: cellHeight,
                  //         margin: EdgeInsets.only(left: (cellHeight / 2)),
                  //         decoration: BoxDecoration(
                  //           color: accentColor,
                  //           borderRadius: BorderRadius.all(
                  //             Radius.circular(ConstantWidget.getPercentSize(
                  //                 cellHeight, 30)),
                  //           ),
                  //         ),
                  //         child: Center(
                  //           child: Image.asset(
                  //             Constants.assetsImagePath + "height.png",
                  //             height:
                  //                 ConstantWidget.getPercentSize(cellHeight, 40),
                  //             color: Colors.white,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   height: (height * 1.3),
                  //   width: height,
                  //   margin: EdgeInsets.symmetric(
                  //       horizontal:
                  //           ConstantWidget.getScreenPercentSize(context, 1)),
                  //   padding: EdgeInsets.symmetric(
                  //       vertical:
                  //           ConstantWidget.getScreenPercentSize(context, 2.5)),
                  //   child: Stack(
                  //     children: [
                  //       Container(
                  //         width: (subHeight * 1.2),
                  //         height: subHeight,
                  //         margin: EdgeInsets.only(top: cellHeight / 2),
                  //         padding: EdgeInsets.only(
                  //             left: cellHeight / 2, bottom: cellHeight / 3),
                  //         decoration: BoxDecoration(
                  //           color: cellColor,
                  //           borderRadius: BorderRadius.all(
                  //             Radius.circular(
                  //                 ConstantWidget.getPercentSize(subHeight, 15)),
                  //           ),
                  //         ),
                  //         child: Row(
                  //           crossAxisAlignment: CrossAxisAlignment.end,
                  //           children: [
                  //             // Expanded(
                  //             //   child:
                  //             ConstantWidget.getTextWidget(
                  //                 ft.toString(),
                  //                 Colors.black,
                  //                 TextAlign.start,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 20)),
                  //             // ),
                  //             ConstantWidget.getTextWidget(
                  //                'Ft',
                  //                 accentColor,
                  //                 TextAlign.end,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 15)),
                  //
                  //             SizedBox(
                  //               width:
                  //                   ConstantWidget.getPercentSize(subHeight, 5),
                  //             ),
                  //             ConstantWidget.getTextWidget(
                  //                 inch.toString(),
                  //                 Colors.black,
                  //                 TextAlign.start,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 20)),
                  //             // ),
                  //             ConstantWidget.getTextWidget(
                  //                 'inches',
                  //                 accentColor,
                  //                 TextAlign.end,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 15)),
                  //           ],
                  //         ),
                  //       ),
                  //       Container(
                  //         width: cellHeight,
                  //         height: cellHeight,
                  //         margin: EdgeInsets.only(left: (cellHeight / 2)),
                  //         decoration: BoxDecoration(
                  //           color: accentColor,
                  //           borderRadius: BorderRadius.all(
                  //             Radius.circular(ConstantWidget.getPercentSize(
                  //                 cellHeight, 30)),
                  //           ),
                  //         ),
                  //         child: Center(
                  //           child: Image.asset(
                  //             Constants.assetsImagePath + "ft.png",
                  //             height:
                  //                 ConstantWidget.getPercentSize(cellHeight, 40),
                  //             color: Colors.white,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),

              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       height: (height * 1.3),
              //       width: height,
              //       margin: EdgeInsets.symmetric(
              //           horizontal:
              //               ConstantWidget.getScreenPercentSize(context, 1)),
              //       padding: EdgeInsets.symmetric(
              //           vertical:
              //               ConstantWidget.getScreenPercentSize(context, 2.5)),
              //       child: Stack(
              //         children: [
              //           Container(
              //             width: (subHeight * 1.2),
              //             height: subHeight,
              //             margin: EdgeInsets.only(top: cellHeight / 2),
              //             padding: EdgeInsets.only(
              //                 left: cellHeight / 2, bottom: cellHeight / 3),
              //             decoration: BoxDecoration(
              //               color: cellColor,
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(
              //                     ConstantWidget.getPercentSize(subHeight, 15)),
              //               ),
              //             ),
              //             child: Row(
              //               crossAxisAlignment: CrossAxisAlignment.end,
              //               children: [
              //                 ConstantWidget.getTextWidget(
              //                     kg.toString(),
              //                     Colors.black,
              //                     TextAlign.end,
              //                     FontWeight.w300,
              //                     ConstantWidget.getPercentSize(subHeight, 25)),
              //                 ConstantWidget.getTextWidget(
              //                     'Kg',
              //                     accentColor,
              //                     TextAlign.end,
              //                     FontWeight.w300,
              //                     ConstantWidget.getPercentSize(subHeight, 15)),
              //               ],
              //             ),
              //           ),
              //           Container(
              //             width: cellHeight,
              //             height: cellHeight,
              //             margin: EdgeInsets.only(left: (cellHeight / 2)),
              //             decoration: BoxDecoration(
              //               color: accentColor,
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(ConstantWidget.getPercentSize(
              //                     cellHeight, 30)),
              //               ),
              //             ),
              //             child: Center(
              //               child: Image.asset(
              //                 Constants.assetsImagePath + "dumbbell.png",
              //                 height:
              //                     ConstantWidget.getPercentSize(cellHeight, 40),
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     Container(
              //       height: (height * 1.3),
              //       width: height,
              //       margin: EdgeInsets.symmetric(
              //           horizontal:
              //               ConstantWidget.getScreenPercentSize(context, 1)),
              //       padding: EdgeInsets.symmetric(
              //           vertical:
              //               ConstantWidget.getScreenPercentSize(context, 2.5)),
              //       child: Stack(
              //         children: [
              //           Container(
              //             width: (subHeight * 1.2),
              //             height: subHeight,
              //             margin: EdgeInsets.only(top: cellHeight / 2),
              //             padding: EdgeInsets.only(
              //                 left: cellHeight / 2, bottom: cellHeight / 3),
              //             decoration: BoxDecoration(
              //               color: cellColor,
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(
              //                     ConstantWidget.getPercentSize(subHeight, 15)),
              //               ),
              //             ),
              //             child: Row(
              //               crossAxisAlignment: CrossAxisAlignment.end,
              //               children: [
              //                 // Expanded(
              //                 //   child:
              //                 ConstantWidget.getTextWidget(
              //                     lbs.toInt().toString(),
              //                     Colors.black,
              //                     TextAlign.start,
              //                     FontWeight.w300,
              //                     ConstantWidget.getPercentSize(subHeight, 25)),
              //                 // ),
              //                 ConstantWidget.getTextWidget(
              //                     'Lbs',
              //                     accentColor,
              //                     TextAlign.end,
              //                     FontWeight.w300,
              //                     ConstantWidget.getPercentSize(subHeight, 15)),
              //               ],
              //             ),
              //           ),
              //           Container(
              //             width: cellHeight,
              //             height: cellHeight,
              //             margin: EdgeInsets.only(left: (cellHeight / 2)),
              //             decoration: BoxDecoration(
              //               color: accentColor,
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(ConstantWidget.getPercentSize(
              //                     cellHeight, 30)),
              //               ),
              //             ),
              //             child: Center(
              //               child: Image.asset(
              //                 Constants.assetsImagePath + "weighing-scale.png",
              //                 height:
              //                     ConstantWidget.getPercentSize(cellHeight, 40),
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              Center(
                child: Container(
                  width: ConstantWidget.getWidthPercentSize(context, 70),
                  padding: EdgeInsets.symmetric(
                      vertical:
                          ConstantWidget.getScreenPercentSize(context, 2.5)),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: NumberPicker(
                      value: kg,
                      minValue: 20,
                      maxValue: 250,
                      textStyle: TextStyle(
                          fontSize:
                              ConstantWidget.getScreenPercentSize(context, 2),
                          color: subTextColor,
                          fontFamily: Constants.fontsFamily),
                      selectedTextStyle: TextStyle(
                          fontSize:
                              ConstantWidget.getScreenPercentSize(context, 4),
                          color: accentColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: Constants.fontsFamily),
                      step: 1,
                      haptics: true,
                      onChanged: (value) => setState(() {
                        kg = value;
                        setLbsValue();
                      }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  setLbsValue() {
    lbs = kg * 2.205;
    lbs = double.parse((lbs).toStringAsFixed(0));

    double total = (cm / 2.54);
    double value = (total / 12);
    double value1 = (total - 12) * value.toInt();

    print("total----$total------$value--------$value1");

    ft = value.toInt();
    inch = value1.toInt();

    setState(() {});
  }

  Widget heightWidget() {
    double height = ConstantWidget.getWidthPercentSize(context, 32);
    double subHeight = ConstantWidget.getWidthPercentSize(context, 32);

    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getHeaderView(S.of(context).howTallAreYou,
                  S.of(context).toGiveYouABetterExperienceNweNeedToKnowHeight),
              SizedBox(
                height: ConstantWidget.getScreenPercentSize(context, 3),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: (height),
                      // width: height,
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      padding: EdgeInsets.symmetric(
                          vertical: ConstantWidget.getScreenPercentSize(
                              context, 2.5)),
                      child: Container(
                        height: subHeight,

                        // decoration: BoxDecoration(
                        //   color:cellColor ,
                        //   borderRadius: BorderRadius.all(
                        //     Radius.circular(
                        //         ConstantWidget.getPercentSize(subHeight, 15)),
                        //   ),
                        // ),

                        decoration: getDefaultDecoration(
                            borderColor: borderColor,
                            radius:
                                ConstantWidget.getPercentSize(subHeight, 10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ConstantWidget.getTextWidget(
                                cm.toString(),
                                textColor,
                                TextAlign.end,
                                FontWeight.w700,
                                ConstantWidget.getPercentSize(subHeight, 18)),
                            SizedBox(
                              width: ConstantWidget.getWidthPercentSize(
                                  context, 0.5),
                            ),
                            Container(
                              child: ConstantWidget.getTextWidget(
                                  'Cm',
                                  accentColor,
                                  TextAlign.end,
                                  FontWeight.w400,
                                  ConstantWidget.getPercentSize(subHeight, 10)),
                              margin: EdgeInsets.only(
                                  top: ConstantWidget.getScreenPercentSize(
                                      context, 0.6)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Constants.getDefaultHorizontalMargin(context),
                  ),
                  Expanded(
                    child: Container(
                      height: (height),
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      padding: EdgeInsets.symmetric(
                          vertical: ConstantWidget.getScreenPercentSize(
                              context, 2.5)),
                      child: Container(
                        height: subHeight,
                        decoration: getDefaultDecoration(
                            borderColor: borderColor,
                            radius:
                                ConstantWidget.getPercentSize(subHeight, 10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ConstantWidget.getTextWidget(
                                ft.toString(),
                                textColor,
                                TextAlign.end,
                                FontWeight.w700,
                                ConstantWidget.getPercentSize(subHeight, 18)),
                            SizedBox(
                              width: ConstantWidget.getWidthPercentSize(
                                  context, 0.5),
                            ),

                            Container(
                              child: ConstantWidget.getTextWidget(
                                  'Cm',
                                  accentColor,
                                  TextAlign.end,
                                  FontWeight.w400,
                                  ConstantWidget.getPercentSize(subHeight, 10)),
                              margin: EdgeInsets.only(
                                  top: ConstantWidget.getScreenPercentSize(
                                      context, 0.6)),
                            ),
                            SizedBox(
                              width: ConstantWidget.getWidthPercentSize(
                                  context, 0.5),
                            ),

                            ConstantWidget.getTextWidget(
                                inch.toString(),
                                textColor,
                                TextAlign.end,
                                FontWeight.w700,
                                ConstantWidget.getPercentSize(subHeight, 18)),
                            SizedBox(
                              width: ConstantWidget.getWidthPercentSize(
                                  context, 0.5),
                            ),
                            Container(
                              child: ConstantWidget.getTextWidget(
                                  'in',
                                  accentColor,
                                  TextAlign.end,
                                  FontWeight.w400,
                                  ConstantWidget.getPercentSize(subHeight, 10)),
                              margin: EdgeInsets.only(
                                  top: ConstantWidget.getScreenPercentSize(
                                      context, 0.6)),
                            )

                            // ConstantWidget.getTextWidget(
                            //     inch.toString(),
                            //     Colors.black,
                            //     TextAlign.start,
                            //     FontWeight.w300,
                            //     ConstantWidget.getPercentSize(subHeight, 20)),
                            // // ),
                            // ConstantWidget.getTextWidget(
                            //     'inches',
                            //     accentColor,
                            //     TextAlign.end,
                            //     FontWeight.w300,
                            //     ConstantWidget.getPercentSize(subHeight, 15)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: (height * 1.3),
                  //   width: height,
                  //   margin: EdgeInsets.symmetric(
                  //       horizontal:
                  //           ConstantWidget.getScreenPercentSize(context, 1)),
                  //   padding: EdgeInsets.symmetric(
                  //       vertical:
                  //           ConstantWidget.getScreenPercentSize(context, 2.5)),
                  //   child: Stack(
                  //     children: [
                  //       Container(
                  //         width: (subHeight * 1.2),
                  //         height: subHeight,
                  //         margin: EdgeInsets.only(top: cellHeight / 2),
                  //         padding: EdgeInsets.only(
                  //             left: cellHeight / 2, bottom: cellHeight / 3),
                  //         decoration: BoxDecoration(
                  //           color:cellColor ,
                  //           borderRadius: BorderRadius.all(
                  //             Radius.circular(
                  //                 ConstantWidget.getPercentSize(subHeight, 15)),
                  //           ),
                  //         ),
                  //         child: Row(
                  //           crossAxisAlignment: CrossAxisAlignment.end,
                  //           children: [
                  //             ConstantWidget.getTextWidget(
                  //                 cm.toString(),
                  //                 Colors.black,
                  //                 TextAlign.end,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 25)),
                  //             ConstantWidget.getTextWidget(
                  //                 'Cm',
                  //                 accentColor,
                  //                 TextAlign.end,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 15)),
                  //           ],
                  //         ),
                  //       ),
                  //       Container(
                  //         width: cellHeight,
                  //         height: cellHeight,
                  //         margin: EdgeInsets.only(left: (cellHeight / 2)),
                  //         decoration: BoxDecoration(
                  //           color: accentColor,
                  //           borderRadius: BorderRadius.all(
                  //             Radius.circular(ConstantWidget.getPercentSize(
                  //                 cellHeight, 30)),
                  //           ),
                  //         ),
                  //         child: Center(
                  //           child: Image.asset(
                  //             Constants.assetsImagePath + "height.png",
                  //             height:
                  //                 ConstantWidget.getPercentSize(cellHeight, 40),
                  //             color: Colors.white,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   height: (height * 1.3),
                  //   width: height,
                  //   margin: EdgeInsets.symmetric(
                  //       horizontal:
                  //           ConstantWidget.getScreenPercentSize(context, 1)),
                  //   padding: EdgeInsets.symmetric(
                  //       vertical:
                  //           ConstantWidget.getScreenPercentSize(context, 2.5)),
                  //   child: Stack(
                  //     children: [
                  //       Container(
                  //         width: (subHeight * 1.2),
                  //         height: subHeight,
                  //         margin: EdgeInsets.only(top: cellHeight / 2),
                  //         padding: EdgeInsets.only(
                  //             left: cellHeight / 2, bottom: cellHeight / 3),
                  //         decoration: BoxDecoration(
                  //           color: cellColor,
                  //           borderRadius: BorderRadius.all(
                  //             Radius.circular(
                  //                 ConstantWidget.getPercentSize(subHeight, 15)),
                  //           ),
                  //         ),
                  //         child: Row(
                  //           crossAxisAlignment: CrossAxisAlignment.end,
                  //           children: [
                  //             // Expanded(
                  //             //   child:
                  //             ConstantWidget.getTextWidget(
                  //                 ft.toString(),
                  //                 Colors.black,
                  //                 TextAlign.start,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 20)),
                  //             // ),
                  //             ConstantWidget.getTextWidget(
                  //                'Ft',
                  //                 accentColor,
                  //                 TextAlign.end,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 15)),
                  //
                  //             SizedBox(
                  //               width:
                  //                   ConstantWidget.getPercentSize(subHeight, 5),
                  //             ),
                  //             ConstantWidget.getTextWidget(
                  //                 inch.toString(),
                  //                 Colors.black,
                  //                 TextAlign.start,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 20)),
                  //             // ),
                  //             ConstantWidget.getTextWidget(
                  //                 'inches',
                  //                 accentColor,
                  //                 TextAlign.end,
                  //                 FontWeight.w300,
                  //                 ConstantWidget.getPercentSize(subHeight, 15)),
                  //           ],
                  //         ),
                  //       ),
                  //       Container(
                  //         width: cellHeight,
                  //         height: cellHeight,
                  //         margin: EdgeInsets.only(left: (cellHeight / 2)),
                  //         decoration: BoxDecoration(
                  //           color: accentColor,
                  //           borderRadius: BorderRadius.all(
                  //             Radius.circular(ConstantWidget.getPercentSize(
                  //                 cellHeight, 30)),
                  //           ),
                  //         ),
                  //         child: Center(
                  //           child: Image.asset(
                  //             Constants.assetsImagePath + "ft.png",
                  //             height:
                  //                 ConstantWidget.getPercentSize(cellHeight, 40),
                  //             color: Colors.white,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              Center(
                child: Container(
                  width: ConstantWidget.getWidthPercentSize(context, 70),
                  // decoration: BoxDecoration(
                  //   color: ConstantData.cellColor,
                  //   borderRadius: BorderRadius.all(
                  //     Radius.circular(ConstantWidget.getScreenPercentSize(context,2)),
                  //   ),
                  // ),

                  padding: EdgeInsets.symmetric(
                      vertical:
                          ConstantWidget.getScreenPercentSize(context, 2.5)),

                  child: Align(
                    alignment: Alignment.topCenter,
                    child: NumberPicker(
                      value: cm,
                      minValue: 80,
                      maxValue: 350,
                      textStyle: TextStyle(
                          fontSize:
                              ConstantWidget.getScreenPercentSize(context, 2),
                          color: subTextColor,
                          fontFamily: Constants.fontsFamily),
                      selectedTextStyle: TextStyle(
                          fontSize:
                              ConstantWidget.getScreenPercentSize(context, 4),
                          color: accentColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: Constants.fontsFamily),
                      step: 1,
                      haptics: true,
                      onChanged: (value) => setState(() {
                        cm = value;
                        setLbsValue();
                      }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget getAge() {
    SizeConfig().init(context);
    Widget space = SizedBox(
      height: margin,
    );
    return StatefulBuilder(
      builder: (context, setState) => Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getHeaderView("How old are you?",
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
            space,
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    vertical:
                        ConstantWidget.getScreenPercentSize(context, 2.5)),
                child: Align(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    value: age,
                    minValue: 15,
                    maxValue: 90,
                    textStyle: TextStyle(
                        fontSize:
                            ConstantWidget.getScreenPercentSize(context, 2),
                        color: subTextColor,
                        fontFamily: Constants.fontsFamily),
                    selectedTextStyle: TextStyle(
                        fontSize:
                            ConstantWidget.getScreenPercentSize(context, 4),
                        color: accentColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: Constants.fontsFamily),
                    step: 1,
                    haptics: true,
                    onChanged: (value) => setState(() {
                      age = value;
                      setLbsValue();
                    }),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getIntensively() {
    SizeConfig().init(context);
    Widget space = SizedBox(
      height: (margin),
    );
    return StatefulBuilder(
      builder: (context, setState) => Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getHeaderView("How intensively you workout?",
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
            // SizedBox(
            //   height: (margin * 5),
            // ),
            // getTitleWidget(S.of(context).username),
            // SizedBox(
            //   height: (margin / 2),
            // ),
            SizedBox(
              height: ConstantWidget.getScreenPercentSize(context, 3),
            ),

          ],
        ),
      ),
    );
  }

  Widget getTimeInWeek() {
    SizeConfig().init(context);
    Widget space = SizedBox(
      height: margin,
    );
    return StatefulBuilder(
      builder: (context, setState) => Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getHeaderView("How many time  in week you exercise?",
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
            // SizedBox(
            //   height: (margin * 5),
            // ),
            // getTitleWidget(S.of(context).username),
            // SizedBox(
            //   height: (margin / 2),
            // ),
            SizedBox(
              height: ConstantWidget.getScreenPercentSize(context, 3),
            ),


          ],
        ),
      ),
    );
  }

  Widget getUserName() {
    SizeConfig().init(context);

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getHeaderView("What's your name ?",
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
          SizedBox(
            height: (margin * 5),
          ),
          getTitleWidget(S.of(context).username,
              fontSize: ConstantWidget.getScreenPercentSize(context, 2)),
          SizedBox(
            height: (margin / 2),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 1),
            child: ConstantWidget.getDefaultTextFiledWidget(
              context,
              S.of(context).username,
              userNameController,
            ),
          ),
          SizedBox(
            height: margin,
          )
        ],
      ),
    );
  }

  getHeaderView(String s, String subTitle) {
    Widget space = SizedBox(
      height: margin,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        space,
        getTitleWidget(s),
        space,
        getSubTitleWidget(subTitle),
      ],
    );
  }

  getTitleWidget(String s, {double? fontSize}) {
    return ConstantWidget.getTextWidget(
        s,
        Colors.black,
        TextAlign.start,
        FontWeight.bold,
        fontSize != null
            ? fontSize
            : ConstantWidget.getScreenPercentSize(context, 2.5));
  }

  getSubTitleWidget(String s) {
    return ConstantWidget.getTextWidget(s, textColor, TextAlign.start,
        FontWeight.w400, ConstantWidget.getScreenPercentSize(context, 1.8));
  }
}
