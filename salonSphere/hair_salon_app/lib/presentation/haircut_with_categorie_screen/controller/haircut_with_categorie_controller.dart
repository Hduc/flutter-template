import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/haircut_with_categorie_screen/models/haircut_with_categorie_model.dart';

class HaircutWithCategorieController extends GetxController {
  Rx<HaircutWithCategorieModel> haircutWithCategorieModelObj =
      HaircutWithCategorieModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
