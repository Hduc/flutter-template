import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../data/DataFile.dart';
import '../generated/l10n.dart';
import '../model/CategoryModel.dart';
import '../model/DiscModel.dart';
import '../model/SubCategoryModel.dart';
import '../utils/ConstantData.dart';
import '../utils/ConstantWidget.dart';
import '../utils/SizeConfig.dart';
import '../widget/AddToCartPage.dart';
import '../widget/CategoriesPage.dart';
import '../widget/FilterPage.dart';
import '../widget/ProductDetailPage.dart';
import '../widget/SubCategoriesPage.dart';

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
    double topMargin = MediaQuery.of(context).size.width * 0.03;
    double imageSize = SizeConfig.safeBlockVertical! * 12;
    double fontSize = SizeConfig.safeBlockVertical! / 0.75;

    print("fontSize----$fontSize");

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
                              image: ExactAssetImage(
                                  ConstantData.assetsPath + item.image),
                              fit: BoxFit.cover,
                            ),
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
        title: ConstantWidget.getAppBarText(S.of(context).home),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: ConstantData.primaryColor,
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
                  height: SizeConfig.safeBlockHorizontal! * 45,
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
            Container(
              padding: EdgeInsets.only(
                  left: leftMargin, right: leftMargin, top: leftMargin),
              child: Row(
                children: [
                  ConstantWidget.getCustomTextWithoutAlign(
                      S.of(context).categories,
                      ConstantData.textColor,
                      FontWeight.w800,
                      ConstantWidget.getScreenPercentSize(context, 2)),
                  new Spacer(),
                  InkWell(
                    child: ConstantWidget.getCustomTextWithoutAlign(
                        S.of(context).viewAll,
                        ConstantData.textColor1,
                        FontWeight.w800,
                        ConstantWidget.getScreenPercentSize(context, 1.5)),
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
                height: SizeConfig.safeBlockHorizontal! * 29,
                // height: SizeConfig.safeBlockVertical * 10,
                child: ListView.builder(
                    padding: EdgeInsets.only(left: leftMargin),
                    shrinkWrap: true,
                    itemCount: categoryModelList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      double height = SizeConfig.safeBlockHorizontal! * 29;
                      double imageSize =
                          ConstantWidget.getPercentSize(height, 38);
                      double remainSize = height - imageSize;
                      // double width= SizeConfig.safeBlockHorizontal * 28;
                      return InkWell(
                        child: Container(
                          width: height,
                          child: Container(
                            margin: EdgeInsets.all(
                                ConstantWidget.getPercentSize(height, 6)),
                            decoration: BoxDecoration(
                                color: ConstantData.whiteColor,
                                borderRadius: BorderRadius.circular(
                                    ConstantWidget.getPercentSize(height, 12)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 3,
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  // padding: EdgeInsets.only(
                                  //     left: 5, right: 5, bottom: 8,top:5),
                                  child: Center(
                                    child: Image.asset(
                                      ConstantData.assetsPath +
                                          categoryModelList[index].icon,
                                      fit: BoxFit.cover,
                                      // height: 50,
                                      // width: 50,

                                      height: imageSize,
                                      width: imageSize,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: ConstantWidget.getPercentSize(
                                            remainSize, 6),
                                        left: ConstantWidget.getPercentSize(
                                            remainSize, 2),
                                        right: ConstantWidget.getPercentSize(
                                            remainSize, 2)),
                                    child: ConstantWidget.getCustomText(
                                        categoryModelList[index].name,
                                        ConstantData.textColor,
                                        1,
                                        TextAlign.start,
                                        FontWeight.w500,
                                        ConstantWidget.getPercentSize(
                                            remainSize, 18)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubCategoriesPage(
                                      categoryModelList[index].id)));
                        },
                      );
                    })),
            Container(
              padding: EdgeInsets.only(
                  left: leftMargin, right: leftMargin, top: topMargin),
              child: Row(
                children: [
                  ConstantWidget.getCustomText(
                      S.of(context).mostPopular,
                      ConstantData.textColor,
                      1,
                      TextAlign.start,
                      FontWeight.w800,
                      ConstantWidget.getScreenPercentSize(context, 2)),
                ],
              ),
            ),
            Container(
                height: SizeConfig.safeBlockVertical! * 34,
                margin: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.width * 0.03,
                    bottom: MediaQuery.of(context).size.width * 0.01),
                // color: Colors.red,
                // height: SizeConfig.safeBlockVertical * 10,
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
                  ConstantWidget.getCustomText(
                      S.of(context).trending,
                      ConstantData.textColor,
                      1,
                      TextAlign.start,
                      FontWeight.w800,
                      ConstantWidget.getScreenPercentSize(context, 2)),
                  new Spacer(),
                  InkWell(
                    child: ConstantWidget.getCustomTextWithoutAlign(
                        "",
                        ConstantData.textColor,
                        FontWeight.w600,
                        ConstantData.font12Px),
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
                            left: leftMargin, top: 10, right: leftMargin),
                        child: Stack(
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
                                      trendingList[index].image),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ConstantWidget.getCustomText(
                                          trendingList[index].name,
                                          ConstantData.textColor,
                                          1,
                                          TextAlign.start,
                                          FontWeight.w800,
                                          ConstantData.font18Px),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 5, bottom: 15),
                                        child: ConstantWidget.getCustomText(
                                            trendingList[index].desc,
                                            ConstantData.textColor,
                                            1,
                                            TextAlign.start,
                                            FontWeight.w500,
                                            ConstantWidget.getScreenPercentSize(
                                                context, 1.9)),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: ConstantWidget.getCustomText(
                                            trendingList[index].price,
                                            ConstantData.accentColor,
                                            1,
                                            TextAlign.start,
                                            FontWeight.w700,
                                            ConstantWidget.getScreenPercentSize(
                                                context, 2.3)),
                                      ),
                                    ],
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: ConstantWidget.getScreenPercentSize(
                                      context, 5),
                                  width: ConstantWidget.getScreenPercentSize(
                                      context, 5),

                                  decoration: BoxDecoration(
                                    color: ConstantData.primaryColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                  ),

                                  child: Transform.scale(
                                    scale: -1,
                                    child: Center(
                                      child: Icon(Icons.arrow_back_sharp,
                                          color: Colors.white,
                                          size: ConstantWidget
                                              .getScreenPercentSize(
                                                  context, 3)),
                                    ),
                                  ),
                                  // child: Center(
                                  //   child: Icon(CupertinoIcons.righ),
                                  // ),
                                ),
                              ),
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
    double containerWidth = SizeConfig.safeBlockHorizontal! * 36;
    double leftMargin = MediaQuery.of(context).size.width * 0.05;
    // double image = MediaQuery.of(context).size.width * 0.3;
    double height = SizeConfig.safeBlockVertical! * 34;
    double image = ConstantWidget.getPercentSize(height, 25);
    double remainSize = height - image;

    double cellSize = ConstantWidget.getPercentSize(remainSize, 16);
    // double cellSize = MediaQuery.of(context).size.width * 0.07;

    return InkWell(
      child: Container(
        width: containerWidth,
        height: height,
        margin: EdgeInsets.only(
            left: leftMargin,
            top: ConstantWidget.getPercentSize(height, 7),
            bottom: ConstantWidget.getPercentSize(height, 7)),
        decoration: BoxDecoration(
            color: ConstantData.whiteColor,
            borderRadius:
                BorderRadius.circular(ConstantWidget.getPercentSize(height, 6)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 10,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin:
                    EdgeInsets.all(ConstantWidget.getPercentSize(height, 3)),
                decoration: BoxDecoration(
                  color: ConstantData.cellColor,
                  borderRadius: BorderRadius.circular(
                      ConstantWidget.getPercentSize(height, 6)),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.all(
                            ConstantWidget.getPercentSize(image, 8)),
                        padding: EdgeInsets.all(
                            ConstantWidget.getPercentSize(image, 8)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          (subCategoryModel.isFav == 1)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: (subCategoryModel.isFav == 1)
                              ? Colors.red
                              : ConstantData.textColor,
                          size: ConstantWidget.getPercentSize(image, 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          ConstantWidget.getPercentSize(image, 5)),
                      child: Center(
                        child: Image.asset(
                          ConstantData.assetsPath + subCategoryModel.image,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              flex: 1,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ConstantWidget.getPercentSize(remainSize, 6),
                    horizontal: ConstantWidget.getPercentSize(remainSize, 6)),
                // EdgeInsets.only(top: 15, bottom: 15, left: 8, right: 8),
                child: ConstantWidget.getCustomText(
                    subCategoryModel.name,
                    ConstantData.textColor,
                    1,
                    TextAlign.start,
                    FontWeight.w800,
                    ConstantWidget.getPercentSize(remainSize, 8))
                // ConstantData.font18Px)

                ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: ConstantWidget.getPercentSize(remainSize, 6),
                          right: ConstantWidget.getPercentSize(remainSize, 6),
                          bottom: ConstantWidget.getPercentSize(remainSize, 6)),

                      // padding: EdgeInsets.only(left: 8, bottom: 15),
                      child: ConstantWidget.getCustomText(
                          subCategoryModel.price,
                          Colors.black87,
                          1,
                          TextAlign.start,
                          FontWeight.bold,
                          ConstantWidget.getPercentSize(remainSize, 8))),
                ),
                // new Spacer(),
                Container(
                  margin: EdgeInsets.only(
                      left: ConstantWidget.getPercentSize(remainSize, 6),
                      right: ConstantWidget.getPercentSize(remainSize, 6),
                      bottom: ConstantWidget.getPercentSize(remainSize, 6)),
                  height: cellSize,
                  width: cellSize,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: ConstantData.textColor.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 3))
                    ],
                    color: ConstantData.primaryColor,

                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.all(Radius.circular(
                        ConstantWidget.getPercentSize(cellSize, 15))),
                  ),
                  child: Transform.scale(
                    scale: -1,
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                        size: ConstantWidget.getPercentSize(cellSize, 50),
                      ),
                    ),
                  ),
                )
              ],
            )
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
