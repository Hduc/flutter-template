import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/history_empty_screen_page/models/history_empty_screen_model.dart';

/// A controller class for the HistoryEmptyScreenPage.
///
/// This class manages the state of the HistoryEmptyScreenPage, including the
/// current historyEmptyScreenModelObj
class HistoryEmptyScreenController extends GetxController {
  HistoryEmptyScreenController(this.historyEmptyScreenModelObj);

  Rx<HistoryEmptyScreenModel> historyEmptyScreenModelObj;
}
