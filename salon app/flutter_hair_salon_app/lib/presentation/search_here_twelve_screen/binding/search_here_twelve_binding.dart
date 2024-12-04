import '../controller/search_here_twelve_controller.dart';
import 'package:get/get.dart';

class SearchHereTwelveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchHereTwelveController());
  }
}
