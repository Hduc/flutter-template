import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';

import 'package:furniture_ui/model/SubCategoryModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
import 'package:furniture_ui/widget/CheckOutPage.dart';

class AddToCartPage extends StatefulWidget {
  AddToCartPage();

  @override
  _AddToCartPage createState() {
    return _AddToCartPage();
  }
}

class _AddToCartPage extends State<AddToCartPage> {
  List<SubCategoryModel> cartModelList = [];

  _AddToCartPage();

  @override
  void initState() {
    super.initState();

    cartModelList = DataFile.getCartModel();

    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.04;
    double imageSize = SizeConfig.safeBlockVertical! * 8;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            backgroundColor: ConstantData.bgColor,
            elevation: 0,
            centerTitle: true,
            title: Text(
              S.of(context).cart,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: "SFProText",
                  fontWeight: FontWeight.bold,
                  color: ConstantData.textColor),
            ),
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
            // margin: EdgeInsets.only(
            //     bottom: leftMargin, left: leftMargin, right: leftMargin),
            // padding: EdgeInsets.only(bottom: leftMargin),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: leftMargin,
                        right: leftMargin,
                        bottom: MediaQuery.of(context).size.width * 0.01),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: cartModelList.length,
                        itemBuilder: (context, index) {
                          return ListItem(
                              imageSize, cartModelList[index], removeItem);
                        }),
                  ),
                  flex: 1,
                ),
                Container(
                  padding: EdgeInsets.all((leftMargin + 20)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(S.of(context).subTotal,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.primaryTextColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
                          ),
                          Text(":",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10,
                                  fontFamily: "SFProText",
                                  color: ConstantData.primaryTextColor,
                                  decoration: TextDecoration.none)),
                          Expanded(
                            child: Text("\$88.10",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.textColor,
                                    decoration: TextDecoration.none)),
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
                              child: Text(S.of(context).shippingFee,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                      fontFamily: "SFProText",
                                      color: ConstantData.primaryTextColor,
                                      decoration: TextDecoration.none)),
                              flex: 1,
                            ),
                            Text(":",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.primaryTextColor,
                                    decoration: TextDecoration.none)),
                            Expanded(
                              child: Text("\$9.90",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10,
                                      fontFamily: "SFProText",
                                      color: ConstantData.textColor,
                                      decoration: TextDecoration.none)),
                              flex: 1,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(S.of(context).estimatingTax,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.primaryTextColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
                          ),
                          Text(":",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10,
                                  fontFamily: "SFProText",
                                  color: ConstantData.primaryTextColor,
                                  decoration: TextDecoration.none)),
                          Expanded(
                            child: Text("\$6.50",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.textColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        height: 1,
                        color: ConstantData.viewColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(S.of(context).total,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 12,
                                    fontFamily: "SFProText",
                                    color: ConstantData.primaryTextColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
                          ),
                          Text(":",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12,
                                  fontFamily: "SFProText",
                                  color: ConstantData.primaryTextColor,
                                  decoration: TextDecoration.none)),
                          Expanded(
                            child: Text("\$104.50",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    fontFamily: "SFProText",
                                    color: ConstantData.textColor,
                                    decoration: TextDecoration.none)),
                            flex: 1,
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
                          child: Center(
                            child: Text(
                              S.of(context).checkOut,
                              style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckOutPage()));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  void removeItem(SubCategoryModel index) {
    cartModelList.remove(index);
    setState(() {});
  }
}

class ListItem extends StatefulWidget {
  final double imageSize;
  final SubCategoryModel subCategoryModel;

  final ValueChanged<SubCategoryModel> onChanged;

  ListItem(this.imageSize, this.subCategoryModel, this.onChanged);

  @override
  RoomEditDeleteItemState createState() => RoomEditDeleteItemState(
      this.imageSize, this.subCategoryModel, this.onChanged);
}

class RoomEditDeleteItemState extends State<ListItem> {
  double imageSize;
  final ValueChanged<SubCategoryModel> onChanged;
  SubCategoryModel subCategoryModel;

  RoomEditDeleteItemState(
      this.imageSize, this.subCategoryModel, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Slidable(
      child: Center(
          child: InkWell(
        child: Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          decoration: new BoxDecoration(
              color: ConstantData.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(1, 1),
                  blurRadius: 1,
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: imageSize,
                    width: imageSize,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: ExactAssetImage(subCategoryModel.image!),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              subCategoryModel.name!,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontFamily: "SFProText",
                                color: ConstantData.textColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: Container(
                                        height: 25,
                                        // width: 80,
                                        margin: EdgeInsets.only(
                                          right: 15,
                                        ),
                                        padding: EdgeInsets.all(5),
                                        // decoration: BoxDecoration(
                                        //   color: ConstantData.textColor,
                                        //   borderRadius: BorderRadius.all(
                                        //     Radius.circular(10),
                                        //   ),
                                        // ),

                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: ConstantData
                                                    .primaryTextColor),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: InkWell(
                                          child: Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  height: 15,
                                                  width: 15,
                                                  // decoration: BoxDecoration(
                                                  //     color: Colors.transparent,
                                                  //     shape: BoxShape.circle,
                                                  //     border: Border.all(
                                                  //         width: 1,
                                                  //         color: ConstantData
                                                  //             .primaryTextColor)),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.remove,
                                                      size: 10,
                                                      color: ConstantData
                                                          .primaryTextColor,
                                                    ),
                                                  ),
                                                ),
                                                onTap: () {
                                                  setState(() {
                                                    if (subCategoryModel
                                                            .quantity >
                                                        1) {
                                                      subCategoryModel
                                                          .quantity--;
                                                    }
                                                  });
                                                },
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: Text(
                                                  subCategoryModel.quantity
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 10,
                                                      color: ConstantData
                                                          .primaryTextColor,
                                                      fontFamily: "SFProText",
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),

                                              // InkWell(
                                              //     child: Icon(
                                              //       CupertinoIcons.add,
                                              //       color:
                                              //       ConstantData.textColor,
                                              //       size: 15,
                                              //     ),
                                              //     onTap: () {
                                              //       subCategoryModel.quantity++;
                                              //
                                              //       setState(() {});
                                              //     }),

                                              InkWell(
                                                child: Container(
                                                  height: 15,
                                                  width: 15,
                                                  // decoration: BoxDecoration(
                                                  //     color: Colors.transparent,
                                                  //     shape: BoxShape.circle,
                                                  //     border: Border.all(
                                                  //         width: 1,
                                                  //         color: ConstantData
                                                  //             .primaryTextColor)
                                                  // ),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 10,
                                                      color: ConstantData
                                                          .primaryTextColor,
                                                    ),
                                                  ),
                                                ),
                                                onTap: () {
                                                  subCategoryModel.quantity++;
                                                  setState(() {});
                                                },
                                              )
                                            ],
                                          )),
                                        )),
                                    onTap: () {},
                                  ),
                                  new Spacer(),
                                  Text(
                                    subCategoryModel.price!,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: "SFProText",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: ConstantData.textColor,
                                    ),
                                  ),

                                  // )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    flex: 1,
                  )
                ],
              ),
            ],
          ),
        ),
        onTap: () {},
      )),
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: <Widget>[
          InkWell(
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              decoration: BoxDecoration(
                color: ConstantData.textColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
            onTap: () {
              widget.onChanged(subCategoryModel);
            },
          )
        ],
      ),
    ));
  }
}
