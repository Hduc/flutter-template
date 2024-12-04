import '../controller/write_an_articles_one_controller.dart';
import 'package:get/get.dart';

class WriteAnArticlesOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteAnArticlesOneController());
  }
}
