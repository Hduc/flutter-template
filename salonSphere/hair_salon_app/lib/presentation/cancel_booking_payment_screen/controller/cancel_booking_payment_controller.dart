import 'package:hair_salon_app/core/app_export.dart';

import '../../payment_methods_screen/models/payment_methods_model.dart';

class CancelBookingPaymentController extends GetxController {
  RxList<PaymentMethodsModel> paymentMethodsModelObj = [
    PaymentMethodsModel(
        ImageConstant.imgSearchIndigoA700, "••••  ••••  ••••  7547"),
    PaymentMethodsModel(ImageConstant.imgIcpaypal, "Paypal"),
    PaymentMethodsModel(ImageConstant.imgGoogle, "Google Pay"),
    PaymentMethodsModel(ImageConstant.imgFire, "Apple Pay"),
  ].obs;

  RxInt selectedIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
