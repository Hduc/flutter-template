// ignore_for_file: deprecated_member_use

import 'package:eco_product_ui_updated/data/DataFile.dart';
import 'package:eco_product_ui_updated/generated/l10n.dart';
import 'package:eco_product_ui_updated/model/AddressModel.dart';
import 'package:eco_product_ui_updated/utils/ConstantData.dart';
import 'package:eco_product_ui_updated/utils/ConstantWidget.dart';
import 'package:eco_product_ui_updated/utils/SizeConfig.dart';
import 'package:eco_product_ui_updated/widget/AddNewAddressPage.dart';
import 'package:eco_product_ui_updated/widget/PaymentPage.dart';
import 'package:eco_product_ui_updated/widget/ReviewSlider.dart';
import 'package:flutter/material.dart';

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
            title: ConstantWidget.getAppBarText(S.of(context).cart),
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
            margin: EdgeInsets.only(
                left: leftMargin, right: leftMargin, top: leftMargin),
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
                            ConstantWidget.getCustomText(
                                S.of(context).addressTitle,
                                ConstantData.textColor1,
                                1,
                                TextAlign.start,
                                FontWeight.w800,
                                ConstantData.font15Px),
                            new Spacer(),
                            InkWell(
                              child: ConstantWidget.getUnderlineText(
                                  S.of(context).newAddress,
                                  ConstantData.textColor1,
                                  1,
                                  TextAlign.start,
                                  FontWeight.bold,
                                  ConstantData.font12Px),

                              // child: Text(
                              //   S.of(context).newAddress.toUpperCase(),
                              //   style: TextStyle(
                              //       fontFamily: ConstantData.fontFamily,
                              //       fontWeight: FontWeight.w600,
                              //       fontSize: ConstantData.font12Px,
                              //       color: ConstantData.textColor),
                              // ),
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
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ConstantWidget
                                                            .getCustomTextWithoutAlign(
                                                                addressList[
                                                                        index]
                                                                    .name,
                                                                ConstantData
                                                                    .textColor1,
                                                                FontWeight.w700,
                                                                ConstantData
                                                                    .font15Px),
                                                        // Text(
                                                        //   addressList[index]
                                                        //       .name,
                                                        //   style: TextStyle(
                                                        //     fontWeight:
                                                        //         FontWeight.w700,
                                                        //     fontSize: ConstantData.font15Px,
                                                        //     fontFamily:
                                                        //         ConstantData.fontFamily,
                                                        //     color: ConstantData
                                                        //         .textColor,
                                                        //   ),
                                                        // ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5),

                                                          child: ConstantWidget
                                                              .getCustomTextWithoutAlign(
                                                                  addressList[
                                                                          index]
                                                                      .location,
                                                                  ConstantData
                                                                      .primaryTextColor,
                                                                  FontWeight
                                                                      .w500,
                                                                  ConstantData
                                                                      .font12Px),

                                                          // child: Text(
                                                          //   addressList[index]
                                                          //       .location,
                                                          //   style: TextStyle(
                                                          //     fontFamily:
                                                          //         ConstantData.fontFamily,
                                                          //     fontWeight:
                                                          //         FontWeight
                                                          //             .w500,
                                                          //     fontSize: ConstantData.font12Px,
                                                          //     color: ConstantData
                                                          //         .primaryTextColor,
                                                          //   ),
                                                          // ),
                                                        )
                                                      ],
                                                    ),
                                                    new Spacer(),
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
                          child: ConstantWidget.getCustomTextWithoutAlign(
                              S.of(context).continueString,
                              Colors.white,
                              FontWeight.w900,
                              ConstantData.font15Px),
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
