import '../controller/academic_writer_controller.dart';
import 'package:get/get.dart';

class AcademicWriterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AcademicWriterController());
  }
}
