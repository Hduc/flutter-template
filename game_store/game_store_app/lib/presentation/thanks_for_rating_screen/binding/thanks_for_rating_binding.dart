import '../controller/thanks_for_rating_controller.dart';
import 'package:get/get.dart';

class ThanksForRatingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThanksForRatingController());
  }
}
