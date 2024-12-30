// ignore_for_file: deprecated_member_use

import 'package:eco_product_ui_updated/data/DataFile.dart';
import 'package:eco_product_ui_updated/generated/l10n.dart';
import 'package:eco_product_ui_updated/model/OrderDescModel.dart';
import 'package:eco_product_ui_updated/model/OrderModel.dart';
import 'package:eco_product_ui_updated/model/SubCategoryModel.dart';
import 'package:eco_product_ui_updated/utils/ConstantData.dart';
import 'package:eco_product_ui_updated/utils/ConstantWidget.dart';
import 'package:eco_product_ui_updated/utils/SizeConfig.dart';
import 'package:eco_product_ui_updated/widget/OrderDetailPage.dart';
import 'package:eco_product_ui_updated/widget/OrderTrackMap.dart';
import 'package:eco_product_ui_updated/widget/ProductDetailPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
// import 'package:permission/permission.dart';

class MyOrderPage extends StatefulWidget {
  @override
  _MyOrderPage createState() {
    return _MyOrderPage();
  }
}

class _MyOrderPage extends State<MyOrderPage>
    with SingleTickerProviderStateMixin {
  List<SubCategoryModel> myOrderList = DataFile.getMyOrderList();

  List<OrderDescModel> orderList = DataFile.getOrderDescList();
  List<OrderModel> allOrderList = DataFile.getOrderList();
  late TabController _controller;

  // PermissionStatus _permissionStatus = PermissionStatus.unknown;

  int expandPosition = -1;

  List<Widget> list = [
    Tab(
        icon: Icon(
      Icons.card_travel,
      color: Colors.transparent,
    )),
    Tab(
        icon: Icon(
      Icons.card_travel,
      color: Colors.transparent,
    )),
    Tab(
        icon: Icon(
      Icons.add_shopping_cart,
      color: Colors.transparent,
    )),
  ];


  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  void setPermissions() async {
    // List<PermissionName> permissionNames = [];
    // permissionNames.add(PermissionName.Location);
    //
    // List<Permissions> permissions =
    //     await Permission.getPermissionsStatus(permissionNames);
    // permissions.forEach((permission) {
    //   print(
    //       'permission----${permission.permissionName}: ${permission.permissionStatus}\n');
    // });
    //
    // // Map<PermissionGroup, PermissionStatus> permissions =
    // await Permission.requestPermissions(permissionNames).then((value) {});
  }

  void checkPermissions() async {}

  @override
  void initState() {
    super.initState();
    _determinePosition();

    _controller = TabController(length: list.length, vsync: this);
// _listenForPermissionStatus();
    _controller.addListener(() {
      setState(() {});
      print("Selected Index: " + _controller.index.toString());
    });
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


            title: ConstantWidget.getAppBarText(
              S.of(context).myOrderHistory,
            ),


            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: ConstantWidget.getAppBarIcon(),
                  onPressed: _requestPop,
                );
              },
            ),
            bottom: TabBar(
              indicatorColor: ConstantData.primaryColor,
              indicatorWeight: 3,
              unselectedLabelColor: ConstantData.textColor,
              labelColor: ConstantData.primaryColor,
              labelStyle: TextStyle(
                fontFamily: ConstantData.fontFamily,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              unselectedLabelStyle: TextStyle(
                fontFamily: ConstantData.fontFamily,
                fontWeight: FontWeight.w200,
                fontSize: 14,
              ),
              controller: _controller,
              tabs: [
                Tab(
                  text: S.of(context).all,
                ),
                Tab(
                  text: S.of(context).onDelivery,
                ),
                Tab(text: S.of(context).history),
              ],
            ),
          ),
          body: Container(
            child: TabBarView(
              controller: _controller,
              children: [allOrder(), onDelivery(), onCompleted()],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  Widget onCompleted() {
    double leftMargin = MediaQuery.of(context).size.width * 0.05;
    double imageSize = SizeConfig.safeBlockVertical! * 8;
    // double imageHeight = SizeConfig.safeBlockVertical * 7;
    double cellHeight = SizeConfig.safeBlockVertical! * 5.5;

    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: myOrderList.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: ConstantData.whiteColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                        )
                      ]),
                  margin: EdgeInsets.only(
                      left: leftMargin, top: 18, right: leftMargin),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: imageSize,
                            width: imageSize,
                            margin: EdgeInsets.all(15),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: ConstantData.cellColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Image.asset(ConstantData.assetsPath +
                                myOrderList[index].image),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ConstantWidget.getCustomText(
                                    S.of(context).orderId + " : #2CE5DW",
                                    ConstantData.textColor,
                                    1,
                                    TextAlign.start,
                                    FontWeight.w800,
                                    16),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: ConstantWidget.getCustomText(
                                      "3 " + S.of(context).items,
                                      ConstantData.textColor,
                                      1,
                                      TextAlign.start,
                                      FontWeight.w500,
                                      14),
                                ),
                              ],
                            ),
                            flex: 1,
                          )
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 20, left: 15, right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  height: cellHeight,
                                  margin: EdgeInsets.only(right: 15),
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 0.5,
                                          color: Colors.grey.shade400)),
                                  child: Center(
                                    child: ConstantWidget
                                        .getCustomTextWithoutAlign(
                                            S.of(context).cancelOrder,
                                            ConstantData.textColor,
                                            FontWeight.w700,
                                            14),
                                  ),
                                ),
                                onTap: () {},
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  height: cellHeight,
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    color: ConstantData.primaryColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: ConstantWidget
                                        .getCustomTextWithoutAlign(
                                            S.of(context).reOrder,
                                            Colors.white,
                                            FontWeight.w700,
                                            14),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProductDetailPage(
                                            myOrderList[index]),
                                      ));
                                },
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      )

                      //   ],
                      // )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailPage()));
                },
              );
            }));
  }

  Widget onDelivery() {
    double leftMargin = MediaQuery.of(context).size.width * 0.05;
    // double imageSize = SizeConfig.safeBlockVertical * 8;
    double imageSize = SizeConfig.safeBlockVertical! * 8;

    // double imageHeight = SizeConfig.safeBlockVertical * 7;
    double cellHeight = SizeConfig.safeBlockVertical! * 5.5;

    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: myOrderList.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: ConstantData.whiteColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                        )
                      ]),
                  margin: EdgeInsets.only(
                      left: leftMargin, top: 18, right: leftMargin),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: imageSize,
                            width: imageSize,
                            margin: EdgeInsets.all(15),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: ConstantData.cellColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Image.asset(ConstantData.assetsPath +
                                myOrderList[index].image),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ConstantWidget.getCustomText(
                                    S.of(context).orderId + " : #2CE5DW",
                                    ConstantData.textColor,
                                    1,
                                    TextAlign.start,
                                    FontWeight.w800,
                                    16),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: ConstantWidget.getCustomText(
                                      "3 " + S.of(context).items,
                                      ConstantData.textColor,
                                      1,
                                      TextAlign.start,
                                      FontWeight.w500,
                                      14),
                                ),
                              ],
                            ),
                            flex: 1,
                          )
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 20, left: 15, right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  height: cellHeight,
                                  margin: EdgeInsets.only(right: 15),
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 0.5,
                                          color: Colors.grey.shade400)),
                                  child: Center(
                                    child: ConstantWidget
                                        .getCustomTextWithoutAlign(
                                            S.of(context).cancelOrder,
                                            ConstantData.textColor,
                                            FontWeight.w700,
                                            14),
                                  ),
                                ),
                                onTap: () {},
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  height: cellHeight,
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    color: ConstantData.primaryColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: ConstantWidget
                                        .getCustomTextWithoutAlign(
                                            S.of(context).trackOrder,
                                            Colors.white,
                                            FontWeight.w700,
                                            14),
                                  ),
                                ),
                                onTap: () {

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => OrderTrackMap(),
                                      ));
                                },
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      )

                      //   ],
                      // )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailPage()));
                },
              );
            }));
  }


  Widget allOrder() {
    double imageSize = SizeConfig.safeBlockVertical! * 6;

    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: allOrderList.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: InkWell(
                          child: Row(
                            children: [
                              Container(
                                height: imageSize,
                                width: imageSize,
                                margin: EdgeInsets.all(15),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: ConstantData.getOrderColor(
                                      allOrderList[index].type),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Icon(
                                  CupertinoIcons.rectangle_dock,
                                  color: ConstantData.getIconColor(
                                      allOrderList[index].type),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: ConstantWidget.getCustomText(
                                          S.of(context).orderId +
                                              " " +
                                              allOrderList[index].orderId,
                                          ConstantData.textColor1,
                                          1,
                                          TextAlign.start,
                                          FontWeight.w800,
                                          ConstantData.font15Px),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ConstantWidget.getCustomText(
                                            allOrderList[index].items,
                                            ConstantData.subTextColor,
                                            1,
                                            TextAlign.start,
                                            FontWeight.w500,
                                            ConstantData.font12Px),
                                        Container(
                                          height: 8,
                                          width: 8,
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: ConstantData.subTextColor),
                                        ),
                                        ConstantWidget.getCustomText(
                                            allOrderList[index].type,
                                            ConstantData.subTextColor,
                                            1,
                                            TextAlign.start,
                                            FontWeight.w500,
                                            ConstantData.font12Px),
                                      ],
                                    )
                                  ],
                                ),
                                flex: 1,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Icon(
                                  (index == expandPosition)
                                      ? CupertinoIcons.chevron_up
                                      : CupertinoIcons.chevron_down,
                                  color: ConstantData.subTextColor,
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            if (expandPosition == index) {
                              expandPosition = -1;
                            } else {
                              expandPosition = index;
                            }

                            setState(() {});
                          },
                        ),
                      ),
                      Visibility(
                        child: Container(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: orderList.length,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 15),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 30, right: 30),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            margin: EdgeInsets.only(
                                                right: 15, top: 3),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: (orderList[index]
                                                          .completed ==
                                                      1)
                                                  ? ConstantData.primaryColor
                                                  : ConstantData
                                                      .disableIconColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: ConstantWidget
                                                      .getCustomText(
                                                          S
                                                                  .of(context)
                                                                  .orderId +
                                                              " " +
                                                              orderList[index]
                                                                  .name,
                                                          ConstantData
                                                              .textColor1,
                                                          1,
                                                          TextAlign.start,
                                                          FontWeight.w800,
                                                          ConstantData
                                                              .font15Px),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    ConstantWidget
                                                        .getCustomText(
                                                            orderList[index]
                                                                .desc,
                                                            ConstantData
                                                                .subTextColor,
                                                            1,
                                                            TextAlign.start,
                                                            FontWeight.w500,
                                                            ConstantData
                                                                .font12Px),
                                                  ],
                                                )
                                              ],
                                            ),
                                            flex: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                );
                              }),
                        ),
                        visible: (index == expandPosition),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        color: ConstantData.subTextColor,
                        height: 0.5,
                      )
                    ],
                  ),
                ),
                onTap: () {},
              );
            }));
  }
}
