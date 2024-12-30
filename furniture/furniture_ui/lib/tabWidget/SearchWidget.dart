import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/ProfileModel.dart';
import 'package:furniture_ui/model/SubCategoryModel.dart';

import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
import 'package:furniture_ui/widget/FilterPage.dart';
import 'package:furniture_ui/widget/ProductDetailPage.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidget createState() {
    return _SearchWidget();
  }
}

class _SearchWidget extends State<SearchWidget> {
  ProfileModel profileModel = DataFile.getProfileModel();
  List<SubCategoryModel> trendingList = [];

  var tags = [];

  @override
  void initState() {
    super.initState();
    profileModel = DataFile.getProfileModel();
    tags = DataFile.getSearchList();
    trendingList = DataFile.getTrendingModel();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double imageWidth = SizeConfig.safeBlockVertical! * 10;
    double leftMargin = MediaQuery.of(context).size.width * 0.04;
    double imageSize = SizeConfig.safeBlockVertical! * 6.5;
    double imageTrendingSize = SizeConfig.safeBlockVertical! * 12;
    double imageSize1 = SizeConfig.safeBlockVertical! * 4;

    return Scaffold(
      backgroundColor: ConstantData.bgColor,
      appBar: AppBar(
        backgroundColor: ConstantData.bgColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          S.of(context).search,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontFamily: "SFProText",
              fontWeight: FontWeight.bold,
              color: ConstantData.textColor),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.filter_list_alt,
              color: ConstantData.iconColor,
            ),
            onPressed: () {
              // do something

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FilterPage()));
            },
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(
            left: leftMargin,
            right: leftMargin,
            top: leftMargin,
            bottom: MediaQuery.of(context).size.width * 0.01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: imageSize,
                      decoration: new BoxDecoration(
                          color: ConstantData.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1, 1),
                              blurRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: TextField(
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: "SFProText",
                            color: ConstantData.primaryTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        decoration: InputDecoration(
                          hintText: S.of(context).searchHint,
                          hintStyle: TextStyle(
                              fontFamily: "SFProText",
                              color: ConstantData.primaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 3, left: 8),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                        height: imageSize,
                        width: imageSize,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: ConstantData.primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: InkWell(
                          child: Center(
                              child: Icon(
                            CupertinoIcons.search,
                            color: ConstantData.whiteColor,
                            size: imageSize1,
                          )),
                          onTap: () {},
                        )),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Wrap(
              spacing: 10, // gap between adjacent chips
              runSpacing: 5, // gap between lines
              children: <Widget>[...generateTags()],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                S.of(context).recommended,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: "SFProText",
                    fontWeight: FontWeight.w800,
                    fontSize: 12,
                    color: ConstantData.textColor),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.03,
                    bottom: MediaQuery.of(context).size.width * 0.01),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: trendingList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: imageTrendingSize,
                                    width: imageWidth,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                        image: ExactAssetImage(
                                            trendingList[index].image!),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          trendingList[index].name!,
                                          style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: ConstantData.textColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 2),
                                          child: Text(
                                            trendingList[index].desc!,
                                            style: TextStyle(
                                              fontFamily: "SFProText",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                              color:
                                                  ConstantData.primaryTextColor,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                trendingList[index].price!,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontFamily: "SFProText",
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                  color: ConstantData.textColor,
                                                ),
                                              ),
                                              new Spacer(),
                                              // Align(
                                              //
                                              //  alignment: Alignment.topRight,
                                              //
                                              //  child:
                                              InkWell(
                                                child: Container(
                                                    height: 25,
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                        color: ConstantData
                                                            .primaryColor,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    5))),
                                                    child: InkWell(
                                                      child: Center(
                                                        child: Text(
                                                          S.of(context).shopNow,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontFamily:
                                                                  "SFProText",
                                                              decoration:
                                                                  TextDecoration
                                                                      .none),
                                                        ),
                                                      ),
                                                    )),
                                                onTap: () {
                                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailPage(trendingList[index])));
                                                },
                                              ),
                                              // )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    flex: 1,
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: (imageWidth + 10),
                                ),
                                height: 1,
                                color: ConstantData.viewColor,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetailPage(trendingList[index])));
                        },
                      );
                    }),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }

  generateTags() {
    return tags.map((tag) => getChip(tag)).toList();
  }

  Widget getChip(name) {
    return Chip(
        backgroundColor: ConstantData.bgColor,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: ConstantData.viewColor,
                width: 1,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        label: Text(
          name,
          style: TextStyle(
              color: ConstantData.textColor,
              fontWeight: FontWeight.w500,
              fontSize: 12,
              fontFamily: "SFProText"),
        ));
  }
}
