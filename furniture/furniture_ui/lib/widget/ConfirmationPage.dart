import 'package:flutter/material.dart';
import 'package:furniture_ui/model/AddressModel.dart';
import 'package:furniture_ui/model/CardModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/widget/ReviewSlider.dart';
import 'package:furniture_ui/widget/ThankYouPage.dart';

class ConfirmationPage extends StatefulWidget {
  @override
  _ConfirmationPage createState() {
    return _ConfirmationPage();
  }
}

class _ConfirmationPage extends State<ConfirmationPage> {
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
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.05;
    double padding = 15;

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
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: leftMargin, right: leftMargin, top: leftMargin),
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
                            initialValue: 2,
                            width: double.infinity,
                            options: [
                              S.of(context).personalInfo,
                              S.of(context).payment,
                              S.of(context).confirmation
                            ]),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.only(
                              left: padding,
                              right: padding,
                              top: 20,
                              bottom: 20),
                          decoration: new BoxDecoration(
                              color: ConstantData.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                addressList.name!,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  fontFamily: "SFProText",
                                  color: ConstantData.textColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2),
                                child: Text(
                                  addressList.location!,
                                  style: TextStyle(
                                    fontFamily: "SFProText",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: ConstantData.primaryTextColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          padding: EdgeInsets.all(padding),
                          decoration: new BoxDecoration(
                              color: ConstantData.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cardList.name!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          fontFamily: "SFProText",
                                          color: ConstantData.textColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 2),
                                        child: Text(
                                          cardList.email!,
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            color:
                                                ConstantData.primaryTextColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  new Spacer(),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 3),
                                      child: Image.asset(cardList.image!,
                                          height: 35, width: 35),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15, bottom: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(S.of(context).cardNo,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            fontFamily: "SFProText",
                                            color:
                                                ConstantData.primaryTextColor,
                                            decoration: TextDecoration.none)),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 40, right: 30),
                                      child: Text(":",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                              fontFamily: "SFProText",
                                              color:
                                                  ConstantData.primaryTextColor,
                                              decoration: TextDecoration.none)),
                                    ),
                                    Expanded(
                                      child: Text(cardList.cardNo!,
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 10,
                                              fontFamily: "SFProText",
                                              color: ConstantData.textColor,
                                              decoration: TextDecoration.none)),
                                      flex: 1,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Text(S.of(context).expDate,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  fontFamily: "SFProText",
                                                  color: ConstantData
                                                      .primaryTextColor,
                                                  decoration:
                                                      TextDecoration.none)),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: Text(":",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10,
                                                    fontFamily: "SFProText",
                                                    color: ConstantData
                                                        .primaryTextColor,
                                                    decoration:
                                                        TextDecoration.none)),
                                          ),
                                          Expanded(
                                            child: Text(cardList.expDate!,
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 10,
                                                    fontFamily: "SFProText",
                                                    color:
                                                        ConstantData.textColor,
                                                    decoration:
                                                        TextDecoration.none)),
                                            flex: 1,
                                          )
                                        ],
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(S.of(context).cvv,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10,
                                                    fontFamily: "SFProText",
                                                    color: ConstantData
                                                        .primaryTextColor,
                                                    decoration:
                                                        TextDecoration.none)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: Text(":",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10,
                                                    fontFamily: "SFProText",
                                                    color: ConstantData
                                                        .primaryTextColor,
                                                    decoration:
                                                        TextDecoration.none)),
                                          ),
                                          Expanded(
                                            child: Text(cardList.cVV!,
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 10,
                                                    fontFamily: "SFProText",
                                                    color:
                                                        ConstantData.textColor,
                                                    decoration:
                                                        TextDecoration.none)),
                                            flex: 1,
                                          )
                                        ],
                                      ),
                                      flex: 1,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          padding: EdgeInsets.only(
                              right: padding,
                              left: padding,
                              top: 15,
                              bottom: 15),
                          decoration: new BoxDecoration(
                              color: ConstantData.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).promoCode,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  fontFamily: "SFProText",
                                  color: ConstantData.textColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            color:
                                                ConstantData.primaryTextColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                        decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(left: 8),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ConstantData.textColor),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ConstantData
                                                    .disableIconColor),
                                          ),
                                        ),
                                      ),
                                      flex: 1,
                                    ),
                                    InkWell(
                                      child: Container(
                                          height: 35,
                                          width: 80,
                                          margin: EdgeInsets.only(
                                              right: 20, left: 15),
                                          decoration: BoxDecoration(
                                              color: ConstantData.primaryColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                          child: InkWell(
                                            child: Center(
                                              child: Text(
                                                S.of(context).apply,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                    color: Colors.white,
                                                    fontFamily: "SFProText",
                                                    decoration:
                                                        TextDecoration.none),
                                              ),
                                            ),
                                          )),
                                      onTap: () {},
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 1,
                ),
                Container(
                  padding: EdgeInsets.all(leftMargin),
                  color: ConstantData.whiteColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(S.of(context).subTotal,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.primaryTextColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
                          ),
                          Text(":",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10,
                                  fontFamily: "SFProText",
                                  color: ConstantData.primaryTextColor,
                                  decoration: TextDecoration.none)),
                          Expanded(
                            child: Text("\$88.10",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.textColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(S.of(context).shippingFee,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                      fontFamily: "SFProText",
                                      color: ConstantData.primaryTextColor,
                                      decoration: TextDecoration.none)),
                              flex: 1,
                            ),
                            Text(":",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.primaryTextColor,
                                    decoration: TextDecoration.none)),
                            Expanded(
                              child: Text("\$9.90",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10,
                                      fontFamily: "SFProText",
                                      color: ConstantData.textColor,
                                      decoration: TextDecoration.none)),
                              flex: 1,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(S.of(context).estimatingTax,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.primaryTextColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
                          ),
                          Text(":",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10,
                                  fontFamily: "SFProText",
                                  color: ConstantData.primaryTextColor,
                                  decoration: TextDecoration.none)),
                          Expanded(
                            child: Text("\$6.50",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.textColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        height: 1,
                        color: ConstantData.viewColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(S.of(context).total,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 12,
                                    fontFamily: "SFProText",
                                    color: ConstantData.primaryTextColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
                          ),
                          Text(":",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12,
                                  fontFamily: "SFProText",
                                  color: ConstantData.primaryTextColor,
                                  decoration: TextDecoration.none)),
                          Expanded(
                            child: Text("\$104.50",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.textColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
                          )
                        ],
                      ),
                      InkWell(
                        child: Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 50,
                            decoration: BoxDecoration(
                                color: ConstantData.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: InkWell(
                              child: Center(
                                child: Text(
                                  S.of(context).placeOrder,
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
                                  builder: (context) => ThankYouPage()));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
