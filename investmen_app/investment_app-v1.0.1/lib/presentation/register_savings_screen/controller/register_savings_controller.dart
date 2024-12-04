import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/register_savings_screen/models/register_savings_model.dart';class RegisterSavingsController extends GetxController {Rx<RegisterSavingsModel> registerSavingsModelObj = RegisterSavingsModel().obs;

RxString radioGroup = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
