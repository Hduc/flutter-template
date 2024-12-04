import 'package:hair_salon_app/core/app_export.dart';import 'package:hair_salon_app/presentation/book_appoiment_screen/models/book_appoiment_model.dart';class BookAppoimentController extends GetxController {Rx<BookAppoimentModel> bookAppoimentModelObj = BookAppoimentModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
