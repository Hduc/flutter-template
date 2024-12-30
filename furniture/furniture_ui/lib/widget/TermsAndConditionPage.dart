import 'package:flutter/material.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

class TermsAndConditionPage extends StatefulWidget {
  @override
  _TermsAndConditionPage createState() {
    return _TermsAndConditionPage();
  }
}

class _TermsAndConditionPage extends State<TermsAndConditionPage> {
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

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: ConstantData.bgColor,
            title: Text(S.of(context).termsAndCondition,
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
          body: SingleChildScrollView(
              child: Container(
                  margin:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  child: Text(
                    S.of(context).loremText,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      fontFamily: "SFProText",
                      color: ConstantData.textColor,
                    ),
                  ))),
        ),
        onWillPop: _requestPop);
  }
}
