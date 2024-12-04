import '../controller/book_appoiment_two_controller.dart';
import 'package:get/get.dart';

class BookAppoimentTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookAppoimentTwoController());
  }
}
