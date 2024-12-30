// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/ConstantData.dart';
import '../utils/ConstantWidget.dart';
import '../utils/SizeConfig.dart';
import 'ReviewSlider.dart';

class AddNewCardPage extends StatefulWidget {
  @override
  _AddNewCardPage createState() {
    return _AddNewCardPage();
  }
}

class _AddNewCardPage extends State<AddNewCardPage> {
  TextEditingController cardNumberController = new TextEditingController();
  TextEditingController cardHolderNameController = new TextEditingController();
  TextEditingController expDateController = new TextEditingController();
  TextEditingController cvvController = new TextEditingController();

  @override
  void initState() {
    super.initState();

    cardNumberController.text = "2342 22** **** **00";
    cardHolderNameController.text = "Claudla T.Reyes";
    cvvController.text = "2653***";
    expDateController.text = "06/23";

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
            title: ConstantWidget.getAppBarText(S.of(context).checkOut),
            // title: ConstantWidget.getCustomTextWithoutAlign(S.of(context).checkOut, ConstantData.textColor, FontWeight.bold, ConstantData.font18Px),

            // title: Text(S.of(context).checkOut,
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         fontSize: ConstantData.font18Px,
            //         fontFamily: ConstantData.fontFamily,
            //         color: ConstantData.textColor)),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: ConstantWidget.getAppBarIcon(),
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
                            fontFamily: ConstantData.fontFamily,
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
                          // child: Text(
                          //   S.of(context).payment,
                          //   textAlign: TextAlign.start,
                          //   style: TextStyle(
                          //       fontFamily: ConstantData.fontFamily,
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 16,
                          //       color: ConstantData.textColor),
                          // )

                          child: ConstantWidget.getCustomText(
                              S.of(context).payment,
                              ConstantData.textColor,
                              1,
                              TextAlign.start,
                              FontWeight.bold,
                              16),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     top: 10,
                      //   ),
                      //   child: Align(
                      //       alignment: Alignment.topLeft,
                      //
                      //       child: ConstantWidget.getCustomText(S.of(context).cardNumber, ConstantData.textColor, 1, TextAlign.start, FontWeight.bold, ConstantData.font12Px),
                      //
                      //       // child: Text(
                      //       //   S.of(context).cardNumber,
                      //       //   textAlign: TextAlign.start,
                      //       //   style: TextStyle(
                      //       //       fontFamily: ConstantData.fontFamily,
                      //       //       fontWeight: FontWeight.bold,
                      //       //       fontSize: ConstantData.font12Px,
                      //       //       color: ConstantData.textColor),
                      //       // )
                      //     ),
                      // ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          controller: cardNumberController,
                          style: TextStyle(
                              fontFamily: ConstantData.fontFamily,
                              color: ConstantData.primaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),

                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: S.of(context).cardNumber,
                            // hintText: 'Full Name',
                          ),

