import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/review_summary_screen/models/review_summary_model.dart';/// A controller class for the ReviewSummaryScreen.
///
/// This class manages the state of the ReviewSummaryScreen, including the
/// current reviewSummaryModelObj
class ReviewSummaryController extends GetxController {Rx<ReviewSummaryModel> reviewSummaryModelObj = ReviewSummaryModel().obs;

Rx<bool> isCheckbox = false.obs;

Rx<bool> isCheckbox1 = false.obs;

Rx<bool> isCheckbox2 = false.obs;

Rx<bool> isCheckbox3 = false.obs;

 }
