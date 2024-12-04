

import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/home_page/controller/home_controller.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}