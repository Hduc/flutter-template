import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/my_booking_upcoming_page/models/my_booking_upcoming_model.dart';

class MyBookingUpcomingController extends GetxController {
  MyBookingUpcomingController(this.myBookingUpcomingModelObj);

  Rx<MyBookingUpcomingModel> myBookingUpcomingModelObj;

  RxList<String> list =
      [ImageConstant.imgRectangle64, ImageConstant.imgRectangle64156x380].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
