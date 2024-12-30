import 'package:flutter/material.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/CardModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
import 'package:furniture_ui/widget/AddNewCardPage.dart';

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
    double viewWidth = SizeConfig.safeBlockVertical! * 20;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,
            title: Text(S.of(context).mySavedCards,
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
                                      builder: (context) => AddNewCardPage()));
                            },
                          )
                        ],
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: cardList.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                padding: EdgeInsets.all(12),
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
                                              padding: EdgeInsets.only(top: 2),
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
                                            padding: EdgeInsets.only(right: 3),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    cardList[index].image!,
                                                    height: 35,
                                                    width: 35),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 5),
                                                  child: InkWell(
                                                    child: Icon(
                                                      (_selectedCards == index)
                                                          ? Icons
                                                              .radio_button_checked
                                                          : Icons
                                                              .radio_button_unchecked,
                                                      color: (_selectedCards ==
                                                              index)
                                                          ? ConstantData
                                                              .textColor
                                                          : ConstantData
                                                              .disableIconColor,
                                                      size: 20,
                                                    ),
                                                    onTap: () {
                                                      _selectedCards = index;
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
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10,
                                                    fontFamily: "SFProText",
                                                    color: ConstantData
                                                        .primaryTextColor,
                                                    decoration:
                                                        TextDecoration.none)),
                                          ),
                                          Expanded(
                                            child: Text(cardList[index].cardNo!,
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
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 10,
                                                        fontFamily: "SFProText",
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
                                                      cardList[index].expDate!,
                                                      textAlign: TextAlign.end,
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
                                                  padding:
                                                      EdgeInsets.only(left: 15),
                                                  child: Text(S.of(context).cvv,
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
                                                      textAlign: TextAlign.end,
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
                          })
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: viewWidth,
                      height: 3,
                      color: ConstantData.viewColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
