import '../controller/add_pics_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPicsScreen.
///
/// This class ensures that the AddPicsController is created when the
/// AddPicsScreen is first loaded.
class AddPicsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPicsController());
  }
}
