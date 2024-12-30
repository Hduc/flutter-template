import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterlearnvern/HomeWidget.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';
import 'package:flutterlearnvern/utils/PrefData.dart';

import 'IntroPage.dart';
import 'SelectPage.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    changeStatusColor(primaryColor);
    ConstantData.setThemePosition();
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}






class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ConstantData.setThemePosition();

    signInValue();
  }

  bool _isSignIn = false;
  bool _isIntro = false;

  void signInValue() async {
    _isSignIn = await PrefData.getIsSignIn();
    _isIntro = await PrefData.getIsIntro();
    Timer(Duration(seconds: 3), () {
      print("signin---$_isSignIn");
      if (_isIntro) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => IntroPage(),
            ));
      } else if (!_isSignIn) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SelectPage(),
            ));
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeWidget(0),
            ));
      }
    });
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    double size = ConstantWidget.getWidthPercentSize(context, 50);
    double subSize = ConstantWidget.getPercentSize(size, 80);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(

        height: double.infinity,
        width: double.infinity,


        decoration: BoxDecoration(

            image: DecorationImage(
                image: new ExactAssetImage(
                    ConstantData.assetImagesPath +
                        "splash.jpg"),
                fit: BoxFit.fill)),

        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Container(
            height: size,
            width: size,

            decoration: BoxDecoration(
              color: cellColor,
              borderRadius: BorderRadius.all(Radius.circular(ConstantWidget.getPercentSize(size, 4)))
            ),
            child: Center(
              child: Image.asset( ConstantData.assetImagesPath +
                  "logo_6.png",width: subSize,),
            ),
          ),
        ),
      ),
    );
  }
}
