// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:palette_generator/palette_generator.dart';

import '../data/DataFile.dart';
import '../generated/l10n.dart';
import '../model/CategoryModel.dart';
import '../utils/ConstantData.dart';
import '../utils/ConstantWidget.dart';
import '../utils/SizeConfig.dart';
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
    var _crossAxisSpacing = 1;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 2;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var cellHeight = _width;
    // var cellHeight = SizeConfig.safeBlockVertical * 27;
    var _aspectRatio = _width / cellHeight;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,

            title: ConstantWidget.getAppBarText(S.of(context).categories),
            // title: ConstantWidget.getCustomTextWithoutAlign(S.of(context).categories, ConstantData.textColor, FontWeight.bold, ConstantData.font18Px),
            // title: Text(S.of(context).categories,
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         fontSize: ConstantData.font18Px,
            //         fontFamily: ConstantData.fontFamily,
            //         color: ConstantData.textColor)),
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
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.width * 0.01),
                  child: GridView.count(
                    crossAxisCount: _crossAxisCount,
                    shrinkWrap: true,
                    childAspectRatio: _aspectRatio,
                    // childAspectRatio: 0.64,
                    primary: false,
                    children: List.generate(categoryModelList.length, (index) {
                      return new BackGroundTile(
                        subCategoryModel: categoryModelList[index],
                        cellHeight: cellHeight,
                      );
                    }),
                  ),
                ),

                // Container(
                //     margin: EdgeInsets.only(
                //         bottom: MediaQuery.of(context).size.width * 0.01),
                //     child: GridView.count(
                //       // crossAxisCount: 2,
                //       // childAspectRatio: 0.95,
                //       // primary: false,
                //       // shrinkWrap: true,
                //
                //       crossAxisCount: _crossAxisCount,
                //       shrinkWrap: true,
                //       childAspectRatio: _aspectRatio,
                //       // childAspectRatio: 0.64,
                //       primary: false,
                //       children: List.generate(categoryModelList.length, (index) {
                //
                //         return new BackGroundTile(subCategoryModel: categoryModelList[index],cellHeight: cellHeight,);
                //
                //         // return  InkWell(
                //         //   child: Container(
                //         //     margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
                //         //     decoration: BoxDecoration(
                //         //         color: ConstantData.whiteColor,
                //         //         borderRadius: BorderRadius.circular(10),
                //         //         boxShadow: [
                //         //           BoxShadow(
                //         //             color: Colors.grey.shade200,
                //         //             blurRadius: 10,
                //         //           )
                //         //         ]),
                //         //     child: Column(
                //         //       crossAxisAlignment: CrossAxisAlignment.center,
                //         //       children: [
                //         //     FutureBuilder<Color>(
                //         //     future: _updatePaletteGenerator(categoryModelList[index].icon), //This function return color from Sqlite DB Asynchronously
                //         //       builder: (BuildContext context, AsyncSnapshot<Color> snapshot) {
                //         //         Color color;
                //         //         if (snapshot.hasData) {
                //         //           color = snapshot.data;
                //         //         }else{
                //         //           color = ConstantData.cellColor;
                //         //         }
                //         //
                //         //         return  Container(
                //         //           height: SizeConfig.safeBlockVertical * 15,
                //         //           width: double.infinity,
                //         //           margin: EdgeInsets.all(8),
                //         //           padding: EdgeInsets.all(30),
                //         //           decoration: BoxDecoration(
                //         //               shape: BoxShape.rectangle,
                //         //               color: color,
                //         //           borderRadius: BorderRadius.all(
                //         //             Radius.circular(10),
                //         //           ),
                //         //         ),
                //         //         child:
                //         //         Image.asset(ConstantData.assetsPath + categoryModelList[index].icon),
                //         //         );
                //         //       }),
                //         //
                //         //
                //         //
                //         //
                //         //
                //         //         Padding(
                //         //           padding: EdgeInsets.only(left: 5, right: 5),
                //         //
                //         //           child: ConstantWidget.getCustomText(categoryModelList[index].name, ConstantData.textColor, 1,
                //         //               TextAlign.center, FontWeight.w800, ConstantData.font18Px),
                //         //
                //         //
                //         //           // child: Text(
                //         //           //   categoryModelList[index].name,
                //         //           //   maxLines: 1,
                //         //           //   overflow: TextOverflow.ellipsis,
                //         //           //   textAlign: TextAlign.center,
                //         //           //   style: TextStyle(
                //         //           //       fontFamily: ConstantData.fontFamily,
                //         //           //       fontWeight: FontWeight.w800,
                //         //           //       fontSize: ConstantData.font18Px,
                //         //           //       color: ConstantData.textColor),
                //         //           // ),
                //         //         ),
                //         //
                //         //         Padding(
                //         //           padding: EdgeInsets.only(top:5,bottom: 10),
                //         //
                //         //           child:   ConstantWidget.getCustomText(categoryModelList[index].desc, ConstantData.textColor, 1,
                //         //             TextAlign.start, FontWeight.w500, 14),
                //         //           // child: Text(
                //         //           //   categoryModelList[index].desc,
                //         //           //   maxLines: 1,
                //         //           //   overflow: TextOverflow.ellipsis,
                //         //           //   style: TextStyle(
                //         //           //     fontFamily: ConstantData.fontFamily,
                //         //           //     fontWeight: FontWeight.w500,
                //         //           //     fontSize: 14,
                //         //           //     color: ConstantData.textColor,
                //         //           //   ),
                //         //           // ),
                //         //         ),
                //         //
                //         //
                //         //
                //         //       ],
                //         //     ),
                //         //   ),
                //         //   onTap: () {
                //         //               Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategoriesPage(categoryModelList[index].id)));
                //         //
                //         //   },
                //         // );
                //
                //         return
                //       }),
                //       // mainAxisSpacing: 10,
                //       // crossAxisSpacing: 10,
                //     )
                //
                //     ),
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

