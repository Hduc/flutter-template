import 'package:flutter/material.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/CategoryModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

import 'SubCategoriesPage.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPage createState() {
    return _CategoriesPage();
  }
}

class _CategoriesPage extends State<CategoriesPage> {
  List<CategoryModel> categoryModelList = DataFile.getCategoryModel();

  @override
  void initState() {
    super.initState();
    categoryModelList = DataFile.getCategoryModel();
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
    double imageSize = SizeConfig.safeBlockVertical! * 8;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,
            title: Text(S.of(context).categories,
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
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.width * 0.01),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: categoryModelList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
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
                                          image: ExactAssetImage(
                                              categoryModelList[index].image!),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
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
                                                categoryModelList[index].name!,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                  fontFamily: "SFProText",
                                                  color: ConstantData.textColor,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 2),
                                                child: Text(
                                                  categoryModelList[index]
                                                      .desc!,
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
                                              padding:
                                                  EdgeInsets.only(right: 3),
                                              child: Icon(
                                                Icons.navigate_next,
                                                color: ConstantData.textColor,
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
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SubCategoriesPage(
                                        categoryModelList[index].id!)));
                          },
                        );
                      }),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 2),
                    width: viewWidth,
                    height: 5,
                    color: ConstantData.viewColor,
                  ),
                )
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
