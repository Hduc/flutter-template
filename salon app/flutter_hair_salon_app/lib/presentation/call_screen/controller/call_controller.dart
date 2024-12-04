import 'package:hair_salon_app/core/app_export.dart';import 'package:hair_salon_app/presentation/call_screen/models/call_model.dart';class CallController extends GetxController {Rx<CallModel> callModelObj = CallModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
