import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/search_result_screen/models/search_result_model.dart';

class SearchResultController extends GetxController {
  Rx<SearchResultModel> searchResultModelObj = SearchResultModel().obs;

  RxBool listNull = true.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
