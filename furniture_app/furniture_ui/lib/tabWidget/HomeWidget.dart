import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/CategoryModel.dart';
import 'package:furniture_ui/model/DiscModel.dart';
import 'package:furniture_ui/model/SubCategoryModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
import 'package:furniture_ui/widget/AddToCartPage.dart';
import 'package:furniture_ui/widget/CategoriesPage.dart';
import 'package:furniture_ui/widget/FilterPage.dart';
import 'package:furniture_ui/widget/ProductDetailPage.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidget createState() {
    return _HomeWidget();
  }
}

class _HomeWidget extends State<HomeWidget> {
  List<DiscModel> discModelList = [];
  List<CategoryModel> categoryModelList = [];
  List<SubCategoryModel> trendingList = [];
  List<SubCategoryModel> popularList = [];

  int _selectedCategory = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    setState(() {});
  }

  void getData() async {
    discModelList = DataFile.getDiscModel();
    categoryModelList = DataFile.getCategoryModel();
    trendingList = DataFile.getTrendingModel();
    popularList = DataFile.getTrendingModel();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.05;
    double imageSize = SizeConfig.safeBlockVertical! * 12;
    double imageWidth = SizeConfig.safeBlockVertical! * 10;

    final List<Widget> imageSliders = discModelList
        .map((item) => Container(
                child: Container(
              margin: EdgeInsets.all(7),
              child: InkWell(
                onTap: () {},
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          // margin: EdgeInsets.all(
                          //     MediaQuery.of(context).size.width * 0.05),
                          //
                          decoration: BoxDecoration(
                            color: ConstantData.whiteColor,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: ExactAssetImage(item.image!),
                              fit: BoxFit.cover,
                            ),
                          ),

                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 5, left: 15, top: 20),
                                    child: Text(
                                      item.name!,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: "SFProText",
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                          color: ConstantData.textColor),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      item.desc!,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: "SFProText",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: ConstantData.textColor),
                                    ),
                                  )
                                ],
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 5, right: 15, top: 15),
                                      child: Text(
                                        item.offText!,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            color: ConstantData.textColor),
                                      ),
                                    ),
                                    InkWell(
                                      child: Container(
                                          height: 25,
                                          width: 80,
                                          margin: EdgeInsets.only(
                                            right: 15,
                                          ),
                                          decoration: BoxDecoration(
                                              color: ConstantData.primaryColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                          child: InkWell(
                                            child: Center(
                                              child: Text(
                                                S.of(context).shopNow,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                    fontFamily: "SFProText",
                                                    color: Colors.white,
                                                    decoration:
                                                        TextDecoration.none),
                                              ),
                                            ),
                                          )),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            )))
        .toList();

    return Scaffold(
      backgroundColor: ConstantData.bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstantData.bgColor,
        elevation: 0,
        title: Text(
          S.of(context).discover,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontFamily: "SFProText",
              fontWeight: FontWeight.bold,
              color: ConstantData.textColor),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: ConstantData.iconColor,
            ),
            onPressed: () {
              // do something

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddToCartPage()));
            },
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: SizeConfig.safeBlockVertical! * 30,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  aspectRatio: 1.0,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {});
                  },
                  enlargeStrategy: CenterPageEnlargeStrategy.height),
              items: imageSliders,
            ),

            // Container(
            //     margin: EdgeInsets.only(
            //         top: MediaQuery.of(context).size.width * 0.03,
            //         bottom: MediaQuery.of(context).size.width * 0.01),
            //     // color: Colors.red,
            //     height: SizeConfig.safeBlockVertical! * 30,
            //     child: ListView.builder(
            //         shrinkWrap: true,
            //         itemCount: discModelList.length,
            //         scrollDirection: Axis.horizontal,
            //         itemBuilder: (context, index) {
            //           return InkWell(
            //             child: Container(
            //               width: MediaQuery.of(context).size.width * 0.9,
            //               // width: (MediaQuery.of(context).size.width),
            //               margin: EdgeInsets.all(
            //                   MediaQuery.of(context).size.width * 0.05),
            //
            //               decoration: BoxDecoration(
            //                 color: ConstantData.whiteColor,
            //                 borderRadius: BorderRadius.all(Radius.circular(10)),
            //                 image: DecorationImage(
            //                   image:
            //                       ExactAssetImage(discModelList[index].image),
            //                   fit: BoxFit.cover,
            //                 ),
            //               ),
            //
            //               child: Stack(
            //                 children: [
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     mainAxisAlignment: MainAxisAlignment.start,
            //                     children: [
            //                       Padding(
            //                         padding: EdgeInsets.only(
            //                             bottom: 5, left: 15, top: 20),
            //                         child: Text(
            //                           discModelList[index].name,
            //                           textAlign: TextAlign.start,
            //                           style: TextStyle(
            //                               fontFamily: "SFProText",
            //                               fontWeight: FontWeight.w800,
            //                               fontSize: 15,
            //                               color: ConstantData.textColor),
            //                         ),
            //                       ),
            //                       Padding(
            //                         padding: EdgeInsets.only(left: 15),
            //                         child: Text(
            //                           discModelList[index].desc,
            //                           textAlign: TextAlign.start,
            //                           style: TextStyle(
            //                               fontFamily: "SFProText",
            //                               fontWeight: FontWeight.w500,
            //                               fontSize: 12,
            //                               color: ConstantData.textColor),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                   Align(
            //                     alignment: Alignment.topRight,
            //                     child: Column(
            //                       children: [
            //                         Padding(
            //                           padding: EdgeInsets.only(
            //                               bottom: 5, right: 15, top: 15),
            //                           child: Text(
            //                             discModelList[index].offText,
            //                             textAlign: TextAlign.start,
            //                             style: TextStyle(
            //                                 fontFamily: "SFProText",
            //                                 fontWeight: FontWeight.w500,
            //                                 fontSize: 15,
            //                                 color: ConstantData.textColor),
            //                           ),
            //                         ),
            //                         InkWell(
            //                           child: Container(
            //                               height: 25,
            //                               width: 80,
            //                               margin: EdgeInsets.only(
            //                                 right: 15,
            //                               ),
            //                               decoration: BoxDecoration(
            //                                   color: ConstantData.primaryColor,
            //                                   borderRadius: BorderRadius.all(
            //                                       Radius.circular(5))),
            //                               child: InkWell(
            //                                 child: Center(
            //                                   child: Text(
            //                                     S.of(context).shopNow,
            //                                     style: TextStyle(
            //                                         fontWeight: FontWeight.w400,
            //                                         fontSize: 10,
            //                                         fontFamily: "SFProText",
            //                                         color: Colors.white,
            //                                         decoration:
            //                                             TextDecoration.none),
            //                                   ),
            //                                 ),
            //                               )),
            //                           onTap: () {},
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             onTap: () {},
            //           );
            //         })),
            Container(
              padding: EdgeInsets.only(
                  left: leftMargin, right: leftMargin, top: leftMargin),
              child: Row(
                children: [
                  Text(
                    S.of(context).categories,
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
                      S.of(context).viewAll,
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
                              builder: (context) => CategoriesPage()));
                    },
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.03,
                    bottom: MediaQuery.of(context).size.width * 0.01),
                // color: Colors.red,
                height: 80,
                // height: SizeConfig.safeBlockVertical! * 10,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: categoryModelList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Container(
                          margin: EdgeInsets.only(left: leftMargin),
                          decoration: BoxDecoration(
                            color: (_selectedCategory == index)
                                ? ConstantData.primaryColor
                                : ConstantData.whiteColor,
                            // shape: BoxShape.circle,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(50),
                                bottom: Radius.circular(50)),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: (_selectedCategory == index)
                                      ? ConstantData.whiteColor
                                      : ConstantData.bgColor,
                                  shape: BoxShape.circle,

                                  // borderRadius: BorderRadius.vertical(
                                  //   top: Radius.circular(50),
                                  // ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                      categoryModelList[index].icon!,
                                      height: 20,
                                      width: 20),
                                  // Image.asset("assets/images/sofa_category.png",height: 20,width: 20),
                                ),
                              ),
                              Text(
                                categoryModelList[index].name!,
                                style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: (_selectedCategory == index)
                                      ? ConstantData.whiteColor
                                      : ConstantData.textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          _selectedCategory = index;
                          setState(() {});
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             SubCategoryList(categoryList[index])));
                        },
                      );
                    })),

            Container(
              padding: EdgeInsets.only(
                  left: leftMargin, right: leftMargin, top: leftMargin),
              child: Row(
                children: [
                  Text(
                    S.of(context).mostPopular,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        color: ConstantData.textColor),
                  ),
                ],
              ),
            ),

            Container(
                height: SizeConfig.safeBlockVertical! * 26,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.03,
                    bottom: MediaQuery.of(context).size.width * 0.01),
                // color: Colors.red,
                // height: SizeConfig.safeBlockVertical! * 10,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: popularList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return _popularCell(popularList[index]);
                    })),

            Container(
              padding: EdgeInsets.only(
                  left: leftMargin, right: leftMargin, top: leftMargin),
              child: Row(
                children: [
                  Text(
                    S.of(context).trending,
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
                      "",
                      // S.of(context).viewAll,
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
                              builder: (context) => FilterPage()));
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.03,
                  bottom: MediaQuery.of(context).size.width * 0.01),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  // itemCount: trendingList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: leftMargin, top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: imageSize,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                  margin: EdgeInsets.only(
                                                    right: 15,
                                                  ),
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
                                                                FontWeight.w400,
                                                            fontSize: 10,
                                                            color: Colors.white,
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
                                  left: (imageWidth + 10), right: (leftMargin)),
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
          ],
        ),
      ),
    );
  }

  Widget _popularCell(SubCategoryModel subCategoryModel) {
    double containerWidth = SizeConfig.safeBlockHorizontal! * 50;
    double containerHeight = SizeConfig.safeBlockVertical! * 18;
    double marginTop = SizeConfig.safeBlockVertical! * 12;
    double leftMargin = MediaQuery.of(context).size.width * 0.05;

    return InkWell(
      child: Container(
        width: containerWidth,
        child: Stack(
          children: [
            Container(
              width: containerWidth,
              height: containerHeight,
              margin: EdgeInsets.only(left: leftMargin),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(subCategoryModel.image!),
                  fit: BoxFit.cover,
                ),

                // shape: BoxShape.circle,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            Positioned.fill(
                child: Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(10),
                height: containerHeight,
                width: containerWidth,
                margin: EdgeInsets.only(
                    top: marginTop,
                    left: (leftMargin + leftMargin) - 10,
                    right: leftMargin - 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subCategoryModel.name!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: "SFProText",
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                          color: ConstantData.textColor),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RatingBar.builder(
                              itemSize: 12,
                              initialRating: subCategoryModel.review.toDouble(),
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 0.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 10,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(subCategoryModel.price!,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: "SFProText",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: ConstantData.textColor,
                                          decoration: TextDecoration.none)),
                                  new Spacer(),
                                  Icon(
                                    Icons.favorite_border,
                                    color: ConstantData.textColor,
                                    size: 15,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2),
                                    child: Text(
                                        subCategoryModel.reviewDesc
                                            .replaceAll("reviews", ""),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: ConstantData.textColor,
                                            decoration: TextDecoration.none)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      flex: 1,
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailPage(subCategoryModel)));
      },
    );
  }
}
