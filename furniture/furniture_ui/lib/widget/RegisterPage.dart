import 'package:flutter/material.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/PrefData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
import 'package:furniture_ui/widget/TermsAndConditionPage.dart';

import 'LoginPage.dart';
import 'TabWidget.dart';

class RegisterPage extends StatefulWidget {
  _RegisterPage createState() {
    return _RegisterPage();
  }
}

class _RegisterPage extends State<RegisterPage> {
  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: ConstantData.bgColor,
            title: Text(""),
            leading: Builder(
              builder: (BuildContext context) {
                return Icon(
                  Icons.keyboard_backspace,
                  color: Colors.transparent,
                );
              },
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: Text(
                    S.of(context).createNew,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: ConstantData.textColor),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.03,
                  ),
                  child: Text(
                    S.of(context).SignUpMsg,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: ConstantData.primaryTextColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        S.of(context).emailAddress,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: "SFProText",
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: ConstantData.textColor),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: "SFProText",
                        color: ConstantData.primaryTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 3, left: 8),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstantData.textColor, width: 0.3),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(8),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstantData.textColor, width: 0.3),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(15),
                          ),
                        ),
                        hintStyle: TextStyle(
                            fontFamily: "SFProText",
                            color: ConstantData.textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        S.of(context).password,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: "SFProText",
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: ConstantData.textColor),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: "SFProText",
                        color: ConstantData.primaryTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 3, left: 8),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstantData.textColor, width: 0.3),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(8),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstantData.textColor, width: 0.3),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(15),
                          ),
                        ),
                        hintStyle: TextStyle(
                            fontFamily: "SFProText",
                            color: ConstantData.textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        S.of(context).mobileNumber,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: "SFProText",
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: ConstantData.textColor),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: TextField(
                    maxLines: 1,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        fontFamily: "SFProText",
                        color: ConstantData.primaryTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 3, left: 8),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstantData.textColor, width: 0.3),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(8),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstantData.textColor, width: 0.3),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(15),
                          ),
                        ),
                        hintStyle: TextStyle(
                            fontFamily: "SFProText",
                            color: ConstantData.textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        S.of(context).address,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: "SFProText",
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: ConstantData.textColor),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: "SFProText",
                        color: ConstantData.primaryTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 3, left: 8),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstantData.textColor, width: 0.3),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(8),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstantData.textColor, width: 0.3),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(15),
                          ),
                        ),
                        hintStyle: TextStyle(
                            fontFamily: "SFProText",
                            color: ConstantData.textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ),
                Row(
                  children: [
                    ImageIcon(
                      AssetImage('assets/images/checkmark.png'),
                      size: 15,
                      color: ConstantData.textColor,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        S.of(context).iHaveAccept,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: "SFProText",
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: ConstantData.primaryTextColor),
                      ),
                    ),
                    InkWell(
                      child: Text(
                        S.of(context).termsAndCondition,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "SFProText",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: ConstantData.textColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TermsAndConditionPage()));
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 50,
                      decoration: BoxDecoration(
                          color: ConstantData.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        child: Center(
                          child: Text(
                            S.of(context).register,
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
                    PrefData.setIsSignIn(true);


                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TabWidget(),
                        ));



                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).haveAnAccount,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: "SFProText",
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: ConstantData.primaryTextColor),
                      ),
                      InkWell(
                        child: Text(
                          S.of(context).login.toUpperCase(),
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: "SFProText",
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: ConstantData.textColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
      onWillPop: _requestPop,
    );
  }
}
