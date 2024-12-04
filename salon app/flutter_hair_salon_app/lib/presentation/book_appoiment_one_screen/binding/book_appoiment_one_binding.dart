import '../controller/book_appoiment_one_controller.dart';
import 'package:get/get.dart';

class BookAppoimentOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookAppoimentOneController());
  }
}
