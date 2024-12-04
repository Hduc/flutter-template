import 'package:flutter/material.dart';
import 'package:furniture_ui/model/CardModel.dart';
import 'package:furniture_ui/model/PaymentModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/widget/ConfirmationPage.dart';
import 'package:furniture_ui/widget/ReviewSlider.dart';

import 'AddNewCardPage.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPage createState() {
    return _PaymentPage();
  }
}

class _PaymentPage extends State<PaymentPage> {
  List<PaymentModel> paymentList = DataFile.getPaymentList();
  List<CardModel> cardList = DataFile.getCardList();

  int currentStep = 0;
  int _paymentPosition = 0;
  int _cardPosition = 0;

  @override
  void initState() {
    super.initState();
    cardList = DataFile.getCardList();
    paymentList = DataFile.getPaymentList();
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
                right: leftMargin, left: leftMargin, top: leftMargin),
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
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          S.of(context).paymentMethods,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: "SFProText",
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: ConstantData.textColor),
                        ),
                      ),
                      GridView.count(
                        crossAxisCount: 3,
                        childAspectRatio: 1.8,
                        // crossAxisSpacing: 8,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 8,
                        shrinkWrap: true,
                        children: List.generate(
                          paymentList.length,
                          (index) {
                            return InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: (index == _paymentPosition)
                                      ? ConstantData.primaryColor
                                      : Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(
                                      color: (index == _paymentPosition)
                                          ? ConstantData.textColor
                                          : ConstantData.disableIconColor,
                                      width: 1),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        paymentList[index].image!,
                                        height: 25,
                                        width: 25,
                                        color: (index == _paymentPosition)
                                            ? ConstantData.whiteColor
                                            : ConstantData.textColor,
                                      ),
                                      // Image.asset("assets/images/sofa_category.png",height: 20,width: 20),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        paymentList[index].name!.toUpperCase(),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            color: (index == _paymentPosition)
                                                ? ConstantData.whiteColor
                                                : ConstantData.textColor),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                _paymentPosition = index;
                                setState(() {});
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              S.of(context).savedCards,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                  color: ConstantData.textColor),
                            ),
                            new Spacer(),
                            InkWell(
                              child: Text(
                                S.of(context).newCard.toUpperCase(),
                                style: TextStyle(
                                    fontFamily: "SFProText",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: ConstantData.textColor),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AddNewCardPage()));
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.width * 0.01),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: cardList.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  padding: EdgeInsets.all(8),
                                  decoration: new BoxDecoration(
                                      color: ConstantData.whiteColor,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          offset: Offset(1, 1),
                                          blurRadius: 1,
                                        )
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                cardList[index].name!,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                  fontFamily: "SFProText",
                                                  color: ConstantData.textColor,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 2),
                                                child: Text(
                                                  cardList[index].email!,
                                                  style: TextStyle(
                                                    fontFamily: "SFProText",
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10,
                                                    color: ConstantData
                                                        .primaryTextColor,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          new Spacer(),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 3),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                      cardList[index].image!,
                                                      height: 35,
                                                      width: 35),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: InkWell(
                                                      child: Icon(
                                                        (_cardPosition == index)
                                                            ? Icons
                                                                .radio_button_checked
                                                            : Icons
                                                                .radio_button_unchecked,
                                                        color: (_cardPosition ==
                                                                index)
                                                            ? ConstantData
                                                                .textColor
                                                            : ConstantData
                                                                .disableIconColor,
                                                        size: 20,
                                                      ),
                                                      onTap: () {
                                                        _cardPosition = index;
                                                        setState(() {});
                                                      },
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 15, bottom: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(S.of(context).cardNo,
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
                                                  left: 40, right: 30),
                                              child: Text(":",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 10,
                                                      fontFamily: "SFProText",
                                                      color: ConstantData
                                                          .primaryTextColor,
                                                      decoration:
                                                          TextDecoration.none)),
                                            ),
                                            Expanded(
                                              child: Text(
                                                  cardList[index].cardNo!,
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 10,
                                                      fontFamily: "SFProText",
                                                      color: ConstantData
                                                          .textColor,
                                                      decoration:
                                                          TextDecoration.none)),
                                              flex: 1,
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Text(S.of(context).expDate,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 10,
                                                          fontFamily:
                                                              "SFProText",
                                                          color: ConstantData
                                                              .primaryTextColor,
                                                          decoration:
                                                              TextDecoration
                                                                  .none)),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20, right: 20),
                                                    child: Text(":",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                "SFProText",
                                                            color: ConstantData
                                                                .primaryTextColor,
                                                            decoration:
                                                                TextDecoration
                                                                    .none)),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                        cardList[index]
                                                            .expDate!,
                                                        textAlign:
                                                            TextAlign.end,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                "SFProText",
                                                            color: ConstantData
                                                                .textColor,
                                                            decoration:
                                                                TextDecoration
                                                                    .none)),
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
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    child: Text(
                                                        S.of(context).cvv,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                "SFProText",
                                                            color: ConstantData
                                                                .primaryTextColor,
                                                            decoration:
                                                                TextDecoration
                                                                    .none)),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20, right: 20),
                                                    child: Text(":",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                "SFProText",
                                                            color: ConstantData
                                                                .primaryTextColor,
                                                            decoration:
                                                                TextDecoration
                                                                    .none)),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                        cardList[index].cVV!,
                                                        textAlign:
                                                            TextAlign.end,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                "SFProText",
                                                            color: ConstantData
                                                                .textColor,
                                                            decoration:
                                                                TextDecoration
                                                                    .none)),
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
                                onTap: () {},
                              );
                            }),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(
                          top: 10, bottom: leftMargin, left: leftMargin),
                      height: 50,
                      decoration: BoxDecoration(
                          color: ConstantData.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        child: Center(
                          child: Text(
                            S.of(context).continueString,
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
                            builder: (context) => ConfirmationPage()));
                  },
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
