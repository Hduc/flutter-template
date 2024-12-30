import 'package:carwash_app/core/app_export.dart';import 'package:carwash_app/presentation/booking_details_screen/models/booking_details_model.dart';class BookingDetailsController extends GetxController {Rx<BookingDetailsModel> bookingDetailsModelObj = BookingDetailsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
