import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/buy_stock_option_screen/models/buy_stock_option_model.dart';class BuyStockOptionController extends GetxController {Rx<BuyStockOptionModel> buyStockOptionModelObj = BuyStockOptionModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
