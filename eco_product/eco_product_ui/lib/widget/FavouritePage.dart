// ignore_for_file: deprecated_member_use

import 'package:eco_product_ui_updated/utils/ConstantWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:eco_product_ui_updated/data/DataFile.dart';
import 'package:eco_product_ui_updated/generated/l10n.dart';
import 'package:eco_product_ui_updated/model/SubCategoryModel.dart';
import 'package:eco_product_ui_updated/utils/ConstantData.dart';
import 'package:eco_product_ui_updated/utils/SizeConfig.dart';

import 'ProductDetailPage.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePage createState() {
    return _FavouritePage();
  }
}

class _FavouritePage extends State<FavouritePage> {
  List<SubCategoryModel> favList = DataFile.getFavList();

  @override
  void initState() {
    super.initState();
    favList = DataFile.getFavList();
    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    var _crossAxisSpacing = 1;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 2;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var cellHeight = SizeConfig.safeBlockVertical! * 36;
    var _aspectRatio = _width / cellHeight;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,
            title: ConstantWidget.getAppBarText(S.of(context).favourite),
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
            margin: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: MediaQuery.of(context).size.width * 0.01),
            // child: Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              primary: false,
              // childAspectRatio: 0.64,
              childAspectRatio: _aspectRatio,
              children: List.generate(favList.length, (index) {
                return new BackGroundTile(
                  subCategoryModel: favList[index],
                  cellHeight: cellHeight,
                );
              }),
            ),
            // flex: 1,
            // ),
          ),
        ),
        onWillPop: _requestPop);
  }
}

class BackGroundTile extends StatelessWidget {
  final SubCategoryModel subCategoryModel;
  final double cellHeight;

  BackGroundTile({required this.subCategoryModel, required this.cellHeight});

  @override
  Widget build(BuildContext context) {
    double imageSize = ConstantWidget.getPercentSize(cellHeight, 42);
    double topCellHeight = ConstantWidget.getPercentSize(cellHeight, 12);
    double radius = ConstantWidget.getPercentSize(cellHeight, 5);
    double bottomRemainSize = cellHeight - imageSize - topCellHeight;

    return InkWell(
      child: Container(
        height: cellHeight,
        margin: EdgeInsets.all(ConstantWidget.getPercentSize(cellHeight, 2)),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: topCellHeight,
                      width: topCellHeight,
                      decoration: BoxDecoration(
                        color: ConstantData.accentColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(radius),
                            bottomRight: Radius.circular(radius)),
                      ),
                      child: Center(
                        child: ConstantWidget.getCustomText(
                            "25%",
                            Colors.white,
                            1,
                            TextAlign.center,
                            FontWeight.bold,
                            ConstantWidget.getPercentSize(topCellHeight, 22)),
                      ),
                    ),
                  ),
                  new Spacer(),
                  Icon(
                    (subCategoryModel.isFav == 1)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: ConstantData.accentColor,
                    size: ConstantWidget.getPercentSize(topCellHeight, 50),
                  ),
                  SizedBox(
                    width: ConstantWidget.getPercentSize(cellHeight, 2),
                  )
                ],
              ),
            ),
            Container(
              height: imageSize,
              width: double.infinity,
              // margin: EdgeInsets.all(
              //   ConstantWidget.getPercentSize(imageSize, 9),
              // ),
              margin: EdgeInsets.only(
                  left: ConstantWidget.getPercentSize(imageSize, 9),
                  right: ConstantWidget.getPercentSize(imageSize, 9),
                  top: ConstantWidget.getPercentSize(imageSize, 9)),
              padding:
                  EdgeInsets.all(ConstantWidget.getPercentSize(imageSize, 7)),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: ConstantData.cellColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(radius),
                ),
              ),
              child:
                  Image.asset(ConstantData.assetsPath + subCategoryModel.image),
            ),
            ConstantWidget.getSpace(
                ConstantWidget.getPercentSize(cellHeight, 5)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ConstantWidget.getPercentSize(cellHeight, 0.5)),
              child: ConstantWidget.getCustomText(
                  subCategoryModel.name,
                  ConstantData.textColor,
                  1,
                  TextAlign.center,
                  FontWeight.w800,
                  ConstantWidget.getPercentSize(bottomRemainSize, 10)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: ConstantWidget.getPercentSize(cellHeight, 2),
                  horizontal: ConstantWidget.getPercentSize(cellHeight, 0.5)),
              child: ConstantWidget.getCustomText(
                  subCategoryModel.price,
                  ConstantData.textColor1,
                  1,
                  TextAlign.center,
                  FontWeight.w700,
                  ConstantWidget.getPercentSize(bottomRemainSize, 13)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                  itemSize: ConstantWidget.getPercentSize(bottomRemainSize, 12),
                  initialRating: subCategoryModel.review.toDouble(),
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  tapOnlyMode: true,
                  updateOnDrag: true,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: ConstantWidget.getPercentSize(bottomRemainSize, 12),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  // padding: EdgeInsets.only(left: 8),
                  child: ConstantWidget.getCustomText(
                      subCategoryModel.reviewDesc,
                      ConstantData.textColor,
                      1,
                      TextAlign.center,
                      FontWeight.w500,
                      ConstantWidget.getPercentSize(bottomRemainSize, 9)),
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
