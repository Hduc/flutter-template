import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_ui/main.dart';
import 'package:furniture_ui/model/AddressModel.dart';
import 'package:furniture_ui/model/CardModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/widget/MyOrderPage.dart';

import 'TabWidget.dart';

class ThankYouPage extends StatefulWidget {
  @override
  _ThankYouPage createState() {
    return _ThankYouPage();
  }
}

class _ThankYouPage extends State<ThankYouPage> {
  AddressModel addressList = DataFile.getAddressList()[0];
  CardModel cardList = DataFile.getCardList()[0];

  int currentStep = 0;

  @override
  void initState() {
    super.initState();
    cardList = DataFile.getCardList()[0];
    addressList = DataFile.getAddressList()[0];
    setState(() {});
  }

  Future<bool> _requestPop() {
    // Navigator.of(context).pop();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: '',
                )));

    return new Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.05;
    double size = SizeConfig.safeBlockVertical! * 25;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,
            title: Text(""),
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
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/sucess.png', height: size),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 5),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            style: new TextStyle(
                              // fontWeight: FontWeight.w600,
                              fontSize: 12,
                              fontFamily: "SFProText",
                              color: ConstantData.primaryTextColor,
                            ),
                            children: <TextSpan>[
                              new TextSpan(text: 'Your order'),
                              new TextSpan(
                                  text: ' #345678 ',
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ConstantData.textColor)),
                              new TextSpan(text: 'is Completed.'),
                            ],
                          ),
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: new TextSpan(
                          style: new TextStyle(
                            fontSize: 12,
                            fontFamily: "SFProText",
                            color: ConstantData.primaryTextColor,
                          ),
                          children: <TextSpan>[
                            new TextSpan(
                                text: 'Please check the Delivery status at'),
                            new TextSpan(
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MyOrderPage(),
                                        ));
                                  },
                                text: '\nOrder Tracking ',
                                style: new TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: ConstantData.textColor)),
                            new TextSpan(text: ' pages.'),
                          ],
                        ),
                      ),
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
                            S.of(context).continueShopping,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TabWidget()));
                  },
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
