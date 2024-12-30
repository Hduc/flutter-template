import 'package:flutter/material.dart';

import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/widget/ReviewSlider.dart';

class AddNewCardPage extends StatefulWidget {
  @override
  _AddNewCardPage createState() {
    return _AddNewCardPage();
  }
}

class _AddNewCardPage extends State<AddNewCardPage> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.05;
    double editTextHeight = MediaQuery.of(context).size.height * 0.06;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,
            title: Text(S.of(context).checkOut,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: "SFProText",
                    color: ConstantData.textColor)),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Colors.black,
                  ),
                  onPressed: _requestPop,
                );
              },
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(
                left: leftMargin, right: leftMargin, top: leftMargin),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ReviewSlider(
                          optionStyle: TextStyle(
                            fontFamily: "SFProText",
                            fontSize: 8,
                            color: ConstantData.textColor,
                            fontWeight: FontWeight.bold,
                          ),
                          onChange: (index) {},
                          initialValue: 1,
                          width: double.infinity,
                          options: [
                            S.of(context).personalInfo,
                            S.of(context).payment,
                            S.of(context).confirmation
                          ]),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              S.of(context).payment,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: ConstantData.textColor),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              S.of(context).cardNumber,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ConstantData.textColor),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          style: TextStyle(
                              fontFamily: "SFProText",
                              color: ConstantData.primaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 3, left: 8),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: ConstantData.textColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstantData.disableIconColor),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              S.of(context).cardHolderName,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ConstantData.textColor),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          style: TextStyle(
                              fontFamily: "SFProText",
                              color: ConstantData.primaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 3, left: 8),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: ConstantData.textColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstantData.disableIconColor),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        S.of(context).expDateHint,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: ConstantData.textColor),
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontFamily: "SFProText",
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 3, left: 8),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ConstantData.textColor),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                ConstantData.disableIconColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 8),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        S.of(context).cvvHint,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: ConstantData.textColor),
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, left: 8),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontFamily: "SFProText",
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 3, left: 8),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ConstantData.textColor),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                ConstantData.disableIconColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: leftMargin),
                      height: 50,
                      decoration: BoxDecoration(
                          color: ConstantData.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        child: Center(
                          child: Text(
                            S.of(context).saveTheCards,
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
}
