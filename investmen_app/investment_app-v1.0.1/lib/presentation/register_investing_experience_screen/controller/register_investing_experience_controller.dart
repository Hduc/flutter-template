import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/register_investing_experience_screen/models/register_investing_experience_model.dart';class RegisterInvestingExperienceController extends GetxController {Rx<RegisterInvestingExperienceModel> registerInvestingExperienceModelObj = RegisterInvestingExperienceModel().obs;

RxString radioGroup = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
