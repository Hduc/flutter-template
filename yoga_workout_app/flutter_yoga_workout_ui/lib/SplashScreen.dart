import 'dart:async';

import 'package:flutter/material.dart';
import 'package:workout/ConstantWidget.dart';
import 'package:workout/GuideIntroPage.dart';

import 'ColorCategory.dart';
import 'Constants.dart';
import 'PrefData.dart';
import 'SignInPage.dart';
import 'SizeConfig.dart';
import 'generated/l10n.dart';

  class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> with TickerProviderStateMixin {
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
    _getIsFirst();



  }

  _getIsFirst() async {
    isFirst = await PrefData().getIsFirstIntro();
    bool _isSignIn = await PrefData.getIsSignIn();
    bool isIntro = await PrefData.getIsIntro();
    if (isIntro) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GuideIntroPage()));
    } else   if (!_isSignIn){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignInPage(),
          ));
    }
    else{
      Timer(Duration(seconds: 3), () {
        sendHomePage(context,0,isPushReplace: true);
      });
    }

  }

  ThemeData themeData = new ThemeData(
      primaryColor: primaryColor,
      primaryColorDark: primaryColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor));

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
// appBar: AppBar(
//   backgroundColor: Colors.green,
// ),
//       backgroundColor: Colors.red,
      // resizeToAvoidBottomInset : false,
      appBar: getColorStatusBar(bgDarkWhite),


      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: bgDarkWhite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  Constants.assetsImagePath + "splash_icon.png",
                  height: ConstantWidget.getScreenPercentSize(context, 15),
                ),
              ),
              SizedBox(
                height: ConstantWidget.getScreenPercentSize(context, 2),
              ),
              ConstantWidget.getTextWidgetWithFont(
                  S.of(context).yogaFitness,
                  Colors.black,
                  TextAlign.center,
                  FontWeight.bold,
                  ConstantWidget.getScreenPercentSize(context, 4),
                  Constants.splashFontsFamily)
            ],
          ),
        ),
      ),
    );
  }
}
