// ignore_for_file: deprecated_member_use

import 'package:eco_product_ui_updated/main_project.dart';
import 'package:eco_product_ui_updated/utils/ConstantWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eco_product_ui_updated/model/AddressModel.dart';
import 'package:eco_product_ui_updated/model/CardModel.dart';
import 'package:eco_product_ui_updated/utils/ConstantData.dart';
import 'package:eco_product_ui_updated/utils/SizeConfig.dart';


import 'package:eco_product_ui_updated/data/DataFile.dart';
import 'package:eco_product_ui_updated/generated/l10n.dart';
import 'package:eco_product_ui_updated/widget/ReviewSlider.dart';
import 'package:eco_product_ui_updated/widget/ThankYouPage.dart';


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

            title: ConstantWidget.getAppBarText(S.of(context).checkOut),

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
                              fontFamily: ConstantData.fontFamily,
                              fontSize: 8,
                              color: ConstantData.textColor,
                              fontWeight: FontWeight.bold,
                            ),
                            onChange: (index) {

                            },
                            initialValue: 2,
                            width: double.infinity,
                            options: [S.of(context).personalInfo, S.of(context).payment,S.of(context).confirmation]),


                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.only(
                              left: padding, right: padding, top: 20, bottom: 20),
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



                              ConstantWidget.getCustomTextWithoutAlign(addressList.name,
                                  ConstantData.textColor1, FontWeight.w700, 14),
                              Padding(
                                padding: EdgeInsets.only(top: 2),

                            child:    ConstantWidget.getCustomTextWithoutAlign(addressList.location,
                                    ConstantData.primaryTextColor, FontWeight.w500, ConstantData.font12Px),

                              )
                            ],
                          ),
                        ),
//

                       Container(
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
                                    Icon(
                                          CupertinoIcons.checkmark_alt_circle_fill,
                                          color: ConstantData.accentColor,
                                          size: 25,
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
                                      cardList.image,
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
                                          cardList.expDate,
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
                                        cardList.name

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



                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          padding: EdgeInsets.only(right:padding,left: padding,top:15,bottom: 15),
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
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [


                               ConstantWidget.getCustomTextWithoutAlign(S.of(context).promoCode, ConstantData
                                  .textColor1,FontWeight.w700, ConstantData.font12Px),
                              Padding(
                                padding: EdgeInsets.only(bottom: 15),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [

                                    Expanded(child: TextField(
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontFamily: ConstantData.fontFamily,
                                          color: ConstantData.primaryTextColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 8),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: ConstantData.textColor),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: ConstantData.disableIconColor),
                                        ),
                                      ),
                                    ),flex: 1,),

                                    InkWell(
                                      child: Container(
                                          height: 35,
                                          width: 80,
                                          margin: EdgeInsets.only(
                                            right: 20,
                                            left: 15
                                          ),
                                          decoration: BoxDecoration(
                                              color: ConstantData
                                                  .primaryColor,
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(
                                                      5))),
                                          child: InkWell(
                                            child: Center(

                                              child:   ConstantWidget.getCustomTextWithoutAlign(S.of(context).findCoupon, Colors.white,FontWeight.w400, 10),
                                            ),
                                          )),
                                      onTap: () {

                                        Navigator.push(context, MaterialPageRoute(builder: (context) => MainProject()));
                                      },
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                        )
                      ]),
                  child: Column(
                    children: [

                      Center(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          height: 5,
                          width: 100,
                          color: ConstantData.cellColor,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ConstantWidget.getCustomText(S.of(context).subTotal, ConstantData.textColor, 1, TextAlign.start,
                                FontWeight.w800, 14),

                            flex: 1,
                          ),

                          Expanded(

                            // child:  ConstantWidget.getCustomText("\$88.10", ConstantData.textColor,
                            //     1,TextAlign.end,FontWeight.w800, 10),
                            child: ConstantWidget.getCustomText("\$88.10", ConstantData.textColor, 1, TextAlign.end,
                                FontWeight.w800, 14),

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
                              child: ConstantWidget.getCustomText(S.of(context).shippingFee, ConstantData.textColor, 1, TextAlign.start,
                                  FontWeight.w800, 14),

                              flex: 1,
                            ),

                            Expanded(
                              child: ConstantWidget.getCustomText("\$9.90", ConstantData.textColor, 1, TextAlign.end,
                                  FontWeight.w800, 14),

                              flex: 1,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ConstantWidget.getCustomText( S.of(context).estimatingTax, ConstantData.textColor, 1, TextAlign.start,
                                  FontWeight.w800, 14),


                              flex: 1,
                            ),

                            Expanded(


                              child: ConstantWidget.getCustomText("\$6.50",ConstantData.textColor, 1, TextAlign.end,
                                  FontWeight.w800, 14),


                              flex: 1,
                            )
                          ],
                        ),
                      ),
                      // Container(
                      //   margin: EdgeInsets.only(top: 20, bottom: 20),
                      //   height: 1,
                      //   color: ConstantData.viewColor,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            // child:  ConstantWidget.getCustomText(S.of(context).total,ConstantData.textColor,
                            //     1,TextAlign.end,FontWeight.w800, 10),

    child: ConstantWidget.getCustomText(S.of(context).total,ConstantData.primaryTextColor, 1, TextAlign.start,
    FontWeight.w800, 16),

                            flex: 1,
                          ),

                          Expanded(
    child: ConstantWidget.getCustomText("\$104.50",ConstantData.primaryTextColor, 1, TextAlign.end,
    FontWeight.w800, 16),
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

                                child: ConstantWidget.getCustomTextWithoutAlign(S.of(context).placeOrder, Colors.white, FontWeight.w900, ConstantData.font15Px),
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
