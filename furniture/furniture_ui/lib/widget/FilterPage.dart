import 'package:another_xlider/another_xlider.dart';
import 'package:another_xlider/models/handler.dart';
import 'package:another_xlider/models/slider_step.dart';
import 'package:another_xlider/models/tooltip/tooltip.dart';
import 'package:another_xlider/models/tooltip/tooltip_box.dart';
import 'package:another_xlider/models/trackbar.dart';
import 'package:flutter/material.dart';
import 'package:furniture_ui/utils/ConstantData.dart';

import 'package:furniture_ui/utils/SizeConfig.dart';

import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPage createState() {
    return _FilterPage();
  }
}

class _FilterPage extends State<FilterPage> {
  List<String> materialList = DataFile.getMaterialList();
  List<String> categoryList = DataFile.getFilterList(true);

  bool _isLess = true;

  int materialPosition = 0;
  int _catPosition = 0;

  @override
  void initState() {
    super.initState();
    materialList = DataFile.getMaterialList();
    categoryList = DataFile.getFilterList(_isLess);
    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  int _colorPosition = 0;

  double _lowerValue = 10;
  double _upperValue = 200;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.05;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            automaticallyImplyLeading: false, //
            elevation: 0,
            backgroundColor: ConstantData.bgColor,
            title: Text(
              S.of(context).filter,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: "SFProText",
                  fontWeight: FontWeight.bold,
                  color: ConstantData.textColor),
            ),

            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: ConstantData.iconColor,
                ),
                onPressed: () {
                  _requestPop();
                },
              )
            ],
          ),
          body: Container(
            margin: EdgeInsets.only(
                top: leftMargin, right: leftMargin, left: leftMargin),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: leftMargin),
                        child: Text(
                          S.of(context).material,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: "SFProText",
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: ConstantData.textColor),
                        ),
                      ),
                      GridView.count(
                        crossAxisCount: 3,
                        childAspectRatio: 3,
                        shrinkWrap: true,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 8,
                        children: List.generate(
                          materialList.length,
                          (index) {
                            return
                                // Padding(
                                // padding: EdgeInsets.only(left: 2),
                                // child:
                                InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: (index == materialPosition)
                                      ? ConstantData.primaryColor
                                      : Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                      color: (index == materialPosition)
                                          ? ConstantData.textColor
                                          : ConstantData.disableIconColor,
                                      width: 1),
                                ),
                                child: Center(
                                  child: Text(
                                    materialList[index],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: "SFProText",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: (index == materialPosition)
                                            ? ConstantData.whiteColor
                                            : ConstantData.textColor),
                                  ),
                                ),
                              ),
                              onTap: () {
                                materialPosition = index;
                                setState(() {});
                              },
                            );
                            // );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: leftMargin, bottom: leftMargin),
                        child: Text(
                          S.of(context).categories,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: "SFProText",
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: ConstantData.textColor),
                        ),
                      ),
                      GridView.count(
                        crossAxisCount: 3,
                        childAspectRatio: 3,
                        shrinkWrap: true,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 8,
                        children: List.generate(
                          categoryList.length,
                          (index) {
                            return
                                // Padding(
                                // padding: EdgeInsets.only(left: 2),
                                // child:
                                InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: (index == _catPosition)
                                      ? (index == (categoryList.length - 1))
                                          ? ConstantData.filterColor
                                          : ConstantData.primaryColor
                                      : (index == (categoryList.length - 1))
                                          ? ConstantData.filterColor
                                          : Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                      color: (index == _catPosition)
                                          ? ConstantData.textColor
                                          : ConstantData.disableIconColor,
                                      width: 1),
                                ),
                                child: Center(
                                  child: Text(
                                    (index == (categoryList.length - 1))
                                        ? (_isLess)
                                            ? "+" + categoryList[index]
                                            : "-" + categoryList[index]
                                        : categoryList[index],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: "SFProText",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: (index == _catPosition)
                                            ? ConstantData.whiteColor
                                            : ConstantData.textColor),
                                  ),
                                ),
                              ),
                              onTap: () {
                                print("index----" +
                                    index.toString() +
                                    "---" +
                                    categoryList.length.toString());
                                if (index != (categoryList.length - 1)) {
                                  _catPosition = index;
                                } else {
                                  if (_isLess) {
                                    _isLess = false;
                                  } else {
                                    _isLess = true;
                                  }
                                  categoryList =
                                      DataFile.getFilterList(_isLess);
                                }
                                setState(() {});
                              },
                            );
                            // );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: leftMargin, bottom: leftMargin),
                        child: Text(
                          S.of(context).colorsString,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: "SFProText",
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: ConstantData.textColor),
                        ),
                      ),
                      _availableColorWidget(),
                      Padding(
                        padding: EdgeInsets.only(
                            top: leftMargin, bottom: (leftMargin + leftMargin)),
                        child: Text(
                          S.of(context).price,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: "SFProText",
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: ConstantData.textColor),
                        ),
                      ),
                      FlutterSlider(
                        handlerHeight: 10,
                        values: [_lowerValue, _upperValue],
                        rangeSlider: true,
                        max: 300,
                        min: 0,
                        step: FlutterSliderStep(step: 1),
                        jump: false,
                        trackBar: FlutterSliderTrackBar(
                            activeTrackBarHeight: 8,
                            activeTrackBar: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: ConstantData.primaryColor),
                            inactiveTrackBarHeight: 8,
                            inactiveTrackBar: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: ConstantData.viewColor)),
                        tooltip: FlutterSliderTooltip(
                            disableAnimation: true,
                            alwaysShowTooltip: true,
                            boxStyle: FlutterSliderTooltipBox(
                                decoration:
                                    BoxDecoration(color: Colors.transparent)),
                            textStyle: TextStyle(
                                fontFamily: "SFProText",
                                fontWeight: FontWeight.w800,
                                fontSize: 15,
                                color: ConstantData.textColor),
                            format: (String value) {
                              return '\$' + value;
                            }),
                        handler: FlutterSliderHandler(
                          decoration: BoxDecoration(),
                          child: Container(
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                        rightHandler: FlutterSliderHandler(
                          decoration: BoxDecoration(),
                          child: Container(
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                        disabled: false,
                        onDragging: (handlerIndex, lowerValue, upperValue) {
                          _lowerValue = lowerValue;
                          _upperValue = upperValue;
                          setState(() {});
                        },
                      )
                    ],
                  ),
                  flex: 1,
                ),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.all(leftMargin),
                      height: 50,
                      decoration: BoxDecoration(
                          color: ConstantData.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        child: Center(
                          child: Text(
                            S.of(context).apply,
                            style: TextStyle(
                                fontFamily: "SFProText",
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  Widget _availableColorWidget() {
    return Container(
        child: Row(
      children: <Widget>[
        // _colorView(Colors.red, (_colorPosition==0)),
        // _colorView(ConstantData.blueColor, (_colorPosition==1)),
        // _colorView(Colors.brown, (_colorPosition==2)),
        // _colorView(ConstantData.purpleColor, (_colorPosition==3)),
        // _colorView(Colors.black, (_colorPosition==4)),
        // _colorView(ConstantData.greyColor, (_colorPosition==5)),

        _colorView(Colors.red, (0)),
        _colorView(ConstantData.blueColor, (1)),
        _colorView(Colors.brown, (2)),
        _colorView(ConstantData.purpleColor, (3)),
        _colorView(Colors.black, (4)),
        _colorView(ConstantData.greyColor, (5)),
      ],
    ));
  }

  Widget _colorView(Color color, int position) {
    // Widget _colorView(Color color, bool isSelected) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(right: 15),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: color,
            child: Icon(
              Icons.circle,
              color: (_colorPosition == position)
                  ? ConstantData.whiteColor
                  : color,
              size: 12,
            ),
          ),
        ),
        onTap: () {
          _colorPosition = position;
          setState(() {});
        },
      ),
    );
  }
}
