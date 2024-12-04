import 'package:flutter/material.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/VouchersModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

class MyVouchers extends StatefulWidget {
  @override
  _MyVouchers createState() {
    return _MyVouchers();
  }
}

class _MyVouchers extends State<MyVouchers> {
  List<VouchersModel> voucherList = DataFile.getVouchersList();

  @override
  void initState() {
    super.initState();
    voucherList = DataFile.getVouchersList();
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
            title: Text(S.of(context).myVouchers,
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
                  Text(
                    S.of(context).myVouchers,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        color: ConstantData.textColor),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: voucherList.length,
                      itemBuilder: (context, index) {
                        return Container(
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
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      voucherList[index].name!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 12,
                                        fontFamily: "SFProText",
                                        color: ConstantData.textColor,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 20),
                                      child: Text(
                                        voucherList[index].desc!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          fontFamily: "SFProText",
                                          color: ConstantData.primaryTextColor,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      voucherList[index].code!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        fontFamily: "SFProText",
                                        color: ConstantData.primaryTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                                flex: 1,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      S.of(context).exp,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        fontFamily: "SFProText",
                                        color: ConstantData.primaryTextColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        voucherList[index].date!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          fontFamily: "SFProText",
                                          color: ConstantData.textColor,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      voucherList[index].month!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        fontFamily: "SFProText",
                                        color: ConstantData.primaryTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
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
