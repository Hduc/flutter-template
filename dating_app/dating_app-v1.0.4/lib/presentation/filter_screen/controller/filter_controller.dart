import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/filter_screen/models/filter_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FilterScreen.
///
/// This class manages the state of the FilterScreen, including the
/// current filterModelObj
class FilterController extends GetxController {
  Rx<FilterModel> filterModelObj = FilterModel().obs;
  double min = 0, max = 20;
  double minAge = 18, maxAge = 30;

  RangeValues? currentDistanceValue  = RangeValues(0.00, 20.00);
  RangeValues distanceRangeValues = RangeValues(0, 10);
  RangeValues ageRangeValues = RangeValues(18, 22);


  onChanged(RangeValues values) {

    distanceRangeValues = values;
  update();
  }
  onChangeEnd(RangeValues values) {
    if (values.end == max) {
      max = max * 1.5;
      update();
    }
    else if (max > 20 && values.end < max / 2) {
        max = max / 1.5;
        update();
    }
    update();
  }
  onChangedAge(RangeValues values) {

    ageRangeValues = values;
    update();
  }
  onChangeEndAge(RangeValues values) {
    if (values.end == maxAge) {
      maxAge = maxAge * 1.5;
      update();
    }
    else if (maxAge > 30 && values.end < maxAge / 2) {
      maxAge = maxAge / 1.5;
      update();
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
