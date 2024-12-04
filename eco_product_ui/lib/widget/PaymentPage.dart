// ignore_for_file: deprecated_member_use

import 'package:eco_product_ui_updated/utils/ConstantWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eco_product_ui_updated/model/CardModel.dart';
import 'package:eco_product_ui_updated/model/PaymentModel.dart';
import 'package:eco_product_ui_updated/utils/ConstantData.dart';
import 'package:eco_product_ui_updated/utils/SizeConfig.dart';

import 'package:eco_product_ui_updated/data/DataFile.dart';
import 'package:eco_product_ui_updated/generated/l10n.dart';
import 'package:eco_product_ui_updated/widget/ConfirmationPage.dart';
import 'package:eco_product_ui_updated/widget/ReviewSlider.dart';

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


            title: ConstantWidget.getAppBarText(S.of(context).checkOut),
            // title: ConstantWidget.getCustomTextWithoutAlign(S.of(context).checkOut,ConstantData.textColor, FontWeight.bold, ConstantData.font18Px),

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
            margin: EdgeInsets.only(right: leftMargin,left: leftMargin, top: leftMargin),
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
                          onChange: (index) {

                          },
                          initialValue: 1,
                          width: double.infinity,
                          options: [S.of(context).personalInfo, S.of(context).payment,S.of(context).confirmation]),




                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          S.of(context).paymentMethods,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: ConstantData.fontFamily,
                              fontWeight: FontWeight.w800,
                              fontSize: ConstantData.font15Px,
                              color: ConstantData.textColor1),
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
                            return  InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: (index == _paymentPosition)
                                      ? ConstantData.primaryColor
                                      : Colors.transparent,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(
                                      color: (index == _paymentPosition)
                                          ? ConstantData.primaryColor
                                          : ConstantData.disableIconColor,
                                      width: 1),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        paymentList[index].image,
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
                                      // child: Text(
                                      //   paymentList[index].name.toUpperCase(),
                                      //   textAlign: TextAlign.start,
                                      //   style: TextStyle(
                                      //       fontFamily: ConstantData.fontFamily,
                                      //       fontWeight: FontWeight.w500,
                                      //       fontSize: 10,
                                      //       color: (index == _paymentPosition)
                                      //           ? ConstantData.whiteColor
                                      //           : ConstantData.textColor),
                                      // ),


                                        child: ConstantWidget.getCustomText(
                                            paymentList[index].name.toUpperCase(),
                                            (index == _paymentPosition) ? ConstantData.whiteColor : ConstantData.textColor,
                                            1,
                                            TextAlign.start,
                                            FontWeight.w500,
                                            10),
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
                        padding: EdgeInsets.only(
                            top: 15, bottom: 10),
                        child: Row(
                          children: [
                             ConstantWidget.getCustomText(
                                S.of(context).savedCards,
                                 ConstantData.textColor1,
                                1,
                                TextAlign.start,
                                FontWeight.w800,
                                 ConstantData.font15Px),
                            // Text(
                            //   S.of(context).savedCards,
                            //   textAlign: TextAlign.start,
                            //   style: TextStyle(
                            //       fontFamily: ConstantData.fontFamily,
                            //       fontWeight: FontWeight.w800,
                            //       fontSize: ConstantData.font15Px,
                            //       color: ConstantData.textColor),
                            // ),
                            new Spacer(),
                            InkWell(
                              child:   ConstantWidget.getUnderLineCustomTextWithoutAlign(
                                  S.of(context).newCard,
                                  ConstantData.textColor1,
                                  FontWeight.bold,
                                  ConstantData.font12Px),
                              // child: Text(
                              //   S.of(context).newCard.toUpperCase(),
                              //   style: TextStyle(
                              //       fontFamily: ConstantData.fontFamily,
                              //       fontWeight: FontWeight.w600,
                              //       fontSize: ConstantData.font12px,
                              //       color: ConstantData.textColor),
                              // ),
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
                                          color: Colors.grey.shade200,
                                          blurRadius: 10,
                                        )
                                      ],


                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: Column(
                                    children: [

                                      Row(
                                        children: [
                                          InkWell(
                                            child: Icon(
                                              CupertinoIcons.checkmark_alt_circle_fill,
                                              color: (_cardPosition==index)?ConstantData.accentColor:Colors.grey.shade400,
                                              size: 25,
                                            ),
                                            onTap:(){
                                                    _cardPosition = index;
                                                    setState(() {});
                                          }
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "XXXX XXXX XXXX 1234",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontFamily: ConstantData.fontFamily,
                                                  color: ConstantData.textColor1,
                                                  fontWeight: FontWeight.w700,
                                                  decoration: TextDecoration.none,
                                                  fontSize: 14),
                                            ),
                                          ),
                                          new Spacer(),
                                          Image.asset(
                                            cardList[index].image,
                                            width: 25,
                                            height: 25,
                                          ),

                                        ],
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                           ConstantData.assetsPath+   "credit_card.png",
                                              width: 30,
                                              height: 20,
                                              color: ConstantData.accentColor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 10),
                                              child: Text(
                                                "Valid from".toUpperCase(),
                                                style: TextStyle(
                                                    fontFamily: ConstantData.fontFamily,
                                                    color: ConstantData.textColor,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration.none,
                                                    fontSize: 10),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 10),
                                              child: Text(
                                                cardList[index].expDate,
                                                style: TextStyle(
                                                    fontFamily: ConstantData.fontFamily,
                                                    color: ConstantData.textColor,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration.none,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 10,left: 2),
                                        child: Row(
                                          children: [
                                            Text(
                                              cardList[index].name

                                                  .toUpperCase(),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontFamily: ConstantData.fontFamily,
                                                  color: ConstantData.textColor1,
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration.none,
                                                  fontSize: 12),
                                            ),
                                            new Spacer(),
                                            Text(
                                              "CVV",
                                              style: TextStyle(
                                                  fontFamily: ConstantData.fontFamily,
                                                  color: ConstantData.textColor,
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration.none,
                                                  fontSize: 14),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  top: 5, left: 8, bottom: 5, right: 8),
                                              margin: EdgeInsets.only(left: 5),
                                              decoration: BoxDecoration(
                                                color: ConstantData.primaryColor,
                                                borderRadius: BorderRadius.circular(3),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "789",
                                                  style: TextStyle(
                                                      fontFamily: ConstantData.fontFamily,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w800,
                                                      fontSize: 8),
                                                ),
                                              ),
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

                          child: ConstantWidget.getCustomTextWithoutAlign(S.of(context).continueShopping, Colors.white, FontWeight.w900, ConstantData.font15Px),

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
