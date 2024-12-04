import 'package:flutter/cupertino.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/model/AddressModel.dart';
import 'package:furniture_ui/model/CardModel.dart';
import 'package:furniture_ui/model/CategoryModel.dart';
import 'package:furniture_ui/model/DiscModel.dart';
import 'package:furniture_ui/model/IntroModel.dart';
import 'package:furniture_ui/model/PaymentModel.dart';
import 'package:furniture_ui/model/ProfileModel.dart';
import 'package:furniture_ui/model/ReviewModel.dart';
import 'package:furniture_ui/model/SubCategoryModel.dart';
import 'package:furniture_ui/model/VouchersModel.dart';

class DataFile {
  static List<IntroModel> getIntroModel(BuildContext context) {
    List<IntroModel> introList = [];

    IntroModel mainModel = new IntroModel();
    mainModel.id = 1;
    mainModel.name = S.of(context).officeFurniture;
    mainModel.image = "assets/images/icon_.png";
    // mainModel.image = "assets/images/office.png";
    mainModel.desc = S.of(context).introText;
    introList.add(mainModel);

    mainModel = new IntroModel();
    mainModel.id = 2;
    mainModel.name = S.of(context).relaxingFurniture;
    mainModel.image = "assets/images/icon_2.png";
    // mainModel.image = "assets/images/realx.png";
    mainModel.desc = S.of(context).introText;
    introList.add(mainModel);

    mainModel = new IntroModel();
    mainModel.id = 3;
    mainModel.name = S.of(context).homeFurniture;
    mainModel.image = "assets/images/icon_3.png";
    // mainModel.image = "assets/images/home_furniture.png";
    mainModel.desc = S.of(context).introText;
    introList.add(mainModel);

    return introList;
  }

  static List<DiscModel> getDiscModel() {
    List<DiscModel> introList = [];

    DiscModel mainModel = new DiscModel();
    mainModel.id = 1;
    mainModel.name = "Sofa";
    mainModel.image = "assets/images/sofa.jpg";
    mainModel.offText = "upto 50% off*";
    mainModel.desc = "All furniture discount";
    introList.add(mainModel);

    mainModel = new DiscModel();
    mainModel.id = 2;
    mainModel.name = "Sofa";
    mainModel.image = "assets/images/sofa_1.jpg";
    mainModel.desc = "All furniture discount";
    mainModel.offText = "upto 20% off*";
    introList.add(mainModel);

    return introList;
  }

  static List<CategoryModel> getCategoryModel() {
    List<CategoryModel> introList = [];

    CategoryModel mainModel = new CategoryModel();
    mainModel.id = 1;
    mainModel.name = "Chair";
    mainModel.icon = "assets/images/chair.png";
    mainModel.image = "assets/images/chair_1.jpg";
    mainModel.desc = "4 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 2;
    mainModel.name = "Sofa";
    mainModel.icon = "assets/images/sofa_category.png";
    mainModel.image = "assets/images/sofa.jpg";
    mainModel.desc = "5 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 3;
    mainModel.name = "Dinner";
    mainModel.icon = "assets/images/dining_table.png";
    mainModel.image = "assets/images/dining_table_1.jpg";
    mainModel.desc = "5 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 4;
    mainModel.name = "Drawers";
    mainModel.icon = "assets/images/drawers.png";
    mainModel.image = "assets/images/drawers_1.jpg";
    mainModel.desc = "5 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 5;
    mainModel.name = "Light";
    mainModel.icon = "assets/images/ceiling_lamp.png";
    mainModel.image = "assets/images/ceiling_light_1.jpg";
    mainModel.desc = "5 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 6;
    mainModel.name = "Curtains";
    mainModel.icon = "assets/images/curtains.png";
    mainModel.image = "assets/images/curtains_1.jpg";
    mainModel.desc = "5 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 7;
    mainModel.name = "Lamp";
    mainModel.icon = "assets/images/table_lamp.png";
    mainModel.image = "assets/images/lamp_1.jpg";
    mainModel.desc = "4 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 8;
    mainModel.name = "Wood";
    mainModel.icon = "assets/images/deforest.png";
    mainModel.image = "assets/images/light_wood.jpg";
    mainModel.desc = "4 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 9;
    mainModel.name = "Plates";
    mainModel.icon = "assets/images/curry.png";
    mainModel.image = "assets/images/light_wood.jpg";
    mainModel.desc = "4 Items";

    introList.add(mainModel);

    return introList;
  }

