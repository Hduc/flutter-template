import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/spedning_screen/models/spedning_model.dart';/// A controller class for the SpedningScreen.
///
/// This class manages the state of the SpedningScreen, including the
/// current spedningModelObj
class SpedningController extends GetxController {Rx<SpedningModel> spedningModelObj = SpedningModel().obs;

 }
