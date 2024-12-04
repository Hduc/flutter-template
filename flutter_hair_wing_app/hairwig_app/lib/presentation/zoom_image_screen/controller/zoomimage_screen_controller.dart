import 'package:hairwig_app/core/app_export.dart';

class ZoomImageScreenController extends GetxController{


  int currentPage = 0;

  onPageChange(int initialPage) {
    currentPage = initialPage;
    update();
  }
}