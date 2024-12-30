import '../controller/cancel_booking_payment_controller.dart';
import 'package:get/get.dart';

class CancelBookingPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CancelBookingPaymentController());
  }
}
