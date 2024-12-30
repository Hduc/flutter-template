import '../controller/description_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DescriptionScreen.
///
/// This class ensures that the DescriptionController is created when the
/// DescriptionScreen is first loaded.
class DescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DescriptionController());
  }
}
