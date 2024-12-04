import 'package:hairwig_app/core/app_export.dart';
import 'package:hairwig_app/presentation/payment_screen/models/payment_model.dart';



/// A controller class for the PaymentScreen.
///
/// This class manages the state of the PaymentScreen, including the
/// current paymentModelObj
class PaymentController extends GetxController {
  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

  Rx<bool> flatRate = false.obs;

  Rx<bool> freevalue = false.obs;

  Rx<bool> localPickup = false.obs;

int currentPaymentId = 1;
  void setCurrentPayment(int? id) {
    currentPaymentId = id!;
    update();
  }
}
