import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/home_screen/models/home_model.dart';
// ignore: unused_import
import 'package:ai_app_flutter/widgets/custom_bottom_bar.dart';

class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
