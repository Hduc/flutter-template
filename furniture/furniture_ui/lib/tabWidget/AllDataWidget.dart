import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/CategoryModel.dart';
import 'package:furniture_ui/model/SubCategoryModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
import 'package:furniture_ui/widget/ProductDetailPage.dart';

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

    subCategoryModelList = DataFile.getSubCategoryListFromId(_selectedCategory);
    categoryModelList = DataFile.getDataCategoryModel();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.03;

    return Scaffold(
      backgroundColor: ConstantData.bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstantData.bgColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          S.of(context).categories,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontFamily: "SFProText",
              fontWeight: FontWeight.bold,
              color: ConstantData.textColor),
        ),
      ),
      body: ListView(
        primary: true,
        shrinkWrap: false,
        children: [
          Container(
            height: 60,
            child: ListView.builder(
                shrinkWrap: true,
                // primary: false,
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
                            child: Text(
                              categoryModelList[index].name!,
                              style: TextStyle(
                                fontFamily: "SFProText",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: (_selectedCategory == index)
                                    ? ConstantData.whiteColor
                                    : ConstantData.textColor,
                              ),
                            )),
                      ),
                    ),
                    onTap: () {
                      _selectedCategory = index;
                      subCategoryModelList =
                          DataFile.getSubCategoryListFromId(_selectedCategory);
                      setState(() {});
                    },
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: MediaQuery.of(context).size.width * 0.01),
            child: MasonryGridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: subCategoryModelList.length,
              itemBuilder: (BuildContext context, int index) =>
                  BackGroundTile(subCategoryModel: subCategoryModelList[index]),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class BackGroundTile extends StatelessWidget {
  final SubCategoryModel subCategoryModel;

  BackGroundTile({required this.subCategoryModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 140,
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
                      (subCategoryModel.isFav == 1)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: (subCategoryModel.isFav == 1)
                          ? Colors.red
                          : ConstantData.whiteColor,
                      size: 20,
                    ),
                  )),
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
