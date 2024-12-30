// ignore_for_file: deprecated_member_use

import 'package:eco_product_ui_updated/utils/ConstantWidget.dart';
import 'package:flutter/material.dart';
import 'package:eco_product_ui_updated/generated/l10n.dart';
import 'package:eco_product_ui_updated/widget/ForgotPasswordPage.dart';
import 'package:eco_product_ui_updated/utils/ConstantData.dart';
import 'package:eco_product_ui_updated/utils/PrefData.dart';
import 'package:eco_product_ui_updated/utils/SizeConfig.dart';

import 'RegisterPage.dart';
import 'TabWidget.dart';



class LoginPage extends StatefulWidget {
  _LoginPage createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
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
            margin: EdgeInsets.only(
                // top: MediaQuery.of(context).size.height * 0.09,
                bottom: MediaQuery.of(context).size.height * 0.02,
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [


                Container(
                  margin: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.05,
                      bottom: 20
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child:  Image.asset(
                          ConstantData.assetsPath + "logo.png",
                          height: 80,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [



                          ConstantWidget.getCustomText( S.of(context).signYouIn,
                              ConstantData.textColor, 1, TextAlign.start, FontWeight.bold, ConstantWidget.getWidthPercentSize(context, 6))

,
                          ConstantWidget.getCustomText( S.of(context).SignInMsg, ConstantData.primaryTextColor, 1, TextAlign.start,
                              FontWeight.w500, ConstantWidget.getWidthPercentSize(context, 2.5))



                        ],
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,

                      child: ConstantWidget.getCustomText( S.of(context).emailAddress, ConstantData.textColor, 1, TextAlign.start,
                          FontWeight.bold, 14)),

                ),
                Container(
                  margin: EdgeInsets.only(bottom
                      : 15),
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: ConstantData.fontFamily,
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
                            fontFamily: ConstantData.fontFamily,
                            color: ConstantData.textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: ConstantWidget.getCustomText( S.of(context).password, ConstantData.textColor, 1, TextAlign.start,
                          FontWeight.bold, 14)),

                ),
                Container(

                  height: MediaQuery.of(context).size.height * 0.07,
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: ConstantData.fontFamily,
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
                            fontFamily: ConstantData.fontFamily,
                            color: ConstantData.textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                      child: ConstantWidget.getCustomText( S.of(context).forgotPassword, ConstantData.accentColor, 1, TextAlign.start,
                          FontWeight.bold, ConstantData.font15Px),



                    onTap: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordPage()));
                    },
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      InkWell(
                        child: Container(
                            margin: EdgeInsets.only(top: 40),
                            height: 50,
                            decoration: BoxDecoration(
                                color: ConstantData.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: InkWell(
                              child: Center(
                                child: ConstantWidget.getCustomTextWithoutAlign(S.of(context).login, Colors.white, FontWeight.w900, ConstantData.font15Px),

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
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            ConstantWidget.getCustomText(S.of(context).donHaveAnAccount, ConstantData.primaryTextColor, 1, TextAlign.start, FontWeight.bold, ConstantData.font15Px)

                            ,
                            InkWell(


                              child: ConstantWidget.getUnderlineText(S.of(context).register.toUpperCase(), ConstantData.accentColor, 1, TextAlign.start, FontWeight.bold, ConstantData.font15Px),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
          )),
      onWillPop: _requestPop,
    );
  }
}
