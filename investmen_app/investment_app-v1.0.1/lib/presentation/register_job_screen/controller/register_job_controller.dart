import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/register_job_screen/models/register_job_model.dart';class RegisterJobController extends GetxController {Rx<RegisterJobModel> registerJobModelObj = RegisterJobModel().obs;

RxString radioGroup = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