                          // decoration: InputDecoration(
                          //   contentPadding: EdgeInsets.only(top: 3, left: 8),
                          //   enabledBorder: UnderlineInputBorder(
                          //     borderSide:
                          //         BorderSide(color: ConstantData.textColor),
                          //   ),
                          //   focusedBorder: UnderlineInputBorder(
                          //     borderSide: BorderSide(
                          //         color: ConstantData.disableIconColor),
                          //   ),
                          // ),
                        ),
                      ),
                      //              Padding(
                      //                padding: EdgeInsets.only(
                      //                  top: 10,
                      //                ),
                      //                child: Align(
                      //                    alignment: Alignment.topLeft,
                      //                    // child: Text(
                      //                    //   S.of(context).cardHolderName,
                      //                    //   textAlign: TextAlign.start,
                      //                    //   style: TextStyle(
                      //                    //       fontFamily: ConstantData.fontFamily,
                      //                    //       fontWeight: FontWeight.bold,
                      //                    //       fontSize: ConstantData.font12Px,
                      //                    //       color: ConstantData.textColor),
                      //                    // )
                      // child: ConstantWidget.getCustomText(S.of(context).cardHolderName, ConstantData.textColor, 1, TextAlign.start, FontWeight.bold, ConstantData.font12Px),
                      //
                      //
                      //                ),
                      //              ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          controller: cardHolderNameController,
                          style: TextStyle(
                              fontFamily: ConstantData.fontFamily,
                              color: ConstantData.primaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: S.of(context).cardHolderName,
                            // hintText: 'Full Name',
                          ),

                          // decoration: InputDecoration(
                          //   contentPadding: EdgeInsets.only(top: 3, left: 8),
                          //   enabledBorder: UnderlineInputBorder(
                          //     borderSide:
                          //         BorderSide(color: ConstantData.textColor),
                          //   ),
                          //   focusedBorder: UnderlineInputBorder(
                          //     borderSide: BorderSide(
                          //         color: ConstantData.disableIconColor),
                          //   ),
                          // ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //     top: 10,
                                //   ),
                                //   child: Align(
                                //       alignment: Alignment.topLeft,
                                //       // child: Text(
                                //       //   S.of(context).expDateHint,
                                //       //   textAlign: TextAlign.start,
                                //       //   style: TextStyle(
                                //       //       fontFamily: ConstantData.fontFamily,
                                //       //       fontWeight: FontWeight.bold,
                                //       //       fontSize: ConstantData.font12Px,
                                //       //       color: ConstantData.textColor),
                                //       // )
                                //
                                //     child: ConstantWidget.getCustomText(S.of(context).expDateHint, ConstantData.textColor, 1, TextAlign.start, FontWeight.bold, ConstantData.font12Px),
                                //
                                //
                                //   ),
                                // ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, top: 10),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    controller: expDateController,
                                    style: TextStyle(
                                        fontFamily: ConstantData.fontFamily,
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    // decoration: InputDecoration(
                                    //   contentPadding:
                                    //       EdgeInsets.only(top: 3, left: 8),
                                    //   enabledBorder: UnderlineInputBorder(
                                    //     borderSide: BorderSide(
                                    //         color: ConstantData.textColor),
                                    //   ),
                                    //   focusedBorder: UnderlineInputBorder(
                                    //     borderSide: BorderSide(
                                    //         color:
                                    //             ConstantData.disableIconColor),
                                    //   ),
                                    // ),

                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: S.of(context).expDateHint,
                                      // hintText: 'Full Name',
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
                                // Padding(
                                //   padding: EdgeInsets.only(top: 10, left: 8),
                                //   child: Align(
                                //       alignment: Alignment.topLeft,
                                //       // child: Text(
                                //       //   S.of(context).cvvHint,
                                //       //   textAlign: TextAlign.start,
                                //       //   style: TextStyle(
                                //       //       fontFamily: ConstantData.fontFamily,
                                //       //       fontWeight: FontWeight.bold,
                                //       //       fontSize: ConstantData.font12Px,
                                //       //       color: ConstantData.textColor),
                                //       // )
                                //
                                //     child: ConstantWidget.getCustomText(S.of(context).cvvHint, ConstantData.textColor, 1, TextAlign.start, FontWeight.bold, ConstantData.font12Px),
                                //
                                //   ),
                                // ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 10, left: 8, top: 10),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    controller: cvvController,
                                    style: TextStyle(
                                        fontFamily: ConstantData.fontFamily,
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    // decoration: InputDecoration(
                                    //   contentPadding:
                                    //       EdgeInsets.only(top: 3, left: 8),
                                    //   enabledBorder: UnderlineInputBorder(
                                    //     borderSide: BorderSide(
                                    //         color: ConstantData.textColor),
                                    //   ),
                                    //   focusedBorder: UnderlineInputBorder(
                                    //     borderSide: BorderSide(
                                    //         color:
                                    //             ConstantData.disableIconColor),
                                    //   ),
                                    // ),

                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: S.of(context).cvvHint,
                                      // hintText: 'Full Name',
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
                          child: ConstantWidget.getCustomTextWithoutAlign(
                              S.of(context).saveTheCards,
                              Colors.white,
                              FontWeight.w900,
                              ConstantData.font15Px),

                          // child: Text(

                          //   S.of(context).saveTheCards,
                          //   style: TextStyle(
                          //       fontFamily: ConstantData.fontFamily,
                          //       fontWeight: FontWeight.w900,
                          //       fontSize: ConstantData.font15Px,
                          //       color: Colors.white,
                          //       decoration: TextDecoration.none),
                          // ),
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
