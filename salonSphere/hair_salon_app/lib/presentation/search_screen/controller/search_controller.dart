import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/search_screen/models/search_model.dart';

class SearchScreenController extends GetxController {
  Rx<SearchModel> searchModelObj = SearchModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
