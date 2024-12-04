import '../controller/book_appoiment_controller.dart';
import 'package:get/get.dart';

class BookAppoimentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookAppoimentController());
  }
}
