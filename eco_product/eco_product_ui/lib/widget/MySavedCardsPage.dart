// ignore_for_file: deprecated_member_use

import 'package:eco_product_ui_updated/utils/ConstantWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eco_product_ui_updated/data/DataFile.dart';
import 'package:eco_product_ui_updated/generated/l10n.dart';
import 'package:eco_product_ui_updated/model/CardModel.dart';
import 'package:eco_product_ui_updated/utils/ConstantData.dart';
import 'package:eco_product_ui_updated/utils/SizeConfig.dart';
import 'package:eco_product_ui_updated/widget/AddNewCardPage.dart';


class MySavedCardsPage extends StatefulWidget {
  @override
  _MySavedCardsPage createState() {
    return _MySavedCardsPage();
  }
}

class _MySavedCardsPage extends State<MySavedCardsPage> {
  List<CardModel> cardList = DataFile.getCardList();

  int _selectedCards = 0;

  @override
  void initState() {
    super.initState();
    cardList = DataFile.getCardList();
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
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,


            title: ConstantWidget.getAppBarText(S.of(context).mySavedCards),
            // title: ConstantWidget.getCustomTextWithoutAlign(S.of(context).mySavedCards,ConstantData.textColor, FontWeight.bold, ConstantData.font18Px),

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
            child: Container(
              margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                  bottom: MediaQuery.of(context).size.width * 0.01),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Row(
                        children: [

                          ConstantWidget.getCustomText(S.of(context).savedCards, ConstantData.textColor, 1, TextAlign.start, FontWeight.w800, ConstantData.font15Px),
                          new Spacer(),
                          InkWell(
                            child: ConstantWidget.getUnderLineCustomTextWithoutAlign( S.of(context).newCard,
                                ConstantData.textColor1, FontWeight.w600
                                , ConstantData.font12Px),

                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddNewCardPage()));
                            },
                          )
                        ],
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: cardList.length,
                          itemBuilder: (context, index) {

                            return  InkWell(
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
                                              color: (_selectedCards==index)?ConstantData.accentColor:Colors.grey.shade400,
                                              size: 25,
                                            ),
                                            onTap:(){
                                              _selectedCards = index;
                                              setState(() {});
                                            }
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "XXXX XXXX XXXX 1234",
                                            style: TextStyle(
                                                fontFamily: ConstantData.fontFamily,
                                                color: ConstantData.textColor,
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


                          })
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
