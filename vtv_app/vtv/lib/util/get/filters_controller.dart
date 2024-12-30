import 'package:get/get.dart';

class FiltersController extends GetxController {
  RxInt categoriesPos = 0.obs;
  RxInt generalPos = 0.obs;
  RxInt timePos = 0.obs;
  RxInt sortPos = 0.obs;
  RxBool isDownloadOn = true.obs;
  RxBool isKidsSafeNModeOn = true.obs;

  setTimePosition(int string) {
    timePos.value = string;
  }

  setSortPosition(int string) {
    sortPos.value = string;
  }

  setCategoriesPosition(int string) {
    categoriesPos.value = string;
  }

  setGeneralPosition(int string) {
    generalPos.value = string;
  }
}
