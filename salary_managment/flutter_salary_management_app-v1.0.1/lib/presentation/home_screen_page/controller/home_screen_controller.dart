import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/home_screen_page/models/home_screen_model.dart';

/// A controller class for the HomeScreenPage.
///
/// This class manages the state of the HomeScreenPage, including the
/// current homeScreenModelObj
class HomeScreenController extends GetxController {
  HomeScreenController(this.homeScreenModelObj);

  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), 1 * Random().nextDouble());
  });
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), 2 * Random().nextDouble());
  });
  Rx<HomeScreenModel> homeScreenModelObj;
}
