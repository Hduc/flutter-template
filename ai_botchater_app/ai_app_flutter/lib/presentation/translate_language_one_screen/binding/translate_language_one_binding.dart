import '../controller/translate_language_one_controller.dart';
import 'package:get/get.dart';

class TranslateLanguageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TranslateLanguageOneController());
  }
}
