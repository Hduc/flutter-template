import 'package:carwash_app/core/app_export.dart';import 'package:carwash_app/presentation/popular_centers_screen/models/popular_centers_model.dart';class PopularCentersController extends GetxController {Rx<PopularCentersModel> popularCentersModelObj = PopularCentersModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
