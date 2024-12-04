import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/SubCategoryModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';

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

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,
            title: Text(S.of(context).favourite,
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
            child: MasonryGridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: favList.length,
              itemBuilder: (BuildContext context, int index) =>
                  new BackGroundTile(subCategoryModel: favList[index]),
              // staggeredTileBuilder: (int index) =>
              //     new StaggeredTile.count(2, index.isEven ? 2.5 : 3),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
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

  BackGroundTile({required this.subCategoryModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: ExactAssetImage(subCategoryModel.image!),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                    )),
              ),
              flex: 1,
            ),
            Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  subCategoryModel.desc!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "SFProText",
                    fontWeight: FontWeight.w500,
                    fontSize: 8,
                    color: ConstantData.textColor,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 3),
                child: Text(
                  subCategoryModel.price!,
                  style: TextStyle(
                    fontFamily: "SFProText",
                    fontWeight: FontWeight.w800,
                    fontSize: 10,
                    color: ConstantData.textColor,
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
