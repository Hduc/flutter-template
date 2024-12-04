import '../controller/academic_writer_chat_controller.dart';
import 'package:get/get.dart';

class AcademicWriterChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AcademicWriterChatController());
  }
}