  static List<CategoryModel> getDataCategoryModel() {
    List<CategoryModel> introList = [];

    CategoryModel mainModel = new CategoryModel();
    mainModel.id = 0;
    mainModel.name = "All";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 1;
    mainModel.name = "Chair";
    mainModel.icon = "assets/images/chair.png";
    mainModel.image = "assets/images/chair_1.jpg";
    mainModel.desc = "4 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 2;
    mainModel.name = "Sofa";
    mainModel.icon = "assets/images/sofa_category.png";
    mainModel.image = "assets/images/sofa.jpg";
    mainModel.desc = "5 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 3;
    mainModel.name = "Dinner";
    mainModel.icon = "assets/images/dining_table.png";
    mainModel.image = "assets/images/dining_table_1.jpg";
    mainModel.desc = "5 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 4;
    mainModel.name = "Drawers";
    mainModel.icon = "assets/images/drawers.png";
    mainModel.image = "assets/images/drawers_1.jpg";
    mainModel.desc = "5 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 5;
    mainModel.name = "Light";
    mainModel.icon = "assets/images/ceiling_lamp.png";
    mainModel.image = "assets/images/ceiling_light_1.jpg";
    mainModel.desc = "5 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 6;
    mainModel.name = "Curtains";
    mainModel.icon = "assets/images/curtains.png";
    mainModel.image = "assets/images/curtains_1.jpg";
    mainModel.desc = "5 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 7;
    mainModel.name = "Lamp";
    mainModel.icon = "assets/images/table_lamp.png";
    mainModel.image = "assets/images/lamp_1.jpg";
    mainModel.desc = "4 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 8;
    mainModel.name = "Wood";
    mainModel.icon = "assets/images/deforest.png";
    mainModel.image = "assets/images/light_wood.jpg";
    mainModel.desc = "4 Items";
    introList.add(mainModel);

    mainModel = new CategoryModel();
    mainModel.id = 9;
    mainModel.name = "Plates";
    mainModel.icon = "assets/images/curry.png";
    mainModel.image = "assets/images/light_wood.jpg";
    mainModel.desc = "4 Items";

    introList.add(mainModel);

    return introList;
  }

  static String getTitleFromCat(int id) {
    List<CategoryModel> allList = getCategoryModel();

    String title='';

    for (int i = 0; i < allList.length; i++) {
      if (allList[i].id == id) {
        title = allList[i].name!;
      }
    }

    return title;
  }

  static List<SubCategoryModel> getSubCategoryListFromId(int id) {
    List<SubCategoryModel> subList = [];
    List<SubCategoryModel> allList = getSubCategoryModel();

    if (id == 0) {
      subList.addAll(allList);
    } else {
      for (int i = 0; i < allList.length; i++) {
        if (allList[i].catId == id) {
          subList.add(allList[i]);
        }
      }
    }

    return subList;
  }

  static List<SubCategoryModel> getFavList() {
    List<SubCategoryModel> subList = [];
    List<SubCategoryModel> allList = getSubCategoryModel();

    for (int i = 0; i < allList.length; i++) {
      if (allList[i].isFav == 1) {
        subList.add(allList[i]);
      }
    }

    return subList;
  }

  static List<String> getSearchList() {
    List<String> subList = [];
    List<CategoryModel> allList = getCategoryModel();

    for (int i = 0; i < allList.length; i++) {
      subList.add(allList[i].name!);
    }

    return subList;
  }

  static List<String> getFilterList(bool isLess) {
    List<String> subList = [];
    List<CategoryModel> allList = getCategoryModel();

    for (int i = 0; i < allList.length; i++) {
      if (isLess) {
        if (subList.length < 5) {
          subList.add(allList[i].name!);
        }
      } else {
        subList.add(allList[i].name!);
      }
    }
    if (isLess) {
      subList.add("More");
    } else {
      subList.add("Less");
    }

    return subList;
  }

