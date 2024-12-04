// ignore_for_file: deprecated_member_use

import 'package:eco_product_ui_updated/utils/ConstantWidget.dart';
import 'package:eco_product_ui_updated/utils/MySeparator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:eco_product_ui_updated/data/DataFile.dart';
import 'package:eco_product_ui_updated/generated/l10n.dart';
import 'package:eco_product_ui_updated/model/ReviewModel.dart';
import 'package:eco_product_ui_updated/model/SubCategoryModel.dart';

import 'package:eco_product_ui_updated/utils/ConstantData.dart';
import 'package:eco_product_ui_updated/utils/SizeConfig.dart';
import 'package:eco_product_ui_updated/widget/AddToCartPage.dart';
// import 'package:toast/toast.dart';

class ProductDetailPage extends StatefulWidget {
  final SubCategoryModel subCategoryModel;

  ProductDetailPage(this.subCategoryModel);

  @override
  _ProductDetailPage createState() {
    return _ProductDetailPage(this.subCategoryModel);
  }
}

class _ProductDetailPage extends State<ProductDetailPage> {
  SubCategoryModel subCategoryModel;
  List<ReviewModel> reViewModelList = [];
  List<Color> colorList =  [Colors.deepOrangeAccent,Colors.yellow,Colors.green,Colors.blue];

  int _itemSize = 1;
  bool _isExpand = false;
  List<SubCategoryModel> popularList = [];

