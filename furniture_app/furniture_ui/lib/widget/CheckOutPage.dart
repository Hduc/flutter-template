import 'package:flutter/material.dart';
import 'package:furniture_ui/model/AddressModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/widget/AddNewAddressPage.dart';
import 'package:furniture_ui/widget/PaymentPage.dart';
import 'package:furniture_ui/widget/ReviewSlider.dart';

class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPage createState() {
    return _CheckOutPage();
  }
}

class _CheckOutPage extends State<CheckOutPage> {
  List<AddressModel> addressList = DataFile.getAddressList();

  int _selectedPosition = 0;
  int currentStep = 0;

  @override
  void initState() {
    super.initState();
    addressList = DataFile.getAddressList();
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
                left: leftMargin, right: leftMargin, top: leftMargin),
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
                          initialValue: 0,
                          width: double.infinity,
                          options: [
                            S.of(context).personalInfo,
                            S.of(context).payment,
                            S.of(context).confirmation
                          ]),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              S.of(context).addressTitle,
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
                                S.of(context).newAddress.toUpperCase(),
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
                                            AddNewAddressPage()));
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.width * 0.01,
                        ),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: addressList.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                child: Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.2,
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            addressList[index]
                                                                .name!,
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "SFProText",
                                                              color: ConstantData
                                                                  .textColor,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 5),
                                                            child: Text(
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              addressList[index]
                                                                  .location!,
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    "SFProText",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12,
                                                                color: ConstantData
                                                                    .primaryTextColor,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 3),
                                                        child: Icon(
                                                          (index ==
                                                                  _selectedPosition)
                                                              ? Icons
                                                                  .radio_button_checked
                                                              : Icons
                                                                  .radio_button_unchecked,
                                                          color: (index ==
                                                                  _selectedPosition)
                                                              ? ConstantData
                                                                  .textColor
                                                              : ConstantData
                                                                  .disableIconColor,
                                                          size: 20,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                flex: 1,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: ConstantData.viewColor,
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  _selectedPosition = index;
                                  setState(() {});
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: leftMargin),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage()));
                  },
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
