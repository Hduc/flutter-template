import '../controller/plagiarism_checker_controller.dart';
import 'package:get/get.dart';

class PlagiarismCheckerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlagiarismCheckerController());
  }
}
