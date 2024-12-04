// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../data/DataFile.dart';
import '../generated/l10n.dart';
import '../model/SubCategoryModel.dart';
import '../utils/ConstantData.dart';
import '../utils/ConstantWidget.dart';
import '../utils/SizeConfig.dart';
import 'CheckOutPage.dart';

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
    double imageSize = SizeConfig.safeBlockVertical! * 10;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            backgroundColor: ConstantData.bgColor,
            elevation: 0,
            centerTitle: true,
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
                  padding: EdgeInsets.only(
                      left: (leftMargin + 20),
                      right: (leftMargin + 20),
                      bottom: (leftMargin + 20),
                      top: 10),
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
                            child: ConstantWidget.getCustomText(
                                S.of(context).subTotal,
                                ConstantData.textColor,
                                1,
                                TextAlign.start,
                                FontWeight.w800,
                                14),
                            flex: 1,
                          ),
                          Expanded(
                            child: ConstantWidget.getCustomText(
                                "\$88.10",
                                ConstantData.textColor,
                                1,
                                TextAlign.end,
                                FontWeight.w800,
                                14),
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
                              child: ConstantWidget.getCustomText(
                                  S.of(context).shippingFee,
                                  ConstantData.textColor,
                                  1,
                                  TextAlign.start,
                                  FontWeight.w800,
                                  14),
                              flex: 1,
                            ),
                            Expanded(
                              child: ConstantWidget.getCustomText(
                                  "\$9.90",
                                  ConstantData.textColor,
                                  1,
                                  TextAlign.end,
                                  FontWeight.w800,
                                  14),
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
                              child: ConstantWidget.getCustomText(
                                  S.of(context).estimatingTax,
                                  ConstantData.textColor,
                                  1,
                                  TextAlign.start,
                                  FontWeight.w800,
                                  14),
                              flex: 1,
                            ),
                            Expanded(
                              child: ConstantWidget.getCustomText(
                                  "\$6.50",
                                  ConstantData.textColor,
                                  1,
                                  TextAlign.end,
                                  FontWeight.w800,
                                  14),
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
                            child: ConstantWidget.getCustomText(
                                S.of(context).total,
                                ConstantData.primaryTextColor,
                                1,
                                TextAlign.start,
                                FontWeight.w800,
                                16),
                            flex: 1,
                          ),
                          Expanded(
                            child: ConstantWidget.getCustomText(
                                "\$104.50",
                                ConstantData.primaryTextColor,
                                1,
                                TextAlign.end,
                                FontWeight.w800,
                                16),
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
                            child: ConstantWidget.getCustomTextWithoutAlign(
                                S.of(context).checkOut,
                                Colors.white,
                                FontWeight.w900,
                                ConstantData.font15Px),
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
    double radius = ConstantWidget.getScreenPercentSize(context, 1.8);
    return InkWell(
        child: Slidable(
      // actionPane: SlidableDrawerActionPane(),
      child: Center(
          child: InkWell(
        child: Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: ConstantData.whiteColor,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 10,
                )
              ]),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: imageSize,
                    width: imageSize,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: ConstantData.addCartColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius),
                      ),
                    ),
                    child: Image.asset(
                        ConstantData.assetsPath + subCategoryModel.image),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ConstantWidget.getCustomText(
                                subCategoryModel.name,
                                ConstantData.textColor,
                                1,
                                TextAlign.start,
                                FontWeight.w800,
                                ConstantWidget.getScreenPercentSize(
                                    context, 2)),
                            Padding(
                              padding: EdgeInsets.only(top: 2, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: ConstantWidget.getCustomText(
                                        subCategoryModel.price,
                                        Colors.black87,
                                        1,
                                        TextAlign.start,
                                        FontWeight.bold,
                                        ConstantData.font15Px),
                                    flex: 1,
                                  ),

                                  // new Spacer(),
                                  InkWell(
                                    child: Container(
                                        // height: 25,
                                        // width: 80,
                                        margin: EdgeInsets.only(
                                          right: 15,
                                        ),
                                        padding: EdgeInsets.all(5),
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
                                                  height: ConstantWidget
                                                      .getScreenPercentSize(
                                                          context, 3.5),
                                                  width: ConstantWidget
                                                      .getScreenPercentSize(
                                                          context, 3.5),
                                                  decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          width: 1,
                                                          color: ConstantData
                                                              .greyColor)),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.remove,
                                                      size: 15,
                                                      color: ConstantData
                                                          .greyColor,
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
                                                    left: 15, right: 15),
                                                child: ConstantWidget
                                                    .getCustomTextWithoutAlign(
                                                        subCategoryModel
                                                            .quantity
                                                            .toString(),
                                                        ConstantData
                                                            .primaryTextColor,
                                                        FontWeight.w400,
                                                        ConstantWidget
                                                            .getScreenPercentSize(
                                                                context, 1.5)),
                                              ),
                                              InkWell(
                                                child: Container(
                                                  height: ConstantWidget
                                                      .getScreenPercentSize(
                                                          context, 3.5),
                                                  width: ConstantWidget
                                                      .getScreenPercentSize(
                                                          context, 3.5),
                                                  decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          width: 1,
                                                          color: ConstantData
                                                              .accentColor)),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 15,
                                                      color: ConstantData
                                                          .accentColor,
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
        motion: DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              widget.onChanged(subCategoryModel);
            },
            icon: Icons.close,
            padding: EdgeInsets.zero,
            flex: 1,
            label: "",
          )
        ],
      ),
      // secondaryActions: <Widget>[
      //   InkWell(
      //     child: Container(
      //       height: 40,
      //       width: 40,
      //       margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      //       decoration: BoxDecoration(
      //         color: ConstantData.textColor,
      //         shape: BoxShape.circle,
      //       ),
      //       child: Icon(
      //         Icons.close,
      //         color: ConstantData.bgColor,
      //       ),
      //     ),
      //     onTap: () {
      //       widget.onChanged(subCategoryModel);
      //     },
      //   )
      // ],
    ));
  }
}
