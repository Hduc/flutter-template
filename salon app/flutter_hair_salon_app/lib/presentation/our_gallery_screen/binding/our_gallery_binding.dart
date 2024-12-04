import '../controller/our_gallery_controller.dart';
import 'package:get/get.dart';

class OurGalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OurGalleryController());
  }
}
