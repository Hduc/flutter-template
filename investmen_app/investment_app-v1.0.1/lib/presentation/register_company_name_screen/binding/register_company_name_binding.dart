import '../controller/register_company_name_controller.dart';
import 'package:get/get.dart';

class RegisterCompanyNameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterCompanyNameController());
  }
}
