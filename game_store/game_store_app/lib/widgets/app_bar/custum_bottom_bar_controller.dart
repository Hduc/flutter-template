import 'package:game_store_app/core/app_export.dart';

class CustomBottomBarController extends GetxController{
  int selectedIndex = 0;
  getIndex(int index){
    selectedIndex = index;
    update();
  }
}