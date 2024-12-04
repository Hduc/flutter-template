import '../controller/explore_one_controller.dart';
import 'package:get/get.dart';

class ExploreOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreOneController());
  }
}