  static List<String> getMaterialList() {
    List<String> subList = [];
    subList.add("Canvas");
    subList.add("Wooden");
    subList.add("Leather");
    subList.add("Linen");
    subList.add("Tweed");

    return subList;
  }

  static List<SubCategoryModel> getSubCategoryModel() {
    List<SubCategoryModel> subList = [];

    SubCategoryModel mainModel = new SubCategoryModel();
    mainModel.catId = 1;
    mainModel.id = 1;
    mainModel.name = "Chair";
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.image = "assets/images/chair_1.jpg";
    mainModel.price = "\$35";
    mainModel.review = 4;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 1;
    mainModel.isFav = 1;
    mainModel.id = 2;
    mainModel.name = "Chair";
    mainModel.reviewDesc = "(258 reviews)";
    mainModel.review = 4;
    mainModel.image = "assets/images/ref_1.png";
    mainModel.price = "\$35";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 1;
    mainModel.id = 3;
    mainModel.name = "Chair";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.image = "assets/images/ref_2.png";
    mainModel.price = "\$35";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 1;
    mainModel.isFav = 1;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.id = 4;
    mainModel.name = "Chair";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/chair_4.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 2;
    mainModel.id = 1;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.name = "Sofa";
    mainModel.image = "assets/images/sofa_1.jpg";
    mainModel.price = "\$35";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 2;
    mainModel.id = 2;
    mainModel.isFav = 1;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Sofa";
    mainModel.image = "assets/images/blue_2.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 2;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.id = 3;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Sofa";
    mainModel.image = "assets/images/blue_3.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 2;
    mainModel.id = 4;
    mainModel.name = "Sofa";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.isFav = 1;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/offwhitesofa.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    // mainModel = new SubCategoryModel();
    // mainModel.catId = 3;
    // mainModel.id = 1;
    // mainModel.name = "Dining Table";
    // mainModel.image = "assets/images/dining_table_1.jpg";
    // mainModel.price = "\$35";
    // mainModel.review = 3;
    // mainModel.reviewDesc = "(123 reviews)";
    // mainModel.categoryName = "Furniture,Accessories";
    // mainModel.tags = "#Furnitures,#Chair,#Table";
    // mainModel.desc =
    //     "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    // subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 3;
    mainModel.isFav = 1;
    mainModel.id = 2;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.name = "Dining Table";
    mainModel.image = "assets/images/dining_table_2.jpg";
    mainModel.price = "\$35";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 3;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.id = 3;
    mainModel.name = "Dining Table";
    mainModel.image = "assets/images/dining_table_3.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 3;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.id = 4;
    mainModel.isFav = 1;
    mainModel.name = "Dining Table";
    mainModel.image = "assets/images/dining_table_4.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.catId = 3;
    mainModel.id = 5;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.name = "Dining Table";
    mainModel.image = "assets/images/diningtable.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 4;
    mainModel.id = 1;
    mainModel.isFav = 1;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.name = "Drawers";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/drawers_1.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 4;
    mainModel.id = 2;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.name = "Drawers";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/drawers_2.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 4;
    mainModel.id = 3;
    mainModel.name = "Drawers";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.isFav = 1;
    mainModel.image = "assets/images/drawers_3.jpg";
    mainModel.price = "\$35";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 4;
    mainModel.id = 4;
    mainModel.name = "Drawers";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";

    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/red_2.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 4;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.id = 5;
    mainModel.name = "Drawers";
    mainModel.image = "assets/images/red_3.jpg";
    mainModel.price = "\$35";
    mainModel.isFav = 1;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.catId = 5;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.id = 1;
    mainModel.name = "Light";
    mainModel.image = "assets/images/ceiling_light_1.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 5;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.id = 2;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.name = "Light";
    mainModel.image = "assets/images/ceiling_light_2.jpg";
    mainModel.price = "\$35";
    mainModel.isFav = 1;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 5;
    mainModel.id = 3;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Light";
    mainModel.image = "assets/images/ceiling_light_3.jpg";
    mainModel.price = "\$35";
    mainModel.isFav = 1;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 5;
    mainModel.id = 4;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Light";
    mainModel.image = "assets/images/ceiling_light_4.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    // mainModel = new SubCategoryModel();
    // mainModel.catId = 5;
    // mainModel.review = 3;
    // mainModel.reviewDesc = "(123 reviews)";
    // mainModel.id = 5;
    // mainModel.name = "Light";
    // mainModel.categoryName = "Furniture,Accessories";
    // mainModel.tags = "#Furnitures,#Chair,#Table";
    // mainModel.image = "assets/images/ceiling_light_5.jpg";
    // mainModel.price = "\$35";
    // mainModel.isFav = 1;
    // mainModel.desc =
    //     "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    // subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 6;
    mainModel.id = 1;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Curtains";
    mainModel.image = "assets/images/curtains_1.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 6;
    mainModel.id = 2;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.name = "Curtains";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/curtains_2.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 6;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.id = 3;
    mainModel.name = "Curtains";
    mainModel.image = "assets/images/curtains_3.jpg";
    mainModel.price = "\$35";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.isFav = 1;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 6;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.id = 4;
    mainModel.name = "Curtains";
    mainModel.image = "assets/images/curtains_4.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 6;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.id = 5;
    mainModel.isFav = 1;
    mainModel.name = "Curtains";
    mainModel.image = "assets/images/curtains_5.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 7;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.id = 1;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.name = "Lamp";
    mainModel.image = "assets/images/lamp_1.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);
    //
    // mainModel = new SubCategoryModel();
    // mainModel.catId = 7;
    // mainModel.categoryName = "Furniture,Accessories";
    // mainModel.tags = "#Furnitures,#Chair,#Table";
    // mainModel.id = 2;
    // mainModel.name = "Lamp";
    // mainModel.image = "assets/images/lamp_2.jpg";
    // mainModel.price = "\$35";
    // mainModel.review = 3;
    // mainModel.reviewDesc = "(123 reviews)";
    // mainModel.isFav = 1;
    // mainModel.desc =
    //     "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    // subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 7;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.id = 3;
    mainModel.name = "Lamp";
    mainModel.image = "assets/images/lamp_3.jpg";
    mainModel.price = "\$35";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 7;
    mainModel.id = 4;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.isFav = 1;
    mainModel.name = "Lamp";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.image = "assets/images/lamp_4.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    // mainModel = new SubCategoryModel();
    // mainModel.catId = 8;
    // mainModel.id = 1;
    // mainModel.categoryName = "Furniture,Accessories";
    // mainModel.tags = "#Furnitures,#Chair,#Table";
    // mainModel.name = "Wood";
    // mainModel.image = "assets/images/light_wood.jpg";
    // mainModel.price = "\$35";
    // mainModel.review = 3;
    // mainModel.reviewDesc = "(123 reviews)";
    // mainModel.desc =
    //     "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    // subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 8;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.id = 2;
    mainModel.name = "Wood";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.image = "assets/images/light_wood_1.jpg";
    mainModel.price = "\$35";
    mainModel.isFav = 1;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 8;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.id = 3;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Wood";
    mainModel.image = "assets/images/light_wood_3.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 8;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.id = 4;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Wood";
    mainModel.image = "assets/images/light_wood_4.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 9;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.id = 1;
    mainModel.name = "Plates";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/wall_plates_1.jpg";
    mainModel.price = "\$35";
    mainModel.isFav = 1;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 9;
    mainModel.id = 2;
    mainModel.name = "Plates";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/wall_plates_2.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 9;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.id = 3;
    mainModel.name = "Plates";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/wall_plates_3.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 9;
    mainModel.id = 4;
    mainModel.name = "Plates";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/wall_plates_4.jpg";
    mainModel.price = "\$35";
    mainModel.isFav = 1;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    return subList;
  }

