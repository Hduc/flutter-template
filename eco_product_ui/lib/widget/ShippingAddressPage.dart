// ignore_for_file: deprecated_member_use

import 'package:eco_product_ui_updated/utils/ConstantWidget.dart';
import 'package:flutter/material.dart';
import 'package:eco_product_ui_updated/data/DataFile.dart';
import 'package:eco_product_ui_updated/generated/l10n.dart';
import 'package:eco_product_ui_updated/model/AddressModel.dart';
import 'package:eco_product_ui_updated/utils/ConstantData.dart';
import 'package:eco_product_ui_updated/utils/SizeConfig.dart';

import 'AddNewAddressPage.dart';

class ShippingAddressPage extends StatefulWidget {
  @override
  _ShippingAddressPage createState() {
    return _ShippingAddressPage();
  }
}

class _ShippingAddressPage extends State<ShippingAddressPage> {
  List<AddressModel> addressList = DataFile.getAddressList();

  int _selectedAddress = 0;

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

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,
            // title: ConstantWidget.getCustomTextWithoutAlign(S.of(context).shippingAddress,ConstantData.textColor, FontWeight.bold, ConstantData.font18Px),
            title: ConstantWidget.getAppBarText(S.of(context).shippingAddress),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                        child:
                            ConstantWidget.getUnderLineCustomTextWithoutAlign(
                                S.of(context).newAddress,
                                ConstantData.textColor1,
                                FontWeight.w600,
                                ConstantData.font12Px),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddNewAddressPage()));
                        },
                      )
                    ],
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: addressList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            padding: EdgeInsets.all(15),
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
                                    BorderRadius.all(Radius.circular(8))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ConstantWidget.getCustomTextWithFontSize(
                                        addressList[index].name,
                                        ConstantData.textColor1,
                                        ConstantData.font12Px,
                                        FontWeight.bold),
                                    new Spacer(),
                                    Icon(
                                      (_selectedAddress == index)
                                          ? Icons.radio_button_checked
                                          : Icons.radio_button_unchecked,
                                      color: (_selectedAddress == index)
                                          ? ConstantData.textColor
                                          : ConstantData.disableIconColor,
                                      size: 20,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child:
                                      ConstantWidget.getCustomTextWithFontSize(
                                          addressList[index].location,
                                          ConstantData.primaryTextColor,
                                          10,
                                          FontWeight.w500),
                                ),
                                ConstantWidget.getCustomTextWithFontSize(
                                    addressList[index].phoneNumber,
                                    ConstantData.primaryTextColor,
                                    10,
                                    FontWeight.w500),
                              ],
                            ),
                          ),
                          onTap: () {
                            _selectedAddress = index;
                            setState(() {});
                          },
                        );
                      })
                ],
              ),
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
