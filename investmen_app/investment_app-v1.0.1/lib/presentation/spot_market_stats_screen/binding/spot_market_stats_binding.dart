import '../controller/spot_market_stats_controller.dart';
import 'package:get/get.dart';

class SpotMarketStatsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpotMarketStatsController());
  }
}