  static List<SubCategoryModel> getCartModel() {
    List<SubCategoryModel> subList = [];

    SubCategoryModel mainModel = new SubCategoryModel();
    mainModel.catId = 1;
    mainModel.id = 1;
    mainModel.name = "Chair";
    mainModel.image = "assets/images/chair_1.jpg";
    mainModel.quantity = 1;
    mainModel.colorPosition = 1;
    mainModel.price = "\$35";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 5;
    mainModel.id = 1;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Light";
    mainModel.quantity = 2;
    mainModel.image = "assets/images/ceiling_light_1.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 6;
    mainModel.id = 3;
    mainModel.quantity = 3;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Curtains";
    mainModel.image = "assets/images/curtains_3.jpg";
    mainModel.price = "\$35";
    mainModel.isFav = 1;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    return subList;
  }

  static List<SubCategoryModel> getTrendingModel() {
    List<SubCategoryModel> introList = [];

    // SubCategoryModel mainModel = new SubCategoryModel();
    // mainModel.id = 1;
    // mainModel.name = "Light woods by woodsworth";
    // mainModel.image = "assets/images/light_wood.jpg";
    // mainModel.price = "\$35";
    // mainModel.catId = 8;
    // mainModel.review = 3;
    // mainModel.reviewDesc = "(123 reviews)";
    // mainModel.categoryName = "Furniture,Accessories";
    // mainModel.tags = "#Furnitures,#Chair,#Table";
    // mainModel.desc =
    //     "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    // introList.add(mainModel);


    SubCategoryModel   mainModel = new SubCategoryModel();
    mainModel.id = 4;
    mainModel.name = "Curtains";
    mainModel.image = "assets/images/curtains_1.jpg";
    mainModel.price = "\$75";
    mainModel.catId = 6;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.desc =
    "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    introList.add(mainModel);



     mainModel = new SubCategoryModel();
    mainModel.id = 2;
    mainModel.name = "Crafted table Lamps";
    mainModel.image = "assets/images/lamp_1.jpg";
    mainModel.catId = 7;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    introList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.id = 3;
    mainModel.name = "Wall Plates";
    mainModel.image = "assets/images/wall_plates_1.jpg";
    mainModel.price = "\$68";
    mainModel.catId = 9;
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.isFav = 1;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    introList.add(mainModel);


    mainModel = new SubCategoryModel();
    mainModel.id = 5;
    mainModel.name = "Ceiling light";
    mainModel.image = "assets/images/ceiling_light_1.jpg";
    mainModel.price = "\$35";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.catId = 5;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";

    introList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.id = 6;
    mainModel.name = "Chairs";
    mainModel.review = 3;
    mainModel.reviewDesc = "(123 reviews)";
    mainModel.image = "assets/images/chair_1.jpg";
    mainModel.price = "\$18";
    mainModel.catId = 1;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    introList.add(mainModel);

    return introList;
  }

