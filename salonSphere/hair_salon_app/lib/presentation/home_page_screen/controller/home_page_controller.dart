import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/home_page_screen/models/home_page_model.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../models/near_product_model.dart';

class HomePageController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomePageModel> homePageModelObj = HomePageModel().obs;

  RxInt selectedIndex = 0.obs;

  RxList<String> nearCateList = ["All", "Haircut", "Make up", "Mani cure"].obs;

  RxInt nearIndex = 0.obs;

  RxList<CategoryModel> categroryList = RxList<CategoryModel>([
    CategoryModel("cat1.png", "Haircut"),
    CategoryModel("cat2.png", "Make Up"),
    CategoryModel("cat3.png", "Massage"),
    CategoryModel("cat4.png", "Manicure"),
    CategoryModel("cat5.png", "Haircolor"),
    CategoryModel("cat6.png", "Shaving"),
    CategoryModel("cat7.png", "Hairwash"),
    CategoryModel("cat8.png", "Skin Care"),
    CategoryModel("cat9.png", "Hair care"),
    CategoryModel("cat10.png", "Waxing"),
    CategoryModel("cat11.png", "Facial"),
    CategoryModel("cat12.png", "Pedicure"),
  ]);

  RxList<NearProductModel> nearProductList = [
    NearProductModel("location1.png", "Silk & Scissors",
        "Ln Singapore", "1.2km"),
    NearProductModel("location2.png", "Tress Trends",
        "Ln Singapore", "1.2km"),
  ].obs;

  RxList<String> specialOfferList = ["40% Discount", "25% Discount"].obs;
}
