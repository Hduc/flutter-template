import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/spot_market_stats_screen/models/spot_market_stats_model.dart';class SpotMarketStatsController extends GetxController {Rx<SpotMarketStatsModel> spotMarketStatsModelObj = SpotMarketStatsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
