import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/payment_one_screen/models/payment_one_model.dart';

class PaymentOneController extends GetxController {
  // Rx<PaymentOneModel> paymentOneModelObj = PaymentOneModel().obs;
  RxList<PaymentOneModel> paymentMethodsModelObj = [
    PaymentOneModel(ImageConstant.imgIcpaypal, "Paypal"),
    PaymentOneModel(
        ImageConstant.imgSearchIndigoA700, "••••  ••••  ••••  7547"),
    PaymentOneModel(ImageConstant.imgFire, "Apple Pay"),
    PaymentOneModel(ImageConstant.imgGoogle, "Google Pay"),
  ].obs;

  RxInt selectedIndex = 3.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
