import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/payment_method_screen/models/payment_method_model.dart';

class PaymentMethodController extends GetxController {
  Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;
  bool navOfProfileScreen = false;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setNavigationOfProfileScreen(bool val) {
    navOfProfileScreen = val;
    update();
  }
}