  double _index = 0;
  PageController controller = PageController();



  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  _ProductDetailPage(this.subCategoryModel);

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  void initState() {
    // TODO: implement initState
    reViewModelList = DataFile.getReviewList();
    popularList = DataFile.getTrendingModel();

    controller.addListener(() {
      setState(() {
        _index = controller.page!;
      });
    });


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
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: isActive ? 18 : 15,
      width: isActive ? 18 : 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? ConstantData.primaryColor : Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sliderHeight = SizeConfig.safeBlockVertical! * 40;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,

//           bottomNavigationBar: SizedBox(
//             height: SizeConfig.safeBlockVertical! * 25,
//             child: Container(
//               padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(top: 15),
//                     child: Text(S.of(context).price,
//                         textAlign: TextAlign.start,
//                         style: TextStyle(
//                             fontFamily: ConstantData.fontFamily,
//                             fontWeight: FontWeight.bold,
//                             fontSize: ConstantData.font12Px,
//                             color: ConstantData.textColor,
//                             decoration: TextDecoration.none)),
//                   ),
//                   Container(
//                     height: SizeConfig.safeBlockVertical! * 6,
//                     margin: EdgeInsets.only(bottom: ConstantWidget.getScreenPercentSize(context, 1.2)),
//
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           subCategoryModel.price,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontFamily: ConstantData.fontFamily,
//                             fontWeight: FontWeight.w700,
//                             fontSize: ConstantWidget.getScreenPercentSize(context, 2.5),
//                             color: Colors.black87,
//                           ),
//                         ),
//                         new Spacer(),
//                         InkWell(
//                           child: Container(
//                             height: ConstantWidget.getScreenPercentSize(context, 4.5),
//                             width: ConstantWidget.getScreenPercentSize(context, 4.5),
//                             decoration: BoxDecoration(
//                                 color: Colors.transparent,
//                                 shape: BoxShape.rectangle,
//                                 borderRadius: BorderRadius.circular(8),
//                                 border: Border.all(
//                                     width: 1, color: ConstantData.textColor)),
//                             child: Center(
//                               child: Icon(
//                                 Icons.remove,
//                                 size: ConstantWidget.getScreenPercentSize(context, 4),
//                                 color: ConstantData.textColor,
//                               ),
//                             ),
//                           ),
//                           onTap: () {
//                             setState(() {
//                               _removeCart();
//                             });
//                           },
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 20, right: 20),
//                           child: ConstantWidget.getCustomText(
//                               _itemSize.toString(),
//                               ConstantData.textColor,
//                               1,
//                               TextAlign.end,
//                               FontWeight.w500,
//                               16),
//                         ),
//                         InkWell(
//                           child: Container(
//                             height: ConstantWidget.getScreenPercentSize(context, 4.5),
//                             width: ConstantWidget.getScreenPercentSize(context, 4.5),
//                             decoration: BoxDecoration(
//                                 color: ConstantData.primaryColorWithOpacity,
//                                 shape: BoxShape.rectangle,
//                                 borderRadius: BorderRadius.circular(8),
//                                 border: Border.all(
//                                     width: 1,
//                                     color:
//                                         ConstantData.primaryColorWithOpacity)),
//                             child: Center(
//                               child: Icon(
//                                 Icons.add,
//                                 size: ConstantWidget.getScreenPercentSize(context, 4),
//                                 color: ConstantData.primaryColor,
//                               ),
//                             ),
//                           ),
//                           onTap: () {
//                             setState(() {
//                               _addCart();
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 15),
//                     child: const MySeparator(color: Colors.grey),
//                   ),
//                   Material(
//                     color: Colors.transparent,
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: InkWell(
//                             child: Container(
//                               margin: EdgeInsets.only(right: 5),
//                               height: (SizeConfig.safeBlockVertical! * 7),
//                               padding: EdgeInsets.only(left: 10),
//                               decoration: BoxDecoration(
//                                   color: Colors.transparent,
//                                   shape: BoxShape.rectangle,
//                                   borderRadius: BorderRadius.circular(10),
//                                   border: Border.all(
//                                       width: 0.5, color: Colors.grey.shade400)),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//
//
//                                   ConstantWidget.getCustomTextWithoutAlign(
//                                       S.of(context).buyNow,
//                                       ConstantData.textColor,
//                                       FontWeight.bold,
//                                       ConstantData.font18Px),
//                                 ],
//                               ),
//                             ),
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => AddToCartPage()));
//                             },
//                           ),
//                           flex: 1,
//                         ),
//                         Expanded(
//                           child: InkWell(
//                             child: Container(
//                               margin: EdgeInsets.only(left: 5),
//                               height: (SizeConfig.safeBlockVertical! * 7),
//                               padding: EdgeInsets.only(left: 10),
//                               decoration: BoxDecoration(
//                                 color: ConstantData.primaryColor,
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(10),
//                                 ),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(left: 15),
//                                     child: Icon(
//                                       Icons.shopping_cart,
//                                       color: Colors.white,
//                                       size: 20,
//                                     ),
//                                   ),
//                                   ConstantWidget.getCustomTextWithoutAlign(
//                                       S.of(context).addToCart,
//                                       Colors.white,
//                                       FontWeight.bold,
//                                       ConstantData.font18Px),
//                                 ],
//                               ),
//                             ),
//                             onTap: () {
//                               SnackBar   snackBar = SnackBar(
//                                 content: Text(S.of(context).productAdded),
//                               );
//
// // Find the ScaffoldMessenger in the widget tree
// // and use it to show a SnackBar.
//                               ScaffoldMessenger.of(context).showSnackBar(snackBar);
//
//
//                               // Toast.show(S.of(context).productAdded, duration: Toast.lengthShort, gravity:  Toast.bottom);
//
//
//                               // Navigator.push(
//                               //     context,
//                               //     MaterialPageRoute(
//                               //         builder: (context) => AddToCartPage()));
//                             },
//                           ),
//                           flex: 1,
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
          body: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    NestedScrollView(
                      headerSliverBuilder: (context, innerBoxIsScrolled) {
                        return <Widget>[
                          SliverAppBar(
                            automaticallyImplyLeading: false,
                            backgroundColor: Colors.transparent,
                            leading: InkWell(
                              onTap: () {
                                _requestPop();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.grey,
                              ),
                            ),
                            // backgroundColor: bgColors  ,
                            actions: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  })
                            ],
                            expandedHeight: sliderHeight,
                            // flexibleSpace: FlexibleSpaceBar(
                            //     centerTitle: false,
                            //     background: Padding(
                            //         padding: EdgeInsets.only(top: 0),
                            //         // padding: EdgeInsets.only(top: 48.0),
                            //         child: DottedSlider(
                            //             color: Colors.transparent,
                            //             maxHeight: sliderHeight,
                            //             children: List.generate(3, (index) {
                            //               return Container(
                            //                 height: double.infinity,
                            //                 width: double.infinity,
                            //                 decoration: BoxDecoration(
                            //                   color: ConstantData.cellColor,
                            //                   image: DecorationImage(
                            //                       image: AssetImage(
                            //                           ConstantData.assetsPath +
                            //                               subCategoryModel.image),
                            //                       fit: BoxFit.scaleDown),
                            //                 ),
                            //               );
                            //             })))),

                              flexibleSpace: FlexibleSpaceBar(
                                  centerTitle: false,
                                  background: Container(
                                    color: ConstantData.cellColor,
                                      width: double.infinity,
                                      height: double.infinity,

                                      child: Stack(children: [
                                        PageView.builder(
                                          controller: controller,
                                          itemCount: 3,
                                          scrollDirection: Axis.horizontal,

                                          itemBuilder: (context, index) {
                                            return Image.asset(
                                              ConstantData.assetsPath +
                                                  subCategoryModel.image,
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                              height: double.infinity,
                                            );
                                          },
                                        ),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: EdgeInsets.all(0),
                                              child: _drawDots(_index),
                                            ))
                                      ]))


                              )





                          ),
                        ];
                      },
                      body: Container(
                        color: ConstantData.cellColor,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                  topRight: Radius.circular(35))),
                          child: SingleChildScrollView(
                              padding: EdgeInsets.only(top: 20),
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 2, left: 20, right: 20),
                                        child: Text(subCategoryModel.name,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: ConstantWidget.getScreenPercentSize(context, 3),
                                                fontFamily: ConstantData.fontFamily,
                                                color: Colors.black87,
                                                decoration: TextDecoration.none)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 2, bottom: 15, left: 20, right: 20),
                                        child: Text(subCategoryModel.desc+" "+subCategoryModel.desc,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: ConstantWidget.getScreenPercentSize(context, 1.5),
                                                fontFamily: ConstantData.fontFamily,
                                                color: ConstantData.textColor,
                                                decoration: TextDecoration.none)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 0, left: 20, right: 20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: getCell(
                                                  subCategoryModel.reviewDesc.toString().replaceAll("(","").replaceAll(")", ""),
                                                  Icons.star),
                                              flex: 1,
                                            ),
                                            Expanded(
                                              child: getCell("Free",
                                                  Icons.local_shipping_outlined),
                                              flex: 1,
                                            ),
                                            Expanded(
                                              child: getCell("Within 1 day",
                                                  Icons.timer_outlined),
                                              flex: 1,
                                            ),


                                          ],
                                        ),
                                      ),

                                      Container(
                                          padding: EdgeInsets.only(
                                              bottom: 0, left: 20, right: 20),
                                          margin: EdgeInsets.only(top: 15,bottom: 15),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [

                                              Text("Color :".toUpperCase(),
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontFamily: ConstantData.fontFamily,
                                                      fontStyle: FontStyle.normal,
                                                      fontWeight: FontWeight.w800,
                                                      fontSize: ConstantData.font15Px,
                                                      color: Colors.black87,
                                                      decoration: TextDecoration.none)),

                                           Container(

                                             height: ConstantWidget.getScreenPercentSize(context, 5),
                                             child:
                                             ListView.builder(
                                                 shrinkWrap: true,
                                                 itemCount: colorList.length,
                                                 scrollDirection: Axis.horizontal,
                                                 itemBuilder: (context, index) {
                                                   return Container(margin: EdgeInsets.only(left: 5,right: 5
                                                   ),
                                                       height: ConstantWidget.getScreenPercentSize(context, 4),width: ConstantWidget.getScreenPercentSize(context, 4),
                                                       decoration: BoxDecoration(
                                                         color: colorList[index],
                                                         shape: BoxShape.circle,));
                                                 }),
                                           )




                                            ],
                                          )),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 0, left: 20, right: 20),
                                          child: InkWell(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  CupertinoIcons.star_fill,
                                                  color: Colors.amber,
                                                  size: ConstantWidget.getScreenPercentSize(context, 2.5),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                      "4.8 (${reViewModelList.length} reviews)",
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              ConstantData.fontFamily,
                                                          fontStyle: FontStyle.normal,
                                                          fontWeight: FontWeight.w500,
                                                          fontSize:
                                                              ConstantData.font12Px,
                                                          color: Colors.black87,
                                                          decoration:
                                                              TextDecoration.none)),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10),
                                                  child: Icon(
                                                    _isExpand
                                                        ? Icons.expand_less
                                                        : Icons.expand_more,
                                                    size: 15,
                                                    color: ConstantData.textColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            onTap: () {
                                              if (_isExpand) {
                                                _isExpand = false;
                                              } else {
                                                _isExpand = true;
                                              }
                                              setState(() {});
                                            },
                                          )),
                                      Visibility(
                                        child: ListView.builder(
                                          itemCount: reViewModelList.length,
                                          shrinkWrap: true,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) {
                                            return _reViewCell(
                                                reViewModelList[index], index);
                                          },
                                        ),
                                        visible: _isExpand,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10, left: 20, right: 20),
                                        child: ConstantWidget.getCustomText(
                                            S.of(context).youMayAlsoLike,
                                            ConstantData.textColor1,
                                            1,
                                            TextAlign.start,
                                            FontWeight.w800,
                                            ConstantData.font18Px),
                                      ),
                                      Container(
                                          height: SizeConfig.safeBlockVertical! * 34,
                                          margin: EdgeInsets.only(
                                              bottom:
                                                  MediaQuery.of(context).size.width *
                                                      0.01),
                                          child: ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: popularList.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return _popularCell(
                                                    popularList[index]);
                                              })),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    // Container(
                    //   color: ConstantData.cellColor,
                    //   // padding: EdgeInsets.all(20),
                    //   height: SizeConfig.safeBlockVertical * 44,
                    //   child: Stack(
                    //     children: [
                    //       Stack(
                    //         children: [
                    //           PageView.builder(
                    //             itemCount: 4,
                    //             itemBuilder: (context, index) {
                    //               return Container(
                    //                 child: Center(
                    //                   child: Image.asset(
                    //                     ConstantData.assetsPath +
                    //                         subCategoryModel.image,
                    //                     // height: 200,
                    //                     // width: 200,
                    //                   ),
                    //                 ),
                    //               );
                    //             },
                    //             onPageChanged: (value) {
                    //               _index = value;
                    //               setState(() {});
                    //             },
                    //           ),
                    //           Align(
                    //             alignment: Alignment.bottomCenter,
                    //             child: Padding(
                    //               padding: EdgeInsets.only(bottom: 40),
                    //               child: Row(
                    //                 mainAxisSize: MainAxisSize.min,
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 children: <Widget>[
                    //                   for (int i = 0; i < 3; i++)
                    //                     if (i == _index) ...[circleBar(true)] else
                    //                       circleBar(false),
                    //                 ],
                    //               ),
                    //             ),
                    //           )
                    //         ],
                    //       ),
                    //       Container(
                    //         padding: EdgeInsets.only(left: 5, right: 5),
                    //         height: SizeConfig.safeBlockVertical * 7.5,
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.start,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             IconButton(
                    //               icon: Icon(
                    //                 Icons.arrow_back_ios_sharp,
                    //                 color: ConstantData.textColor,
                    //                 size: 30,
                    //               ),
                    //               onPressed: _requestPop,
                    //             ),
                    //             new Spacer(),
                    //             IconButton(
                    //               icon: Icon(
                    //                 (subCategoryModel != null)
                    //                     ? (subCategoryModel.isFav == 1)
                    //                     ? Icons.favorite
                    //                     : Icons.favorite_border
                    //                     : Icons.favorite_border,
                    //                 color: (subCategoryModel != null)
                    //                     ? (subCategoryModel.isFav == 1)
                    //                     ? Colors.red
                    //                     : ConstantData.textColor
                    //                     : Colors.white,
                    //                 size: 30,
                    //               ),
                    //               onPressed: _requestPop,
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),

                    // Container(
                    //     margin: EdgeInsets.only(
                    //         top: SizeConfig.safeBlockVertical * 42),
                    //     padding: EdgeInsets.all(15),
                    //     decoration: BoxDecoration(
                    //       color: ConstantData.bgColor,
                    //       borderRadius: BorderRadius.only(
                    //         topRight: Radius.circular(30),
                    //         topLeft: Radius.circular(30),
                    //       ),
                    //     ),
                    //     child: Column(
                    //       children: [
                    //         Expanded(
                    //           child: ListView(
                    //             children: [
                    //               Padding(
                    //                 padding: EdgeInsets.only(bottom: 2),
                    //                 child: Text(subCategoryModel.name,
                    //                     textAlign: TextAlign.start,
                    //                     maxLines: 1,
                    //                     overflow: TextOverflow.ellipsis,
                    //                     style: TextStyle(
                    //                         fontFamily: ConstantData.fontFamily,
                    //                         fontStyle: FontStyle.normal,
                    //                         fontWeight: FontWeight.bold,
                    //                         fontSize: 24,
                    //                         color: Colors.black87,
                    //                         decoration: TextDecoration.none)),
                    //               ),
                    //
                    //               Padding(
                    //                 padding: EdgeInsets.only(top: 2, bottom: 15),
                    //                 child: Text(subCategoryModel.desc,
                    //                     textAlign: TextAlign.start,
                    //                     style: TextStyle(
                    //                         fontWeight: FontWeight.w400,
                    //                         fontSize: 14,
                    //                         fontFamily: ConstantData.fontFamily,
                    //                         color: ConstantData.textColor,
                    //                         decoration: TextDecoration.none)),
                    //               ),
                    //
                    //               Padding(
                    //                   padding: EdgeInsets.only(bottom: 15),
                    //                   child: InkWell(
                    //                     child: Row(
                    //                       mainAxisAlignment:
                    //                       MainAxisAlignment.start,
                    //                       crossAxisAlignment:
                    //                       CrossAxisAlignment.center,
                    //                       children: [
                    //                         Icon(
                    //                           CupertinoIcons.star_fill,
                    //                           color: Colors.amber,
                    //                           size: 20,
                    //                         ),
                    //                         Padding(
                    //                           padding: EdgeInsets.only(left: 10),
                    //                           child: Text(
                    //                               "4.8 (${reViewModelList.length} reviews)",
                    //                               textAlign: TextAlign.start,
                    //                               style: TextStyle(
                    //                                   fontFamily:
                    //                                   ConstantData.fontFamily,
                    //                                   fontStyle: FontStyle.normal,
                    //                                   fontWeight: FontWeight.w500,
                    //                                   fontSize:
                    //                                   ConstantData.font12Px,
                    //                                   color: Colors.black87,
                    //                                   decoration:
                    //                                   TextDecoration.none)),
                    //                         ),
                    //                         Padding(
                    //                           padding: EdgeInsets.only(left: 10),
                    //                           child: Icon(
                    //                             _isExpand
                    //                                 ? Icons.expand_less
                    //                                 : Icons.expand_more,
                    //                             size: 15,
                    //                             color: ConstantData.textColor,
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                     onTap: () {
                    //                       if (_isExpand) {
                    //                         _isExpand = false;
                    //                       } else {
                    //                         _isExpand = true;
                    //                       }
                    //                       setState(() {});
                    //                     },
                    //                   )),
                    //               Visibility(
                    //                 child: ListView.builder(
                    //                   itemCount: reViewModelList.length,
                    //                   shrinkWrap: true,
                    //                   physics: NeverScrollableScrollPhysics(),
                    //                   itemBuilder: (context, index) {
                    //                     return _reViewCell(
                    //                         reViewModelList[index]);
                    //                   },
                    //                 ),
                    //                 visible: _isExpand,
                    //               ),
                    //
                    //             ],
                    //           ),
                    //           flex: 1,
                    //         ),
                    //         Align(
                    //             alignment: Alignment.bottomLeft,
                    //             child: Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Padding(
                    //                   padding: EdgeInsets.only(top: 15),
                    //                   child: Text("Price",
                    //                       textAlign: TextAlign.start,
                    //                       style: TextStyle(
                    //                           fontFamily: ConstantData.fontFamily,
                    //                           fontWeight: FontWeight.bold,
                    //                           fontSize: ConstantData.font12Px,
                    //                           color: ConstantData.textColor,
                    //                           decoration: TextDecoration.none)),
                    //                 ),
                    //                 Container(
                    //                   height: 40,
                    //                   margin: EdgeInsets.only(bottom: 15),
                    //                   child: Row(
                    //                     crossAxisAlignment:
                    //                     CrossAxisAlignment.center,
                    //                     mainAxisAlignment:
                    //                     MainAxisAlignment.center,
                    //                     children: [
                    //                       Text(
                    //                         subCategoryModel.price,
                    //                         textAlign: TextAlign.center,
                    //                         style: TextStyle(
                    //                           fontFamily: ConstantData.fontFamily,
                    //                           fontWeight: FontWeight.w700,
                    //                           fontSize: 20,
                    //                           color: Colors.black87,
                    //                         ),
                    //                       ),
                    //
                    //                       new Spacer(),
                    //                       InkWell(
                    //                         child: Container(
                    //                           height: 40,
                    //                           width: 40,
                    //                           decoration: BoxDecoration(
                    //                               color: Colors.transparent,
                    //                               shape: BoxShape.rectangle,
                    //                               borderRadius:
                    //                               BorderRadius.circular(8),
                    //                               border: Border.all(
                    //                                   width: 1,
                    //                                   color: ConstantData
                    //                                       .textColor)),
                    //                           child: Center(
                    //                             child: Icon(
                    //                               Icons.remove,
                    //                               size: 15,
                    //                               color: ConstantData.textColor,
                    //                             ),
                    //                           ),
                    //                         ),
                    //                         onTap: () {
                    //                           setState(() {
                    //                             _removeCart();
                    //                           });
                    //                         },
                    //                       ),
                    //
                    //                       Padding(
                    //                         padding: EdgeInsets.only(
                    //                             left: 20, right: 20),
                    //
                    //                         child: ConstantWidget.getCustomText(
                    //                             _itemSize.toString(),
                    //                             ConstantData.textColor,
                    //                             1,
                    //                             TextAlign.end,
                    //                             FontWeight.w500,
                    //                             16),
                    //                         // child: new Text(
                    //                         //   _itemSize.toString(),
                    //                         //   overflow: TextOverflow.ellipsis,
                    //                         //   textAlign: TextAlign.end,
                    //                         //   style: new TextStyle(
                    //                         //       fontFamily: ConstantData.fontFamily,
                    //                         //       fontWeight: FontWeight.w500,
                    //                         //       fontSize: 16,
                    //                         //       color: ConstantData.textColor,
                    //                         //       decoration: TextDecoration.none),
                    //                         // ),
                    //                       ),
                    //
                    //                       InkWell(
                    //                         child: Container(
                    //                           height: 40,
                    //                           width: 40,
                    //                           decoration: BoxDecoration(
                    //                               color: ConstantData
                    //                                   .primaryColorWithOpacity,
                    //                               shape: BoxShape.rectangle,
                    //                               borderRadius:
                    //                               BorderRadius.circular(8),
                    //                               border: Border.all(
                    //                                   width: 1,
                    //                                   color: ConstantData
                    //                                       .primaryColorWithOpacity)),
                    //                           child: Center(
                    //                             child: Icon(
                    //                               Icons.add,
                    //                               size: 15,
                    //                               color:
                    //                               ConstantData.primaryColor,
                    //                             ),
                    //                           ),
                    //                         ),
                    //                         onTap: () {
                    //                           setState(() {
                    //                             _addCart();
                    //                           });
                    //                         },
                    //                       ),
                    //
                    //                     ],
                    //                   ),
                    //                 ),
                    //                 Padding(
                    //                   padding: EdgeInsets.only(bottom: 15),
                    //                   child:
                    //                   const MySeparator(color: Colors.grey),
                    //                 ),
                    //                 Material(
                    //                   color: Colors.transparent,
                    //                   child: InkWell(
                    //                     child: Container(
                    //                       height: (containerHeight),
                    //                       padding: EdgeInsets.only(left: 10),
                    //                       decoration: BoxDecoration(
                    //                         color: ConstantData.primaryColor,
                    //                         borderRadius: BorderRadius.all(
                    //                           Radius.circular(10),
                    //                         ),
                    //                       ),
                    //
                    //                       child: Row(
                    //                         mainAxisAlignment:
                    //                         MainAxisAlignment.center,
                    //                         crossAxisAlignment:
                    //                         CrossAxisAlignment.center,
                    //                         children: [
                    //                           Padding(
                    //                             padding:
                    //                             EdgeInsets.only(right: 15),
                    //                             child: Icon(
                    //                               Icons.shopping_cart,
                    //                               color: Colors.white,
                    //                               size: 20,
                    //                             ),
                    //                           ),
                    //                           ConstantWidget
                    //                               .getCustomTextWithoutAlign(
                    //                               S.of(context).addToCart,
                    //                               Colors.white,
                    //                               FontWeight.bold,
                    //                               ConstantData.font18Px),
                    //                         ],
                    //                       ),
                    //
                    //
                    //                     ),
                    //                     onTap: () {
                    //                       Navigator.push(
                    //                           context,
                    //                           MaterialPageRoute(
                    //                               builder: (context) =>
                    //                                   AddToCartPage()));
                    //                     },
                    //                   ),
                    //                 )
                    //               ],
                    //             ))
                    //       ],
                    //     )),
                  ],
                ),
              ),

              SizedBox(
                height: SizeConfig.safeBlockVertical! * 25,
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(S.of(context).price,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: ConstantData.fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: ConstantData.font12Px,
                                color: ConstantData.textColor,
                                decoration: TextDecoration.none)),
                      ),
                      Container(
                        height: SizeConfig.safeBlockVertical! * 6,
                        margin: EdgeInsets.only(bottom: ConstantWidget.getScreenPercentSize(context, 1.2)),

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              subCategoryModel.price,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: ConstantData.fontFamily,
                                fontWeight: FontWeight.w700,
                                fontSize: ConstantWidget.getScreenPercentSize(context, 2.5),
                                color: Colors.black87,
                              ),
                            ),
                            new Spacer(),
                            InkWell(
                              child: Container(
                                height: ConstantWidget.getScreenPercentSize(context, 4.5),
                                width: ConstantWidget.getScreenPercentSize(context, 4.5),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        width: 1, color: ConstantData.textColor)),
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    size: ConstantWidget.getScreenPercentSize(context, 4),
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
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: ConstantWidget.getCustomText(
                                  _itemSize.toString(),
                                  ConstantData.textColor,
                                  1,
                                  TextAlign.end,
                                  FontWeight.w500,
                                  16),
                            ),
                            InkWell(
                              child: Container(
                                height: ConstantWidget.getScreenPercentSize(context, 4.5),
                                width: ConstantWidget.getScreenPercentSize(context, 4.5),
                                decoration: BoxDecoration(
                                    color: ConstantData.primaryColorWithOpacity,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        width: 1,
                                        color:
                                        ConstantData.primaryColorWithOpacity)),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: ConstantWidget.getScreenPercentSize(context, 4),
                                    color: ConstantData.primaryColor,
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  _addCart();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: const MySeparator(color: Colors.grey),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  margin: EdgeInsets.only(right: 5),
                                  height: (SizeConfig.safeBlockVertical! * 7),
                                  padding: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey.shade400)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [


                                      ConstantWidget.getCustomTextWithoutAlign(
                                          S.of(context).buyNow,
                                          ConstantData.textColor,
                                          FontWeight.bold,
                                          ConstantData.font18Px),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AddToCartPage()));
                                },
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  margin: EdgeInsets.only(left: 5),
                                  height: (SizeConfig.safeBlockVertical! * 7),
                                  padding: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: ConstantData.primaryColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                      ConstantWidget.getCustomTextWithoutAlign(
                                          S.of(context).addToCart,
                                          Colors.white,
                                          FontWeight.bold,
                                          ConstantData.font18Px),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  SnackBar   snackBar = SnackBar(
                                    content: Text(S.of(context).productAdded),duration: Duration(milliseconds: 500),
                                  );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);


                                  // Toast.show(S.of(context).productAdded, duration: Toast.lengthShort, gravity:  Toast.bottom);


                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => AddToCartPage()));
                                },
                              ),
                              flex: 1,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        onWillPop: _requestPop);
  }
  _drawDots(page) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (int i = 0; i < 3; i++) dot((page == i)),
      ],
    );
  }

  dot(bool selected) {
    double size = 12;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 2, left: 2, bottom: 2),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (selected) ? ConstantData.primaryColor : Colors.white),
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
        margin: EdgeInsets.only(left: leftMargin, top: ConstantWidget.getPercentSize(height, 7), bottom: ConstantWidget.getPercentSize(height, 7)),
        decoration: BoxDecoration(
            color: ConstantData.whiteColor,
            borderRadius: BorderRadius.circular(ConstantWidget.getPercentSize(height, 6)),
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
                margin: EdgeInsets.all(ConstantWidget.getPercentSize(height, 3)),
                decoration: BoxDecoration(
                  color: ConstantData.cellColor,
                  borderRadius: BorderRadius.circular(ConstantWidget.getPercentSize(height, 6)),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.all(ConstantWidget.getPercentSize(image, 8)),
                        padding: EdgeInsets.all(ConstantWidget.getPercentSize(image, 8)),
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
                    Padding(padding: EdgeInsets.all(ConstantWidget.getPercentSize(image, 5)),child:  Center(
                      child: Image.asset(
                        ConstantData.assetsPath + subCategoryModel.image,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),)
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
                Padding(
                    padding: EdgeInsets.only(left: ConstantWidget.getPercentSize(remainSize, 6),right: ConstantWidget.getPercentSize(remainSize, 6),
                        bottom: ConstantWidget.getPercentSize(remainSize, 6)),

                    // padding: EdgeInsets.only(left: 8, bottom: 15),
                    child: ConstantWidget.getCustomText(
                        subCategoryModel.price,
                        Colors.black87,
                        1,
                        TextAlign.start,
                        FontWeight.bold,
                        ConstantWidget.getPercentSize(remainSize, 8))


                ),
                new Spacer(),
                Container(
                  margin: EdgeInsets.only(left: ConstantWidget.getPercentSize(remainSize, 6), right: ConstantWidget.getPercentSize(remainSize, 6)
                      ,bottom: ConstantWidget.getPercentSize(remainSize, 6)),
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
                    borderRadius: BorderRadius.all(Radius.circular(ConstantWidget.getPercentSize(cellSize, 15))),
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
            // Image.asset(
            //   ConstantData.assetsPath + subCategoryModel.image,
            //   height: image,
            //   width: image,
            // ),
            // Container(
            //   height: 45,
            //   padding: EdgeInsets.only(top: 10),
            //   child: Text(
            //     subCategoryModel.name,
            //     maxLines: 2,
            //     overflow: TextOverflow.ellipsis,
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         fontFamily: ConstantData.fontFamily,
            //         fontWeight: FontWeight.w800,
            //         fontSize: ConstantData.font12Px,
            //         color: ConstantData.textColor),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(top: 1),
            //   child: Text(
            //     subCategoryModel.price,
            //     maxLines: 2,
            //     overflow: TextOverflow.ellipsis,
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         fontFamily: ConstantData.fontFamily,
            //         fontWeight: FontWeight.w500,
            //         fontSize: ConstantData.font12Px,
            //         color: ConstantData.textColor.withOpacity(0.5)),
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.only(top:10),
            //   height: cellSize,
            //   width: cellSize,
            //   decoration: BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(
            //           color: ConstantData.textColor.withOpacity(0.1),
            //           blurRadius: 10,
            //           spreadRadius: 3,
            //           offset: Offset(0, 3))
            //     ],
            //     color: ConstantData.primaryColor,
            //
            //     // shape: BoxShape.circle,
            //     borderRadius: BorderRadius.all(Radius.circular(5)),
            //   ),
            //   child: Center(
            //     child:Icon(Icons.trending_neutral_sharp,color: Colors.white,size: 15,),
            //   ),
            // )
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
    // return InkWell(
    //   child: Container(
    //     width: containerWidth,
    //     child: Stack(
    //       children: [
    //         Container(
    //           width: containerWidth,
    //           height: containerHeight,
    //           margin: EdgeInsets.only(left: leftMargin),
    //           decoration: BoxDecoration(
    //             image: DecorationImage(
    //               image: ExactAssetImage(ConstantData.assetsPath+subCategoryModel.image),
    //               fit: BoxFit.cover,
    //             ),
    //
    //             // shape: BoxShape.circle,
    //             borderRadius: BorderRadius.all(Radius.circular(30)),
    //           ),
    //         ),
    //         Positioned.fill(
    //             child: Align(
    //           alignment: Alignment.center,
    //           child: Container(
    //             padding: EdgeInsets.all(10),
    //             height: containerHeight,
    //             width: containerWidth,
    //             margin: EdgeInsets.only(
    //                 top: marginTop,
    //                 left: (leftMargin + leftMargin) - 10,
    //                 right: leftMargin - 10),
    //             decoration: BoxDecoration(
    //               color: Colors.white,
    //               // shape: BoxShape.circle,
    //               borderRadius: BorderRadius.all(Radius.circular(10)),
    //
    //
    //                 boxShadow: [
    //                   BoxShadow(
    //                       color: ConstantData.textColor.withOpacity(0.1),
    //                       blurRadius: 20,
    //                       spreadRadius: 5,
    //                       offset: Offset(0, 10))
    //                 ]
    //
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   subCategoryModel.name,
    //                   textAlign: TextAlign.start,
    //                   style: TextStyle(
    //                       fontFamily: ConstantData.fontFamily,
    //                       fontWeight: FontWeight.w800,
    //                       fontSize: ConstantData.font12Px,
    //                       color: ConstantData.textColor),
    //                 ),
    //                 Expanded(
    //                   child: Align(
    //                     alignment: Alignment.bottomLeft,
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         RatingBar.builder(
    //                           itemSize: 12,
    //                           initialRating: subCategoryModel.review.toDouble(),
    //                           minRating: 1,
    //                           direction: Axis.horizontal,
    //                           allowHalfRating: true,
    //                           itemCount: 5,
    //                           itemPadding:
    //                               EdgeInsets.symmetric(horizontal: 0.0),
    //                           itemBuilder: (context, _) => Icon(
    //                             Icons.star,
    //                             color: Colors.amber,
    //                             size: 10,
    //                           ),
    //                           onRatingUpdate: (rating) {
    //                             print(rating);
    //                           },
    //                         ),
    //                         Padding(
    //                           padding: EdgeInsets.only(top: 5),
    //                           child: Row(
    //                             mainAxisAlignment: MainAxisAlignment.center,
    //                             children: [
    //                               Text(subCategoryModel.price,
    //                                   textAlign: TextAlign.start,
    //                                   style: TextStyle(
    //                                       fontFamily: ConstantData.fontFamily,
    //                                       fontWeight: FontWeight.bold,
    //                                       fontSize: ConstantData.font15Px,
    //                                       color: ConstantData.textColor,
    //                                       decoration: TextDecoration.none)),
    //                               new Spacer(),
    //                               Icon(
    //                                 Icons.favorite_border,
    //                                 color: ConstantData.textColor,
    //                                 size: 15,
    //                               ),
    //                               Padding(
    //                                 padding: EdgeInsets.only(left: 2),
    //                                 child: Text(
    //                                     subCategoryModel.reviewDesc
    //                                         .replaceAll("reviews", ""),
    //                                     textAlign: TextAlign.start,
    //                                     style: TextStyle(
    //                                         fontFamily: ConstantData.fontFamily,
    //                                         fontWeight: FontWeight.w700,
    //                                         fontSize: ConstantData.font12Px,
    //                                         color: ConstantData.textColor,
    //                                         decoration: TextDecoration.none)),
    //                               )
    //                             ],
    //                           ),
    //                         )
    //                       ],
    //                     ),
    //                   ),
    //                   flex: 1,
    //                 )
    //               ],
    //             ),
    //           ),
    //         ))
    //       ],
    //     ),
    //   ),
    //   onTap: () {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //             builder: (context) => ProductDetailPage(subCategoryModel)));
    //   },
    // );
  }




  Widget _reViewCell(ReviewModel reViewModel, int index) {
    double imageSize = SizeConfig.safeBlockVertical! * 5;
    double leftMargin = SizeConfig.safeBlockVertical! * 1.2;
    // Widget _colorView(Color color, bool isSelected) {
    return Container(
      margin: EdgeInsets.only(
          top: (index == 0) ? 0 : 5, bottom: 5, left: 20, right: 20),
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(
          color: ConstantData.whiteColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 10,
            )
          ]),

      // decoration: BoxDecoration(
      //   color: ConstantData.textColor,
      //   // color: ConstantData.whiteColor,
      //   borderRadius: BorderRadius.all(Radius.circular(8)),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black12,
      //       offset: Offset(1, 1),
      //       blurRadius: 1,
      //     ),
      //   ],
      // ),
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
                    image: ExactAssetImage(
                        ConstantData.assetsPath + reViewModel.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: leftMargin),
                child: ConstantWidget.getCustomText(
                    reViewModel.name,
                    ConstantData.textColor,
                    1,
                    TextAlign.start,
                    FontWeight.bold,
                    ConstantData.font15Px),
                // child: Text(reViewModel.name,
                //     textAlign: TextAlign.start,
                //     style: TextStyle(
                //         fontFamily: ConstantData.fontFamily,
                //         fontWeight: FontWeight.bold,
                //         fontSize: ConstantData.font15Px,
                //         color: ConstantData.textColor,
                //         decoration: TextDecoration.none)),
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
                  initialRating: reViewModel.review,
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
                    size: 10,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: ConstantWidget.getCustomText(
                      reViewModel.desc,
                      ConstantData.primaryTextColor,
                      2,
                      TextAlign.start,
                      FontWeight.w400,
                      10),
                  // child: Text(reViewModel.desc,
                  //     textAlign: TextAlign.start,
                  //     style: TextStyle(
                  //         fontFamily: ConstantData.fontFamily,
                  //         fontWeight: FontWeight.w400,
                  //         fontSize: 10,
                  //         color: ConstantData.primaryTextColor,
                  //         decoration: TextDecoration.none)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getCell(String s, var icon) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: ConstantData.accentColor,
          size: ConstantWidget.getScreenPercentSize(context, 3),

        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(s,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: ConstantData.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: ConstantData.font12Px,
                  color: Colors.black87,
                  decoration: TextDecoration.none)),
        ),

      ],
    ));
  }
}
