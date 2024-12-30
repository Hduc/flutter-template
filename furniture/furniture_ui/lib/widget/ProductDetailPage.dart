import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/ReviewModel.dart';
import 'package:furniture_ui/model/SubCategoryModel.dart';

import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
import 'package:furniture_ui/widget/AddToCartPage.dart';

class ProductDetailPage extends StatefulWidget {
  final SubCategoryModel subCategoryModel;

  ProductDetailPage(this.subCategoryModel);

  @override
  _ProductDetailPage createState() {
    return _ProductDetailPage(this.subCategoryModel);
  }
}

class _ProductDetailPage extends State<ProductDetailPage> {
  final SubCategoryModel subCategoryModel;
  List<ReviewModel> reViewModelList = [];

  int _itemSize = 1;
  int _colorPosition = 0;
  bool _isExpand = false;
  int _index = 0;

  _ProductDetailPage(this.subCategoryModel);

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return  Future.value(true);
  }

  @override
  void initState() {
    // TODO: implement initState
    reViewModelList = DataFile.getReviewList();
    setState(() {});
    super.initState();
  }

  void _addCart() {
    setState(() {
      _itemSize++;
    });
  }

  void _removeCart() {
    setState(() {
      if (_itemSize > 1) {
        _itemSize--;
      }
    });
  }

  Widget circleBar(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          color: isActive
              ? ConstantData.whiteColor
              : ConstantData.disableIconColor,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double containerHeight = SizeConfig.safeBlockVertical! * 7;
    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          body: SafeArea(
            child: Container(
              child: Stack(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: SizeConfig.safeBlockVertical! * 44,
                    child: Stack(
                      children: [
                        Stack(
                          children: [
                            PageView.builder(
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: ExactAssetImage(
                                          subCategoryModel.image!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                              onPageChanged: (value) {
                                _index = value;
                                setState(() {});
                              },
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 40),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    for (int i = 0; i < 3; i++)
                                      if (i == _index) ...[circleBar(true)] else
                                        circleBar(false),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 15),
                          child: Container(
                            color: Colors.transparent,
                            padding: EdgeInsets.only(left: 10, right: 10,),
                            height: SizeConfig.safeBlockVertical! * 8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios_sharp,
                                    color: ConstantData.whiteColor,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                new Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: ConstantData.whiteColor,
                                    size: 20,
                                  ),
                                  onPressed: _requestPop,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.safeBlockVertical! * 40),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: ConstantData.bgColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text(subCategoryModel.categoryName!,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: "SFProText",
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: ConstantData.textColor,
                                          decoration: TextDecoration.none)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      AutoSizeText(subCategoryModel.name!,
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontFamily: "SFProText",
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: ConstantData.textColor,
                                              decoration: TextDecoration.none)),
                                      new Spacer(),
                                      Text(subCategoryModel.price!,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily: "SFProText",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: ConstantData.textColor,
                                              decoration: TextDecoration.none)),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RatingBar.builder(
                                      itemSize: 15,
                                      initialRating:
                                          subCategoryModel.review.toDouble(),
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
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                          subCategoryModel.review.toString() +
                                              " " +
                                              subCategoryModel.reviewDesc,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily: "SFProText",
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: ConstantData.textColor,
                                              decoration: TextDecoration.none)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: InkWell(
                                        child: Icon(
                                          _isExpand
                                              ? Icons.expand_less
                                              : Icons.expand_more,
                                          size: 15,
                                          color: ConstantData.textColor,
                                        ),
                                        onTap: () {
                                          if (_isExpand) {
                                            _isExpand = false;
                                          } else {
                                            _isExpand = true;
                                          }
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Visibility(
                                  child: ListView.builder(
                                    itemCount: reViewModelList.length,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return _reViewCell(reViewModelList[index]);
                                    },
                                  ),
                                  visible: _isExpand,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15, bottom: 10),
                                  child: Text(S.of(context).description,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          fontFamily: "SFProText",
                                          color: ConstantData.textColor,
                                          decoration: TextDecoration.none)),
                                ),
                                Text(subCategoryModel.desc!,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "SFProText",
                                        color: ConstantData.textColor,
                                        decoration: TextDecoration.none)),
                                Padding(
                                  padding: EdgeInsets.only(top: 15, bottom: 15),
                                  child: Text(S.of(context).colorsString,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: "SFProText",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: ConstantData.textColor,
                                          decoration: TextDecoration.none)),
                                ),
                                _availableColorWidget(),
                              ],
                            ),
                            flex: 1,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: (containerHeight),
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                color: ConstantData.viewColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 1,
                                                color: ConstantData.textColor)),
                                        child: Center(
                                          child: Icon(
                                            Icons.remove,
                                            size: 15,
                                            color: ConstantData.textColor,
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          _removeCart();
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, right: 10),
                                    child: new Text(
                                      _itemSize.toString(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.end,
                                      style: new TextStyle(
                                          fontFamily: "SFProText",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: ConstantData.primaryColor,
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 1,
                                                color: ConstantData.textColor)),
                                        child: Center(
                                          child: Icon(
                                            Icons.add,
                                            size: 15,
                                            color: ConstantData.textColor,
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          _addCart();
                                        });
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 50),
                                          decoration: BoxDecoration(
                                              color: ConstantData.primaryColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Center(
                                            child: Text(
                                              S.of(context).addToCart,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  fontFamily: "SFProText",
                                                  color: Colors.white,
                                                  decoration:
                                                      TextDecoration.none),
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddToCartPage()));
                                        },
                                      ),
                                    ),
                                    flex: 1,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  Widget _availableColorWidget() {
    return Container(
        child: Row(
      children: <Widget>[
        _colorView(Colors.red, (0)),
        _colorView(ConstantData.blueColor, (1)),
        _colorView(Colors.brown, (2)),
        _colorView(ConstantData.purpleColor, (3)),
        _colorView(Colors.black, (4)),
        _colorView(ConstantData.greyColor, (5)),
      ],
    ));
  }

  Widget _colorView(Color color, int position) {
    // Widget _colorView(Color color, bool isSelected) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(right: 15),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: color,
            child: Icon(
              Icons.circle,
              color: (_colorPosition == position)
                  ? ConstantData.whiteColor
                  : color,
              size: 12,
            ),
          ),
        ),
        onTap: () {
          _colorPosition = position;
          setState(() {});
        },
      ),
    );
  }

  Widget _reViewCell(ReviewModel reViewModel) {
    double imageSize = SizeConfig.safeBlockVertical! * 5;
    double leftMargin = SizeConfig.safeBlockVertical! * 1.2;
    // Widget _colorView(Color color, bool isSelected) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ConstantData.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: imageSize,
                width: imageSize,
                // margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: ExactAssetImage(reViewModel.image!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: leftMargin),
                child: Text(reViewModel.name!,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: "SFProText",
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: ConstantData.textColor,
                        decoration: TextDecoration.none)),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: (imageSize + leftMargin)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                  itemSize: 15,
                  initialRating: reViewModel.review!,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
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
                  child: Text(reViewModel.desc!,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: "SFProText",
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: ConstantData.primaryTextColor,
                          decoration: TextDecoration.none)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
