import 'package:flutter/material.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/AddressModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

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
            title: Text(S.of(context).shippingAddress,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   S.of(context).addressTitle,
                  //   textAlign: TextAlign.start,
                  //   style: TextStyle(
                  //       fontFamily: "SFProText",
                  //       fontWeight: FontWeight.w800,
                  //       fontSize: 15,
                  //       color: ConstantData.textColor),
                  // ),

                  Row(
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
                                    Text(
                                      addressList[index].name!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 12,
                                        fontFamily: "SFProText",
                                        color: ConstantData.textColor,
                                      ),
                                    ),
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
                                  child: Text(
                                    addressList[index].location!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      fontFamily: "SFProText",
                                      color: ConstantData.primaryTextColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  addressList[index].phoneNumber!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.primaryTextColor,
                                  ),
                                ),
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