  static List<AddressModel> getAddressList() {
    List<AddressModel> subCatList = [];

    AddressModel mainModel = new AddressModel();
    // mainModel.id = 1;
    // mainModel.name = "Sophia Benson";
    // mainModel.phoneNumber = "+1(368)68 000 068";
    // mainModel.location = "3012 Broddus Avenue Saint Joseph,56327";
    // mainModel.type = "Home";
    // subCatList.add(mainModel);

    mainModel.id = 1;
    mainModel.name = "Chloe B Bird";
    mainModel.phoneNumber = "+1(368)68 000 068";
    mainModel.location = "87  Great North Road,ALTON";
    mainModel.type = "Home";
    subCatList.add(mainModel);

    mainModel = new AddressModel();
    mainModel.id = 2;
    mainModel.name = "Rich P. Jeffery";
    mainModel.phoneNumber = "+1(368)68 000 068";
    mainModel.location = "4310 Clover Drive Colorado Springs, CO 80903";
    mainModel.type = "Company";
    subCatList.add(mainModel);

    return subCatList;
  }


  static ProfileModel getProfileModel() {
    ProfileModel mainModel = new ProfileModel();
    mainModel.email = "chloe_bird@gamil.com";
    mainModel.name = "Chloe B Bird";
    mainModel.image = "assets/images/hugh.png";
    return mainModel;
  }
  
  static List<PaymentModel> getPaymentList() {
    List<PaymentModel> subCatList = [];

    PaymentModel mainModel = new PaymentModel();
    mainModel.id = 1;
    mainModel.name = "Cash";
    mainModel.image = "assets/images/money.png";

    subCatList.add(mainModel);

    mainModel = new PaymentModel();
    mainModel.id = 2;
    mainModel.name = "Credit Card";
    mainModel.image = "assets/images/credit-card.png";
    subCatList.add(mainModel);

    mainModel = new PaymentModel();
    mainModel.id = 3;
    mainModel.name = "Net Banking";
    mainModel.image = "assets/images/bank.png";
    subCatList.add(mainModel);

    return subCatList;
  }