class BackGroundTile extends StatelessWidget {
  final CategoryModel? subCategoryModel;
  final double? cellHeight;

  BackGroundTile({this.subCategoryModel, this.cellHeight});

  static Future<Color> _updatePaletteGenerator(String imageName) async {
    ByteData imageBytes =
        await rootBundle.load(ConstantData.assetsPath + imageName);
    img.Image photo;
    photo = img.decodeImage(imageBytes.buffer.asUint8List())!;
    print("imagesize==${photo.width}");
    Rect region =
        Offset.zero & Size(photo.width.toDouble(), photo.height.toDouble());

    PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(
      AssetImage(ConstantData.assetsPath + imageName),
      size: Size(photo.width.toDouble(), photo.height.toDouble()),
      region: region,
      maximumColorCount: 10,
    );
    return paletteGenerator.colors.first
        .withOpacity(paletteGenerator.colors.first.computeLuminance());
  }

  @override
  Widget build(BuildContext context) {
    double imageSize = ConstantWidget.getPercentSize(cellHeight!, 56);
    double radius = ConstantWidget.getPercentSize(cellHeight!, 5);
    double bottomRemainSize = cellHeight! - imageSize;

    return InkWell(
      child: Container(
        height: cellHeight,
        margin: EdgeInsets.all(ConstantWidget.getPercentSize(cellHeight!, 2)),
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
            FutureBuilder<Color>(
                future: _updatePaletteGenerator(subCategoryModel!.icon),
                //This function return color from Sqlite DB Asynchronously
                builder: (BuildContext context, AsyncSnapshot<Color> snapshot) {
                  Color color;
                  if (snapshot.hasData) {
                    color = snapshot.data!;
                  } else {
                    color = ConstantData.cellColor;
                  }

                  return Container(
                    height: imageSize,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        left: ConstantWidget.getPercentSize(imageSize, 9),
                        right: ConstantWidget.getPercentSize(imageSize, 9),
                        top: ConstantWidget.getPercentSize(imageSize, 9)),
                    padding: EdgeInsets.all(
                        ConstantWidget.getPercentSize(imageSize, 25)),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: color,
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius),
                      ),
                    ),
                    child: Image.asset(
                        ConstantData.assetsPath + subCategoryModel!.icon),
                  );
                }),
            ConstantWidget.getSpace(
                ConstantWidget.getPercentSize(cellHeight!, 5)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ConstantWidget.getPercentSize(cellHeight!, 0.5)),
              child: ConstantWidget.getCustomText(
                  subCategoryModel!.name,
                  ConstantData.textColor1,
                  1,
                  TextAlign.center,
                  FontWeight.w800,
                  ConstantWidget.getPercentSize(bottomRemainSize, 13)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: ConstantWidget.getPercentSize(cellHeight!, 2),
                  horizontal: ConstantWidget.getPercentSize(cellHeight!, 0.5)),

              child: ConstantWidget.getCustomText(
                  subCategoryModel!.desc,
                  ConstantData.textColor,
                  1,
                  TextAlign.start,
                  FontWeight.w500,
                  ConstantWidget.getPercentSize(bottomRemainSize, 12)),
              // child: ConstantWidget.getCustomText(
              //     subCategoryModel.item,
              //     ConstantData.textColor1,
              //     1,
              //     TextAlign.center,
              //     FontWeight.w700,
              //     ConstantWidget.getPercentSize(bottomRemainSize, 13)),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategoriesPage(subCategoryModel!.id)));
      },
    );
  }
}
