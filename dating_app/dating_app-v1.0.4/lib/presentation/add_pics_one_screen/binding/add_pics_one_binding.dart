import '../controller/add_pics_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPicsOneScreen.
///
/// This class ensures that the AddPicsOneController is created when the
/// AddPicsOneScreen is first loaded.
class AddPicsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPicsOneController());
  }
}
