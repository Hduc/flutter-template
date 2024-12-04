import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/payment_success_dialog/models/payment_success_model.dart';

class PaymentSuccessController extends GetxController {
  Rx<PaymentSuccessModel> paymentSuccessModelObj = PaymentSuccessModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
