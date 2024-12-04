import 'package:carwash_app/core/app_export.dart';import 'package:carwash_app/presentation/home_page/models/home_model.dart';class HomeController extends GetxController {HomeController(this.homeModelObj);

Rx<HomeModel> homeModelObj;

Rx<int> silderIndex = 0.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
