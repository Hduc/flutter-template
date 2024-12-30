import '../controller/cancel_booking_controller.dart';
import 'package:get/get.dart';

class CancelBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CancelBookingController());
  }
}
