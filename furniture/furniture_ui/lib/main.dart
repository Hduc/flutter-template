import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:furniture_ui/widget/IntroPage.dart';
import 'package:furniture_ui/widget/RegisterPage.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/PrefData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

import 'widget/LoginPage.dart';
import 'widget/TabWidget.dart';
import 'generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ConstantData.primaryColor,
        primaryColorDark: ConstantData.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: ConstantData.accentColor),
      ),
      home: MyHomePage(
        title: "false",
        key: null,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addObserver(this);

    signInValue();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
        child: Scaffold(
            backgroundColor: ConstantData.bgColor,
            body: Container(
              child: getSignInWidget(),
            )),
        onWillPop: _requestPop);
  }

  Future<bool> _requestPop() {
    Future.delayed(const Duration(milliseconds: 200), () {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });

    return new Future.value(false);
  }

  bool _isSignIn = false;
  bool _isIntro = false;

  void signInValue() async {
    _isSignIn = await PrefData.getIsSignIn();
    _isIntro = await PrefData.getIsIntro();

    print("_isSignIn12====$_isSignIn");
    setState(() {});
    if (_isIntro) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => IntroPage(),
          ));
    } else {
      Timer(Duration(seconds: (_isSignIn) ? 5 : 0), () {
        print("_isSignIn====$_isSignIn");

        if (_isSignIn) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => TabWidget(),
              ));
        }
      });
    }
  }

  Widget getSignInWidget() {
    if (_isSignIn) {
      return splashPage();
    } else {
      return choosePage();
    }
  }

  Widget splashPage() {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: ExactAssetImage("assets/images/splash_1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget choosePage() {
    double margin = MediaQuery.of(context).size.width * 0.03;
    double left = MediaQuery.of(context).size.width * 0.05;
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: ExactAssetImage("assets/images/splash_1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: margin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(
                          top: margin, bottom: margin, left: left, right: left),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                ),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(
                          bottom: margin, left: left, right: left),
                      height: 50,
                      decoration: BoxDecoration(
                          color: ConstantData.whiteColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        child: Center(
                          child: Text(
                            S.of(context).login,
                            style: TextStyle(
                                fontFamily: "SFProText",
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: ConstantData.textColor,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
