import 'package:get/get.dart';

import '../../search_result_screen/controller/search_result_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultController());
  }
}
