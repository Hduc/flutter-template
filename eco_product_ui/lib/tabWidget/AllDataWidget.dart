
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../data/DataFile.dart';
import '../generated/l10n.dart';
import '../model/CategoryModel.dart';
import '../model/SubCategoryModel.dart';
import '../utils/ConstantData.dart';
import '../utils/ConstantWidget.dart';
import '../utils/SizeConfig.dart';
import '../widget/ProductDetailPage.dart';
// import 'file:///G:/flutter_workspace/eco_product_ui_updated/lib/widget/ProductDetailPage.dart';

class AllDataWidget extends StatefulWidget {
  @override
  _AllDataWidget createState() {
    return _AllDataWidget();
  }
}

class _AllDataWidget extends State<AllDataWidget> {
  List<CategoryModel> categoryModelList = [];
  List<SubCategoryModel> subCategoryModelList = [];

  int _selectedCategory = 0;

  @override
  void initState() {
    super.initState();

    subCategoryModelList = DataFile.getSubCategoryListFromId(1);
    categoryModelList = DataFile.getDataCategoryModel();

    setState(() {});
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

    double leftMargin = MediaQuery.of(context).size.width * 0.03;

    return Scaffold(
      backgroundColor: ConstantData.bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstantData.bgColor,
        elevation: 0,
        centerTitle: true,
        title: ConstantWidget.getAppBarText(S.of(context).categories),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.03,
                    bottom: MediaQuery.of(context).size.width * 0.01),
                height: MediaQuery.of(context).size.width * 0.09,
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Center(
                              child: Padding(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child:
                                      ConstantWidget.getCustomTextWithoutAlign(
                                          categoryModelList[index].name,
                                          (_selectedCategory == index)
                                              ? ConstantData.whiteColor
                                              : ConstantData.textColor,
                                          FontWeight.w600,
                                          ConstantData.font12Px))),
                        ),
                        onTap: () {
                          _selectedCategory = index;
                          subCategoryModelList =
                              DataFile.getSubCategoryListFromId(
                                  categoryModelList[index].id);
                          setState(() {});
                        },
                      );
                    })),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                    left: leftMargin, right: leftMargin, top: 0),
                child: GridView.count(
                  crossAxisCount: _crossAxisCount,
                  shrinkWrap: true,
                  childAspectRatio: _aspectRatio,
                  // childAspectRatio: 0.64,
                  primary: false,
                  children: List.generate(subCategoryModelList.length, (index) {
                    return new BackGroundTile(
                      subCategoryModel: subCategoryModelList[index],
                      cellHeight: cellHeight,
                    );
                  }),
                ),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
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
