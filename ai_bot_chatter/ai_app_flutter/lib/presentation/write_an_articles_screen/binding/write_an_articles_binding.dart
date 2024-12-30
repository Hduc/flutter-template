import '../controller/write_an_articles_controller.dart';
import 'package:get/get.dart';

class WriteAnArticlesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteAnArticlesController());
  }
}