  static List<SubCategoryModel> getMyOrderList() {
    List<SubCategoryModel> subList = [];

    SubCategoryModel mainModel = new SubCategoryModel();
    mainModel.catId = 8;
    mainModel.id = 3;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Wood";
    mainModel.image = "assets/images/light_wood_3.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 8;
    mainModel.id = 4;
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.name = "Wood";
    mainModel.image = "assets/images/light_wood_4.jpg";
    mainModel.price = "\$35";
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);

    mainModel = new SubCategoryModel();
    mainModel.catId = 9;
    mainModel.id = 1;
    mainModel.name = "Plates";
    mainModel.categoryName = "Furniture,Accessories";
    mainModel.tags = "#Furnitures,#Chair,#Table";
    mainModel.image = "assets/images/wall_plates_1.jpg";
    mainModel.price = "\$35";
    mainModel.isFav = 1;
    mainModel.desc =
        "Amberville is a range of Hand-crafted Colonial Furniture inspired by Mid-Century Designs.";
    subList.add(mainModel);
    return subList;
  }

  static List<CardModel> getCardList() {
    List<CardModel> subCatList = [];

    CardModel mainModel = new CardModel();
    mainModel.id = 1;
    mainModel.email = "chloe_bird@gamil.com";
    mainModel.cardNo = "2342 22** **** **00";
    mainModel.cVV = "***";
    mainModel.expDate = "06/23";
    mainModel.name = "Claudla T.Reyes";
    mainModel.image = "assets/images/visa.png";

    subCatList.add(mainModel);

    mainModel = new CardModel();
    mainModel.id = 2;
    mainModel.email = "chloe_bird@gamil.com";
    mainModel.cardNo = "2342 22** **** **00";
    mainModel.name = "Claudla T.Reyes";
    mainModel.cVV = "***";
    mainModel.expDate = "06/23";
    mainModel.image = "assets/images/mastercard.png";
    subCatList.add(mainModel);

    return subCatList;
  }

  

  static List<VouchersModel> getVouchersList() {
    List<VouchersModel> subCatList = [];

    VouchersModel mainModel = new VouchersModel();
    mainModel.id = 1;
    mainModel.name = "Black Fries Day";
    mainModel.desc = "All black fries 50% off*";
    mainModel.code = "BKD65R";
    mainModel.date = "25";
    mainModel.month = "Mar";
    subCatList.add(mainModel);

    mainModel = new VouchersModel();
    mainModel.id = 2;
    mainModel.name = "Weekend specials";
    mainModel.desc = "All black sale 35% off*";
    mainModel.code = "FEB32#JJ";
    mainModel.date = "28";
    mainModel.month = "Feb";
    subCatList.add(mainModel);

    mainModel = new VouchersModel();
    mainModel.id = 3;
    mainModel.name = "Specials Sale.!";
    mainModel.desc = "All black sale 35% off*";
    mainModel.code = "BMK56E";
    mainModel.date = "26";
    mainModel.month = "Feb";
    subCatList.add(mainModel);

    return subCatList;
  }

  static List<ReviewModel> getReviewList() {
    List<ReviewModel> subCatList = [];

    ReviewModel mainModel = new ReviewModel();
    mainModel.id = 1;
    mainModel.name = "Soedirman";
    mainModel.image = "assets/images/hugh.png";
    mainModel.desc =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
    mainModel.review = 4;
    subCatList.add(mainModel);

    mainModel = new ReviewModel();
    mainModel.id = 2;
    mainModel.name = "Aisyah";
    mainModel.image = "assets/images/hugh.png";
    mainModel.desc =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
    mainModel.review = 3;
    subCatList.add(mainModel);

    mainModel = new ReviewModel();
    mainModel.id = 3;
    mainModel.image = "assets/images/hugh.png";
    mainModel.name = "Jock Boerden";
    mainModel.desc =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
    mainModel.review = 2;
    subCatList.add(mainModel);
    return subCatList;
  }
}
