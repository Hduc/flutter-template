import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/register_company_name_screen/models/register_company_name_model.dart';

class RegisterCompanyNameController extends GetxController {
  Rx<RegisterCompanyNameModel> registerCompanyNameModelObj =
      RegisterCompanyNameModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
