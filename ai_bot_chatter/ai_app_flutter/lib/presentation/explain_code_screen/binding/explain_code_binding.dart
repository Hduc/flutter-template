import '../controller/explain_code_controller.dart';
import 'package:get/get.dart';

class ExplainCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExplainCodeController());
  }
}
