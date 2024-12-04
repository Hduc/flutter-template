import 'package:flutter/material.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/SubCategoryModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

class MyOrderPage extends StatefulWidget {
  @override
  _MyOrderPage createState() {
    return _MyOrderPage();
  }
}

class _MyOrderPage extends State<MyOrderPage> {
  List<SubCategoryModel> orderList = DataFile.getMyOrderList();

  @override
  void initState() {
    super.initState();
    orderList = DataFile.getMyOrderList();
    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double imageSize = SizeConfig.safeBlockVertical! * 10;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,
            title: Text(S.of(context).myOrderHistory,
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
                left: 15,
                right: 15,
                top: 15,
                bottom: MediaQuery.of(context).size.width * 0.01),
            // child: Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: orderList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: imageSize,
                                width: imageSize,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    image: ExactAssetImage(
                                        orderList[index].image!),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(
                                      (orderList[index].isFav == 1)
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: (orderList[index].isFav == 1)
                                          ? Colors.red
                                          : ConstantData.textColor,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      orderList[index].name!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        fontFamily: "SFProText",
                                        color: ConstantData.textColor,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 2, bottom: 10),
                                      child: Text(orderList[index].desc!,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              fontFamily: "SFProText",
                                              color: ConstantData.textColor,
                                              decoration: TextDecoration.none)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          orderList[index].price!,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            fontFamily: "SFProText",
                                            color: ConstantData.textColor,
                                          ),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(right: 10),
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/images/pencil.png'),
                                            size: 15,
                                            color: ConstantData.textColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 10),
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/images/back-arrow.png'),
                                            size: 15,
                                            color: ConstantData.textColor,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                flex: 1,
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            width: double.infinity,
                            height: 1,
                            color: ConstantData.viewColor,
                          )
                        ],
                      ),
                    ),
                    onTap: () {},
                  );
                }),
          ),
        ),
        onWillPop: _requestPop);
  }
}
