import 'package:carwash_app/core/app_export.dart';import 'package:carwash_app/presentation/service_book_dialog/models/service_book_model.dart';class ServiceBookController extends GetxController {Rx<ServiceBookModel> serviceBookModelObj = ServiceBookModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
